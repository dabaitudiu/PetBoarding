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



function makeid(length) {
  var text = "";
  var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  for (var i = 0; i < length; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));

  return text;
}

router.get('/', function(req, res, next) {
    res.render('signup', { title: 'User Sign up' });
});

router.post('/', function(req, res, next) {
  // Retrieve Information
    var customer_id = makeid(10);
    var name = req.body.name;
    var email = req.body.email;
    var phone = req.body.phone;
    var password = req.body.password;
    var sql_query = "INSERT INTO user_info VALUES";

    var insert_query = sql_query + "('" + customer_id + "','" + name + "','" + email + "','" + phone + "','" + password  + "');";
    insert_query += "INSERT INTO customer_info VALUES";
    insert_query += "('" + customer_id + "','" + '0' +"')";

    console.log(insert_query);

    pool.query(insert_query, (err, data) => {
      if (err) {
        return res.render('signup_success', {name:name, error:err.message});
      }
		  res.render('signup_success', {name:name});
    });
    
});

module.exports = router;