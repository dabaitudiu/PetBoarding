var express = require('express');
var router = express.Router();
var moment = require('moment');

var http = require('http');
var url = require("url");
var querystring = require("querystring");

const { Pool } = require('pg')
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: 'lyp82nLF',
  port: 5432,
})

var search_title = "Inquiry Page";

router.get('/', function(req, res, next) {
    res.render('inquiry',{data:[]});
});

router.post('/', function(req, res, next) {
    // Retrieve Information
    var appointment_id = req.body.appointment_id;
    var owner_id = req.body.owner_id;
    var customer_id = req.body.customer_id;
    var sql_query;

    if (typeof appointment_id != 'undefined') {
        sql_query = "select * from appointments where appointment_id='" + appointment_id + "'";
    } else if (typeof customer_id != 'undefined') {
        sql_query = "select * from appointments where customer_id='" + customer_id + "'";
    } else {
        sql_query = "select * form appointments where owner_id='" + owner_id + "'";
    }

    console.log("SQL INQUIRY:" + sql_query);

    pool.query(sql_query, (err, data) => {
        console.log(JSON.stringify(data));
        res.render('inquiry',{data:data.rows});
    });
  
  });

module.exports = router;
