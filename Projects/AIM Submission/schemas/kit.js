const mongoose = require('mongoose');
const customerSchema = require('./customer');
const itemSchema = require('./item');

const kitSchema = new mongoose.Schema({
    kit_SKU: {
        type: String,
        required: true,
    },
    kit_status: {
        type: String,
        enum: ['Processing', 'Shipped', 'In Transit', 'Delivered', 'Backordered', 'Returned'], //Only 6 different statuses
        default: 'Processing',
    },
    customer: {
        type: customerSchema,
        required: true,
        default: 'N/A'
    },
    items: [itemSchema],
    createdAt: {
        type: Date,
        default: Date.now
    }
});

const Kit = mongoose.model('Kit', kitSchema);

module.exports = Kit;