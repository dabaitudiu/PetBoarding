var express = require('express');
var router = express.Router();
var moment = require('moment');


const { Pool } = require('pg')
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: 'lyp82nLF',
  port: 5432,
})

function makeid(length) {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  
    for (var i = 0; i < length; i++)
      text += possible.charAt(Math.floor(Math.random() * possible.length));
  
    return text;
  }

router.get('/', function(req, res, next) {
    var sql_query = "select * from service"
    pool.query(sql_query, (err, data) => {
        res.render('service', {data:data.rows,moment:moment});
    });
});

router.post('/', function(req, res, next) {
  // Retrieve Information

    var option = req.body.action_name;
    var service_id = req.body.service_id;
    var owner_id = req.body.owner_id;
    var owner_password = req.body.owner_password;
    var price = req.body.price;
    var date_start = req.body.date_start;
    var date_end = req.body.date_end;
    var pet_type = req.body.pet_type;
    var house_type = req.body.house_type;
    var years = req.body.years;

    var new_service_id = makeid(10);

    // console.log("The option is " + option);

    if (option === 'delete') {
        console.log("The operation is delete. ")
        var delete_query = "delete from owner_service where service_id='"+service_id+"';"; 
        delete_query += "delete from service where service_id='"+service_id+"'";
        console.log("Delete query is " + delete_query);
        pool.query(delete_query, (err, data) => {
            if (err) {
              return res.render('modifystatus', {error:err.message});
            }
            res.render('modifystatus',{operation: "DELETE OPERATION SUCCEED."});
        });
    } else if (option === 'add') {
        console.log("The operation is add. ")
        var insert_query = "insert into service values";
        insert_query += "('" + new_service_id + "','" + price + "','" + date_start + "','" + date_end + "','" + pet_type + "','" + house_type + "','" + years + "');";
        insert_query += "insert into owner_service values";
        insert_query += "('" + new_service_id + "','" + owner_id  + "')";
        console.log("Insert query is " + insert_query);
        pool.query(insert_query, (err, data) => {
            if (err) {
              return res.render('modifystatus', {error:err.message});
            }
                res.render('modifystatus',{operation:"ADD OPERATION SUCCEED."});
          });
    } else {
        console.log("The operation is update. ")
        var update_query = "update service set ";
        update_query += "price='"+ price + "', date_start='" + date_start + "', date_end='" + date_end + "', pet_type='" + pet_type + "', house_type='" + house_type + "', years='" + years + "'";
        update_query += " where service_id='"+service_id+"'";
        console.log("Update query is " + update_query);
        pool.query(update_query, (err, data) => {
            if (err) {
              return res.render('modifystatus', {error:err.message});
            }
                res.render('modifystatus',{operation:"UPDATE OPERATION SUCCEED."});
        });
    }
});

module.exports = router;