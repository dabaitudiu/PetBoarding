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

var search_title = "Appointment successfully made.";

function makeid(length) {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  
    for (var i = 0; i < length; i++)
      text += possible.charAt(Math.floor(Math.random() * possible.length));
  
    return text;
  }

router.get('/', function(req, res, next) {
    res.render('app_success');
});

router.post('/', function(req, res, next) {
    // Retrieve Information
      var appointment_id = makeid(10);
      var owner_id = req.body.owner_id;
      var customer_id = req.body.customer_id;
      var date = req.body.date;
      var time = req.body.time;
      var status = 'booked';

      var sql_query = "insert into appointments values";

      var insert_query = sql_query + "('" + appointment_id + "','" + owner_id + "','" + customer_id + "','" + date + "','" + time + "','" + status + "')";
  
      pool.query(insert_query, (err, data) => {
            res.render('app_success');
      });
  
  });

module.exports = router;
