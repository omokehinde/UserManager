var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost:27017/usermanager', { useMongoClient: true });

// process.env.DB_URL