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

// GET all inventory items
app.get('/api/inventory', async (req, res) => {
  try {
    const items = await Item.find();
    res.json(items);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// GET a specific item by its ID
app.get('/api/item/:id', async (req, res) => {
  try {
    const item = await Item.findById(req.params.id);
    if (!item) return res.status(404).json({ message: 'Item not found' });
    res.json(item);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// GET items by status (Ordered, Modified, Shipped, etc.)
app.get('/api/items/status/:item_status', async (req, res) => {
  try {
    const items = await Item.find({ item_status: req.params.item_status });
    res.json(items);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// GET items by SKU
app.get('/api/items/sku/:sku', async (req, res) => {
  try {
    const items = await Item.find({ sku: req.params.sku });
    res.json(items);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// GET items associated with a customer
app.get('/api/items/customer/:customerId', async (req, res) => {
  try {
    const items = await Item.find({ customerId: req.params.customerId });
    res.json(items);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

// GET kits associated with a customer
app.get('/api/kits/customer/:customerId', async (req, res) => {
  try {
    const kits = await Kit.find({ 'items.customerId': req.params.customerId })
                          .populate('items');
    res.json(kits);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});