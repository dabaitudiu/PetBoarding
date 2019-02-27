# FindPetCaring

### Table:Pet
```SQL
CREATE TABLE pet(
   pname   VARCHAR(5) NOT NULL 
  ,pid     VARCHAR(8) NOT NULL PRIMARY KEY
  ,pmaster VARCHAR(8) NOT NULL
  ,pclass  VARCHAR(6) NOT NULL
  ,pold    INTEGER  NOT NULL
  ,pgender VARCHAR(9) NOT NULL
  ,purl    VARCHAR(23) 
);
```

