const mongoose = require('mongoose');

exports.connectDb = () => {
    // mongodb://[username:password@]host1[:port1][,...hostN[:portN]][/[defaultauthdb][?options]]
    const {
        MONGODB_USERNAME,
        MONGODB_PASSWORD,
        MONGODB_DATABASE,
        MONGODB_PORT_NUMBER,
    } = process.env;
    const database_url = `mongodb://${MONGODB_USERNAME}:${MONGODB_PASSWORD}@db:${MONGODB_PORT_NUMBER}/${MONGODB_DATABASE}`;
    return mongoose.connect(database_url);
};
 