const mongoose = require('mongoose');

const itemSchema = new mongoose.Schema({
    item_SKU: {
        type: String,
        required: [true, "Item must have a SKU."],
        unique: [true, "This SKU already exists. Please choose another."], // Remove duplicates
    },

    item_name: {
        type: String,
        required: true,
        maxlength: 200, // Reasonable length limit
    },

    item_status: {
        type: String,
        enum: ['New', 'Good', 'Used', 'Defective'],  // Only allow these specific values
        default: 'New',
    },

    item_location: {
        type: String,
        default: 'Unknown',
    },
    // If this item belongs to a particular customer we'll link it to their record
    customerId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Customer',  // Connect item to Customer
        default: null,
    },

    kitId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Kit', // Connect item to Kit
        default: null,
    },
     // Order status consisting of 1 of 4 values Pending, Processing, Shipped, Delivered, or Cancelled
    order_status: {
        type: String,
        enum: ['pending', 'processing', 'shipped', 'delivered', 'cancelled'],
        default: 'pending',
    },
});

const Item = mongoose.model('Item', itemSchema);

// Export the module
module.exports = Item;