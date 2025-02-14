const mongoose = require('mongoose');

const itemSchema = new mongoose.Schema({
  sku: { type: String, required: true },
  item_status: { type: String, required: true }, // Ordered, Modified, Shipped
  customerId: { type: mongoose.Schema.Types.ObjectId, ref: 'Customer' },
  kitId: { type: mongoose.Schema.Types.ObjectId, ref: 'Kit' }
});

const Item = mongoose.model('Item', itemSchema);
module.exports = Item;