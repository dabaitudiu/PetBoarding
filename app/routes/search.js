var express = require('express');
var router = express.Router();
var moment = require('moment');

var url = require("url");

const { Pool } = require('pg');
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: 'lyp82nLF',
  port: 5432,
})

var search_title = "Pet Search Engine";

var customer_id = "unknown";
var customer_name = "unknown";

router.get('/', function(req, res, next) {
    customer_id = url.parse(req.url,true).query.customer_id;
    customer_name = url.parse(req.url,true).query.customer_name;
    // console.log(JSON.stringify(query_set));
    res.render('search', { title: search_title, data:[], customer_name:customer_name, customer_id:customer_id});
});

router.post('/', function(req, res, next) {
	// Retrieve Information
    var years = req.body.years;
    var species = req.body.species;
    var house = req.body.house;
    var customer_id = req.body.customer_id;

    console.log("customer id is " + customer_id);
    
    var hasInput = 1;

    // Construct Specific SQL Query
    var sql_query = "SELECT * from owner_service natural join owner_personal_info";
    if (species != '') {
        sql_query += " WHERE species='"+species+"'";
        console.log("species is not null! It's " + species);
    }
    if (years != '') {
        sql_query += "and years='"+years+"'";
        console.log("years is not null! It's " + years)
    }
    if (house != '') {
        sql_query += "and house_type='"+house+"'"
        console.log("house is not null! It's " + house)
    }

    if (sql_query === "SELECT * from owner_service natural join owner_personal_info") {
        console.log("OMG sql_query is EMPTY!!");
        sql_query = "SELECT * from owner_service natural join owner_personal_info limit 20";
        hasInput = 0;
    } else {
        console.log("sql_query is " + sql_query);
    }

    console.log(sql_query);

    pool.query(sql_query, (err, data) => {
		res.render('search', { title: search_title, data: data.rows, moment: moment, link:"http://www.google.com",hasInput:hasInput});
    });
    
});

module.exports = router;
