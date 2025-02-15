const express = require('express');
const mongoose = require('mongoose');
const Item = require('./models/item');
const Customer = require('./models/customer');
const Kit = require('./models/kit');

const app = express();
const port = 3000;

mongoose.connect('mongodb://localhost:27017/inventory', {
  useNewUrlParser: true,
  useUnifiedTopology: true
});

app.use(express.json());

//GET all inventory items
app.get('/api/inventory', async (req, res) => {
    try {
        const items = await Item.find();
        res.json(items);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//GET a specific item by its ID
app.get('/api/item/:id', async (req, res) => {
    try {
        const item = await Item.findById(req.params.id);
        if (!item) return res.status(404).json({ message: 'Item not found' });
        res.json(item);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//GET items by status (Ordered, Modified, Shipped)
app.get('/api/items/status/:item_status', async (req, res) => {
    try {
        const items = await Item.find({ item_status: req.params.item_status });
        res.json(items);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//GET items by SKU
app.get('/api/items/sku/:sku', async (req, res) => {
    try {
        const items = await Item.find({ sku: req.params.sku });
        res.json(items);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//GET items associated with a customer
app.get('/api/items/customer/:customerId', async (req, res) => {
    try {
        const items = await Item.find({ customerId: req.params.customerId });
        res.json(items);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//GET kits associated with a customer
app.get('/api/kits/customer/:customerName', async (req, res) => {
    try {
        const customerKits = Kit.filter(k => k.kit_customer === req.params.customerName);
        if (!customerKits.length) return res.status(404).json({ message: 'No kits found for this customer' });
        res.json(customerKits);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//POST a new item into inventory
app.post('/api/item', async (req, res) => {
    try {
        const { sku, item_status, customerId, kitId } = req.body;

        const newItem = new Item({
        sku,
        item_status,
        customerId,
        kitId
        });

        const savedItem = await newItem.save();
        res.status(201).json(savedItem);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//POST a new kit into inventory
app.post('/api/kit', async (req, res) => {
    try {
        const { name, items } = req.body;

        const newKit = new Kit({
        name,
        items
        });

        const savedKit = await newKit.save();

        res.status(201).json(savedKit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH a customer of an item
app.patch('/api/items/:kitId/:itemSku/customer', async (req, res) => {
    try {
        const { kitId, itemSku } = req.params;
        const { newCustomer } = req.body;

        const kit = kit.find(k => k.kit_id === kitId);
        if (!kit) return res.status(404).json({ message: 'Kit not found' });

        const item = kit.items.find(i => i.item_SKU === itemSku);
        if (!item) return res.status(404).json({ message: 'Item not found' });

        item.item_customer = newCustomer;
        res.json(item);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the status of an item
app.patch('/api/items/:kitId/:itemSku/status', async (req, res) => {
    try {
        const { kitId, itemSku } = req.params;
        const { newStatus } = req.body;

        const kit = kit.find(k => k.kit_id === kitId);
        if (!kit) return res.status(404).json({ message: 'Kit not found' });

        const item = kit.items.find(i => i.item_SKU === itemSku);
        if (!item) return res.status(404).json({ message: 'Item not found' });

        item.item_status = newStatus;
        res.json(item);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the order status of an item
app.patch('/api/item/order-status/:itemId', async (req, res) => {
    try {
        const { itemId } = req.params;
        const { order_status } = req.body;

        const updatedItem = await Item.findByIdAndUpdate(
        itemId,
        { order_status },
        { new: true }
        );

        if (!updatedItem) return res.status(404).json({ message: 'Item not found' });

        res.status(200).json(updatedItem);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the kit status
app.patch('/api/kits/:kitId/status', async (req, res) => {
    try {
        const { kitId } = req.params;
        const { newStatus } = req.body;

        const kit = kit.find(k => k.kit_id === kitId);
        if (!kit) return res.status(404).json({ message: 'Kit not found' });

        kit.kit_status = newStatus;
        res.json(kit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the kit SKU
app.patch('/api/kits/:kitId/sku', async (req, res) => {
    try {
        const { kitId } = req.params;
        const { newSku } = req.body;

        const kit = kit.find(k => k.kit_id === kitId);
        if (!kit) return res.status(404).json({ message: 'Kit not found' });

        kit.kit_SKU = newSku;
        res.json(kit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//PATCH the customer associated with a kit
app.patch('/api/kit/customer/:kitId', async (req, res) => {
    try {
        const { kitId } = req.params;
        const { customerId } = req.body;

        const updatedKit = await Kit.findByIdAndUpdate(
        kitId,
        { customerId },
        { new: true }
        );

        if (!updatedKit) return res.status(404).json({ message: 'Kit not found' });

        res.status(200).json(updatedKit);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

//DELETE a specific item by its ID
app.delete('/api/item/:id', async (req, res) => {
    try {
        const { id } = req.params;

        const deletedItem = await Item.findByIdAndDelete(id);

        if (!deletedItem) return res.status(404).json({ message: 'Item not found' });

        res.status(200).json({ message: 'Item deleted successfully', deletedItem });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

//DELETE an item by its SKU
app.delete('/api/item/sku/:sku', async (req, res) => {
    try {
        const { sku } = req.params;

        const deletedItem = await Item.findOneAndDelete({ sku });

        if (!deletedItem) return res.status(404).json({ message: 'Item not found' });

        res.status(200).json({ message: 'Item deleted successfully', deletedItem });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

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

//DELETE a kit by its SKU
app.delete('/api/kit/sku/:kitSku', async (req, res) => {
    try {
        const { kitSku } = req.params;

        const deletedKit = await Kit.findOneAndDelete({ kit_SKU: kitSku });

        if (!deletedKit) return res.status(404).json({ message: 'Kit not found' });

        res.status(200).json({ message: 'Kit deleted successfully', deletedKit });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});