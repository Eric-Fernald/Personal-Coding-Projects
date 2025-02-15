const mongoose = require('mongoose');

const kitSchema = new mongoose.Schema({
    kit_SKU: { type: String, required: true, unique: true },
    kit_status: { type: String, enum: ['Processing', 'Shipped', 'In Transit', 'Delivered'], default: 'Processing' },
    kit_customer: { type: String, required: true },
    customerId: { type: mongoose.Schema.Types.ObjectId, ref: 'Customer' },
    items: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Item' }]
});

module.exports = mongoose.model('Kit', kitSchema);