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

/* SQL Query */
var sql_query = 'SELECT * FROM pet_infos_1000';

router.get('/', function(req, res, next) {
	pool.query(sql_query, (err, data) => {
		res.render('pet_database', { title: 'Available House Owners Requirements', data: data.rows });
	});
});

module.exports = router;
