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


router.get('/', function(req, res, next) {
    res.render('inquiry',{data:[]});
});

router.post('/', function(req, res, next) {
    // Retrieve Information
    var rating = req.body.rating;
    var appointment_id = req.body.appointment_id;

    var sql_query = "update appointments set status='finished' where appointment_id='"+appointment_id+"'";

    // console.log("SQL INQUIRY:" + sql_query);

    pool.query(sql_query, (err, data) => {
        res.render('update');
    });
  
  });

module.exports = router;
