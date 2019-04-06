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

var search_title = "宠物托管搜索1";

router.get('/', function(req, res, next) {
    res.render('search', { title: search_title, data:[] ,link:"http://www.google.com"});
});


/* SQL Query */
// var sql_query_pets = "select species, count(*)from pet_infos_1000 group by species";
// var sql_query_dog = "SELECT * FROM pet_infos_1000 where species='dog' ";

// var myresult = pool.query(sql_query_pets, (err, result) => {
//     if (err) {
//       return console.error('Error executing query', err.stack);
//     }
//     return result.rows; // brianc
//   });

// console.log("Hi, look at this " + myresult);

// var sql_query = "SELECT distinct * from pet_infos_1000";

router.post('/', function(req, res, next) {
	// Retrieve Information
    var years = req.body.years;
    var species = req.body.species;
    var house = req.body.house;

    console.log(years + " " + species + " " + house);
	
	// Construct Specific SQL Query
    var sql_query = "SELECT * from pet_infos_1000 WHERE species='"+species+"'" + "and years='"+years+"'" + "and house_type='"+house+"'";

    pool.query(sql_query, (err, data) => {
		res.render('search', { title: search_title, data: data.rows, moment: moment, link:"http://www.google.com"});
    });
    
});

module.exports = router;
