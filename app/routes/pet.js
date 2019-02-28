var express = require('express');
var router = express.Router();

const { Pool } = require('pg')
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: 'lyp82nLF',
  port: 5432,
})

router.get('/', function(req, res, next) {
  res.render('pet', { title: 'Pet Keeper Search Engine' });
});


// POST
router.post('/', function(req, res, next) {
	// Retrieve Information
    var gender  = req.body.sex;
    console.log("!!!!!!!!!gender is " + gender);
	
	// Construct Specific SQL Query
    var sql_query = "SELECT * from pet_infos_50_mix WHERE gender='"+gender+"'";
    
    pool.query(sql_query, (err, data) => {
		res.render('pet_database', { title: 'Database Connect', data: data.rows });
	});
});

module.exports = router;
