const mongoose = require('mongoose');

const itemSchema = new mongoose.Schema({
    item_SKU: {
        type: String,
        required: true
    },
    item_name: {
        type: String,
        required: true,
        maxlength: 200, //Max length to keep names concise
    },
    item_status: {
        type: String,
        enum: ['New', 'Good', 'Used', 'Defective'], //Only 4 item statuses
        default: 'New',
    },
    item_location: {
        type: String,
        default: 'Unknown',
    },
});

module.exports = itemSchema;