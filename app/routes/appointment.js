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

var search_title = "预约分页";

router.get('/', function(req, res, next) {
  var owner_id = url.parse(req.url,true).query.owner_id;
  var owner_name = url.parse(req.url,true).query.owner_name;

  // var owner_id = req.body.owner_id;
  var sql_query = "select * from owner_personal_info";

  pool.query(sql_query, (err, data) => {
    // console.log("result = " + JSON.stringify(data));
		  res.render('appointment', { title: search_title, owner_id: owner_id,owner_name:owner_name});
    });
});

module.exports = router;
