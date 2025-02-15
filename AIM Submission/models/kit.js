const mongoose = require('mongoose');

const kitSchema = new mongoose.Schema({
    kit_SKU: { type: String, required: true, unique: true }, // Unique identifier for the kit
    kit_status: { type: String, enum: ['Processing', 'Shipped', 'In Transit', 'Delivered'], default: 'Processing' }, // Kit's shipping status
    kit_customer: { type: String, required: true },
    customerId: { type: mongoose.Schema.Types.ObjectId, ref: 'Customer' }, // Links to the Customer document (who owns the kit)
    items: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Item' }] // Array of references to Item documents in the kit
});

module.exports = mongoose.model('Kit', kitSchema);