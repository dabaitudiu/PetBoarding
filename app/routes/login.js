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


router.post('/', function(req, res, next) {
  // Retrieve Information
    var email = req.body.email;
    var password = req.body.password;

    // var sql_query = "select * from customer_info where customer_name='"+species+"' and password='"+password;
    
    // console.log(insert_query);

    // pool.query(insert_query, (err, data) => {
		//   res.render('signup_success', {name:name});
    // });

    var db_pwd = 0;
    db_pwd = pool.query("select * from customer_info where customer_name='libai'", (err, result) => {
      if (err) {
        return console.error('Error executing query', err.stack)
      }
      console.log("hey " + result.rows[0].customer_password);

      ss = result.rows[0].customer_password;
      // return result.rows[0].customer_password;
      console.log(JSON.stringify(result.rows[0].customer_password));
      return JSON.stringify(result);
    });

    if (password === db_pwd) {
      console.log("password matched.");
    } else {
      console.log("Wrong password or email.");
      console.log("input password: " + password);
      console.log("db password: " + db_pwd);
    }


});

// function LogSmsToDb(messageToLog) {
//   var text = "select * from customer_info where customer_name='libai'"
//   var datenow = new Date();
//   return new Promise(function (resolve, reject){
//       pool.query(text, (err, res) => {
//           if (err) {
//               console.log('Error retrieving data from db: ' + err);
//               reject(0)
//               //return 0;
//           }
//           else{
//               resolve(res.rows[0].customer_password);
//           }
//       })
//   })
// };

// router.post('/', function (req, res) {
//   let sms = req.body;
//   var pwd;
  
//    LogSmsToDb(sms).then((smsId)=>{
//       pwd = smsId//Value here is defined as u expect.
//    }); 

//    console.log(pwd);
//   })

module.exports = router;