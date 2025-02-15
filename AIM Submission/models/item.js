const mongoose = require('mongoose');

const itemSchema = new mongoose.Schema({
    item_SKU: { type: String, required: true, unique: true }, // Unique Stock Keeping Unit
    item_name: { type: String, required: true },        // Descriptive name of the item (e.g., "Camera_01")
    item_status: { type: String, enum: ['New', 'Good', 'Used', 'Defective'], default: 'New' }, // Item condition
    item_location: { type: String },                   // Where the item is physically located (e.g., "USA")
    customerId: { type: mongoose.Schema.Types.ObjectId, ref: 'Customer' }, // Links to the Customer document
    kitId: { type: mongoose.Schema.Types.ObjectId, ref: 'Kit' },          // Links to the Kit document
    order_status: {type: String} //For tracking the item order status
});

module.exports = mongoose.model('Item', itemSchema);