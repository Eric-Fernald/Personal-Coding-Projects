const mongoose = require('mongoose');

const customerSchema = new mongoose.Schema({
    name: { type: String, required: true, unique: true }, // Customer's name (e.g., "Customer XYZ")
});

module.exports = mongoose.model('Customer', customerSchema);