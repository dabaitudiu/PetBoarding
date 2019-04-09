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
    res.render('search', { title: search_title, data:["RESERVED"], customer_name:customer_name, customer_id:customer_id});
});

router.post('/', function(req, res, next) {
	// Retrieve Information
    var years = req.body.years;
    var species = req.body.species;
    var house = req.body.house;
    var customer_id = req.body.customer_id;
    var start_date = req.body.start_date;
    var end_date = req.body.end_date;
    var price_min = req.body.price_min;
    var price_max = req.body.price_max;

    var constraints = [species,years,house,start_date,end_date,price_min,price_max]

    console.log("customer id is " + customer_id);
    
    var hasInput = 1;

    // Construct Specific SQL Query
    var sql_query = "select * from service natural join owner_service natural join owner_info";
    if (species != '') {
        sql_query += " WHERE pet_type='"+species+"'";
        console.log("species is not null! It's " + species);
    }
    if (years != '') {
        sql_query += "and years='"+years+"'";
        console.log("years is not null! It's " + years);
    }
    if (house != '') {
        sql_query += "and house_type='"+house+"'";
    }
    if (start_date != '') {
        sql_query += "and date_start <'"+start_date+"'";
    }
    if (end_date != '') {
        sql_query += "and date_end >'"+end_date+"'";
    }
    if (price_min != '') {
        sql_query += "and price >='"+price_min+"'";
    }
    if (price_max != '') {
        sql_query += "and price <='"+price_max+"'";
    }


    if (sql_query === "select * from service natural join owner_service natural join owner_info") {
        console.log("OMG sql_query is EMPTY!!");
        sql_query = "select * from service natural join owner_service natural join owner_info limit 20";
        hasInput = 0;
    } else {
        console.log("sql_query is " + sql_query);
    }

    console.log(sql_query);

    pool.query(sql_query, (err, data) => {
		res.render('search', { title: search_title, data: data.rows, moment: moment,hasInput:hasInput,constraints:constraints});
    });
    
});

module.exports = router;
