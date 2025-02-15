const mongoose = require('mongoose');

const itemSchema = new mongoose.Schema({
    item_SKU: { type: String, required: true, unique: true },
    item_name: { type: String, required: true },
    item_status: { type: String, enum: ['New', 'Good', 'Used', 'Defective'], default: 'New' },
    item_location: { type: String },
    customerId: { type: mongoose.Schema.Types.ObjectId, ref: 'Customer' },
    kitId: { type: mongoose.Schema.Types.ObjectId, ref: 'Kit' },
    order_status: {type: String}
});

module.exports = mongoose.model('Item', itemSchema);