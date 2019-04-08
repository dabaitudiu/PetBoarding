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
var owner_name=''

router.get('/', function(req, res, next) {
    var d = url.parse(req.url,true).query.name;
    var sql_query = "SELECT * from owner_personal_info where owner_name='"+d+"'";
    // var sql_query = "SELECT distinct * from pet_infos_1000";
    pool.query(sql_query, (err, data) => {
		res.render('owner_info', { title: search_title, data: data.rows, moment:moment });
    });
});


module.exports = router;
