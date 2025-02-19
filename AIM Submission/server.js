const express = require('express');
const mongoose = require('mongoose');
const Kit = require('./models/kit');

const app = express();
const port = 3000;

mongoose.connect('mongodb://localhost:27017/inventory', {
  useNewUrlParser: true,
  useUnifiedTopology: true
});

app.use(express.json());

//GET APIs

//GET all inventory items (Kits)
app.get('/api/inventory', async (req, res) => {
    try {
        const kits = await Kit.find();
        res.json(kits);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//GET a specific kit by its ID
app.get('/api/kit/:id', async (req, res) => {
    try {
        const kit = await Kit.findById(req.params.id);
        if (!kit) return res.status(404).json({ message: 'Kit not found' });
        res.json(kit);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//GET kits associated with a customer
app.get('/api/kits/customer/:customerName', async (req, res) => {
    try {
        const kits = await Kit.find({ 'customer.name': req.params.customerName }); //Access embedded customer's name
        if (!kits || kits.length === 0) {
            return res.status(404).json({ message: 'No kits found for this customer' });
        }
        res.json(kits);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//POST APIs

//POST a new kit into inventory
app.post('/api/kit', async (req, res) => {
    try {
        const { kit_SKU, kit_status, customer, items } = req.body;

        const newKit = new Kit({
            kit_SKU,
            kit_status,
            customer,
            items
        });

        const savedKit = await newKit.save();
        res.status(201).json(savedKit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//POST a new item into a kit
app.post('/api/kits/:kitId/items', async (req, res) => {
    try {
        const { kitId } = req.params;
        const { item_SKU, item_name, item_status, item_location, order_status } = req.body;

        const kit = await Kit.findById(kitId);
        if (!kit) {
            return res.status(404).json({ message: 'Kit not found' });
        }

        //Create the new item object
        const newItem = {
            item_SKU,
            item_name,
            item_status,
            item_location,
            order_status
        };

        //Add the new item to the kit's items array
        kit.items.push(newItem);

        //Save the updated kit
        await kit.save();

        res.status(201).json(kit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH APIs

//PATCH the status of an item (within a Kit)
app.patch('/api/kits/:kitId/items/:itemIndex/status', async (req, res) => {
    try {
        const { kitId, itemIndex } = req.params;
        const { item_status } = req.body;

        const kit = await Kit.findById(kitId);
        if (!kit) {
            return res.status(404).json({ message: 'Kit not found' });
        }

        if (itemIndex < 0 || itemIndex >= kit.items.length) {
            return res.status(404).json({ message: 'Item index out of range' });
        }

        kit.items[itemIndex].item_status = item_status; //Directly update the embedded item
        await kit.save(); //Save the changes to the Kit document

        res.json(kit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the order status of an item (within a Kit)
app.patch('/api/kits/:kitId/items/:itemIndex/order-status', async (req, res) => {
    try {
        const { kitId, itemIndex } = req.params;
        const { order_status } = req.body;

        const kit = await Kit.findById(kitId);
        if (!kit) {
            return res.status(404).json({ message: 'Kit not found' });
        }

        if (itemIndex < 0 || itemIndex >= kit.items.length) {
            return res.status(404).json({ message: 'Item index out of range' });
        }

        kit.items[itemIndex].order_status = order_status;
        await kit.save();

        res.json(kit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the kit status
app.patch('/api/kits/:kitId/status', async (req, res) => {
    try {
        const { kitId } = req.params;
        const { kit_status } = req.body;

        const kit = await Kit.findByIdAndUpdate(kitId, { kit_status: kit_status }, { new: true });

        if (!kit) return res.status(404).json({ message: 'Kit not found' });

        res.json(kit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the kit SKU
app.patch('/api/kits/:kitId/sku', async (req, res) => {
    try {
        const { kitId } = req.params;
        const { kit_SKU } = req.body;

        const kit = await Kit.findByIdAndUpdate(kitId, { kit_SKU: kit_SKU }, { new: true });

        if (!kit) return res.status(404).json({ message: 'Kit not found' });

        res.json(kit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the kit customer
app.patch('/api/kits/:kitId/customer', async (req, res) => {
    try {
        const { kitId } = req.params;
        const { customer } = req.body;

        const kit = await Kit.findByIdAndUpdate(kitId, { customer: customer }, { new: true });

        if (!kit) return res.status(404).json({ message: 'Kit not found' });

        res.json(kit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

// DELETE APIs

//DELETE a specific kit by its ID
app.delete('/api/kit/:kitId', async (req, res) => {
    try {
        const { kitId } = req.params;

        const deletedKit = await Kit.findByIdAndDelete(kitId);

        if (!deletedKit) return res.status(404).json({ message: 'Kit not found' });

        res.status(200).json({ message: 'Kit deleted successfully', deletedKit });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//DELETE all kits with a specific SKU
app.delete('/api/kit/sku/:kitSku', async (req, res) => {
    try {
        const { kitSku } = req.params;

        const deletedKits = await Kit.deleteMany({ kit_SKU: kitSku.toUpperCase() });

        if (deletedKits.deletedCount === 0) {
            return res.status(404).json({ message: 'No kits found with that SKU' });
        }

        res.status(200).json({ message: `${deletedKits.deletedCount} kits deleted successfully` }); //Show the number of deleted kits
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});