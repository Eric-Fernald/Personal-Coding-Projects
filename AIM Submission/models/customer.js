const mongoose = require('mongoose');

const customerSchema = new mongoose.Schema({
    // Add customer name and have each one be unique
    name: {
        type: String,
        required: true,
        unique: true,
        trim: true, // Trim any whitespace
        maxlength: 100, // Set maximum length to prevent unreasonably long names
    },
    // Add email address
    email: {
        type: String,
        required: true,
        unique: true,
        lowercase: true, // Store email addresses in lowercase for consistency
        validate: {
            validator: function(v) {
                return /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(v); // Email validation regex
            },
            message: "Please enter a valid email address."
        }
    },
    // Add phone number
    phone: {
        type: String,
        required: true,
        validate: {
            validator: function(v) {
                return /^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$/.test(v); //Phone number validation regex
            },
            message: "Please enter a valid phone number."
        }
    },
});

const Customer = mongoose.model('Customer', customerSchema);

// Export module
module.exports = Customer;