CREATE OR REPLACE FUNCTION check_customer_id()
RETURNS TRIGGER AS
$$
DECLARE count NUMERIC;
BEGIN
    SELECT count(*) INTO count
    FROM customer_info
    WHERE NEW.customer_id = customer_info.customer_id;
    IF count <> 1 THEN
        RAISE exception 'You are not registered.';
        RETURN NULL;
    else
        RETURN NEW;
    END IF;
END
$$
LANGUAGE plpgsql;

CREATE TRIGGER check_customer_id
BEFORE INSERT OR UPDATE
ON customer_appointments
FOR EACH ROW
EXECUTE PROCEDURE check_customer_id();
--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION check_num_appt()
RETURNS TRIGGER AS
$$
DECLARE count NUMERIC;
BEGIN
	SELECT count(*) INTO count
	FROM owner_appointments 
	Where NEW.owner_id = owner_appointments.owner_id;
	IF count > 5 then
		raise exception 'The Service provider has reached maximum limit of services. ';
		RETURN NULL;
	else
		RETURN NEW;
	END IF;
END
$$
LANGUAGE plpgsql;

CREATE TRIGGER check_num_appt
BEFORE INSERT OR UPDATE
ON owner_appointments
FOR EACH ROW
EXECUTE PROCEDURE check_num_appt();

------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION not_owner()
RETURNS TRIGGER AS
$$
DECLARE count NUMERIC;
begin
	raise notice 'tirgger entered: not_owner!';
	with ownera as (select * from owner_info join user_info on owner_id=user_id)
	SELECT count(*) INTO count
	FROM ownera
	Where NEW.user_email = ownera.user_email;
	IF count > 0 then
		raise exception 'You cannot be both owner and customer.';
		RETURN NULL;
	else
		RETURN NEW;
	END IF;
END
$$
LANGUAGE plpgsql;

CREATE TRIGGER not_owner
BEFORE INSERT OR UPDATE
ON user_info
FOR EACH ROW
EXECUTE PROCEDURE not_owner();