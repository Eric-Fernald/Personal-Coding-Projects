const mongoose = require('mongoose');

// Kit schema
const kitSchema = new mongoose.Schema({
    kit_SKU: {
        type: String,
        required: true,
        unique: true, // Prevents duplicate SKUs.
        trim: true,
        uppercase: true, // Standardize SKUs by storing them in uppercase.
    },
    // Kit status
    kit_status: {
        type: String,
        enum: ['processing', 'shipped', 'in transit', 'delivered', 'backordered', 'returned'],
        default: 'processing', // Kits typically start in the processing stage.
        lowercase: true, 
    },
    // Customer name
    kit_customer: {
        type: String,
        required: true,
        trim: true,
        maxlength: 100 // Maximum length for a customer name.
    },
    
    customerId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Customer',
        default: null
    },
    //  Check what items are in the kit
    items: [{
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Item',
        validate: {
          validator: async function(value) {
            // Check that each item in the array exists
            if (!Array.isArray(value)) return false;
            if (value.length === 0) return true; // An empty array is valid
            try {
              const items = await mongoose.model('Item').find({ _id: { $in: value } });
              return items.length === value.length;
            } catch (err) {
              return false;
            }
          },
          message: "One or more of the items in the kit do not exist."
        }
    }],
    createdAt: {
        type: Date,
        default: Date.now //Automatically track creation date
    }
});

const Kit = mongoose.model('Kit', kitSchema);

// Export the module
module.exports = Kit;