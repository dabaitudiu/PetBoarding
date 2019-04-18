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
  res.render('login');
});

var sql_query = "select * from customer_info where customer_name='libai'";

router.post('/', function(req, res, next) {
  // Retrieve Information
    var email = req.body.email;
    var password = req.body.password;

    // var sql_query = "select * from customer_info where customer_email='"+email;
    var sql_query = "select * from customer_info natural join user_info where user_email='" + email + "'";

    pool.query(sql_query, (err, data) => {
		  res.render('post_login', {name:email, data:data.rows, password:password});
    });

});

module.exports = router;