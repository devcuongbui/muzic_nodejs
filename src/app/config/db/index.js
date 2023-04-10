const mysql = require('mysql');

let isConnected = false;

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'user_music'
});

function connect() {
  if (!isConnected) {
    connection.connect((err) => {
      if (err) {
        console.log('Error connecting to MySQL database: ', err);
      } else {
        console.log('Connected to MySQL database!');
        isConnected = true;
      }
    });
  }
}

module.exports = { connect };
