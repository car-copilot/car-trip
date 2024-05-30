const Pool = require('pg').Pool
require('dotenv').config()

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_DATABASE,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});


const getTripsName = async () => {
    try {
        return await new Promise(function (resolve, reject) {
        pool.query("SELECT * FROM car, trip, owners WHERE trip.car_id = car.car_id AND trip.owner_id = owners.owner_id", (error, results) => {
            if (error) {
            reject(error);
            }
            if (results && results.rows) {
            resolve(results.rows);
            } else {
            reject(new Error("No results found"));
            }
        });
        });
    } catch (error_1) {
        console.error(error_1);
        throw new Error("Internal server error");
    }
};

module.exports = {
    getTripsName
};