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

var search_title = "appointment page";

router.get('/', function(req, res, next) {
  var owner_id = url.parse(req.url,true).query.owner_id;
  var sql_query = "select * from user_info where user_id='"+owner_id+"'";

  pool.query(sql_query, (err, data) => {
    if (typeof owner_id === 'undefined') {
      data = ['RESERVED'];
      return res.render('appointment', { title: search_title, data:data});
    }
      // console.log("Reached Here!")
		  res.render('appointment', { title: search_title, data:data.rows});
    });
});

module.exports = router;
