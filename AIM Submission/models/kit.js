const mongoose = require('mongoose');

const kitSchema = new mongoose.Schema({
    name: { type: String, required: true },
    items: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Item' }]
  });
  
const Kit = mongoose.model('Kit', kitSchema);
module.exports = Kit;