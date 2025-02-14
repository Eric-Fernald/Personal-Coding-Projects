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

// POST a new item into inventory
app.post('/api/item', async (req, res) => {
    try {
      const { sku, item_status, customerId, kitId } = req.body;
      
      // Create a new item
      const newItem = new Item({
        sku,
        item_status,
        customerId,
        kitId
      });
  
      // Save the new item to the database
      const savedItem = await newItem.save();
  
      // Respond with the saved item
      res.status(201).json(savedItem);
    } catch (err) {
      res.status(400).json({ message: err.message });
    }
});
  
// POST a new kit into inventory
app.post('/api/kit', async (req, res) => {
try {
    const { name, items } = req.body;

    // Create a new kit
    const newKit = new Kit({
    name,
    items
    });

    // Save the new kit to the database
    const savedKit = await newKit.save();

    // Respond with the saved kit
    res.status(201).json(savedKit);
} catch (err) {
    res.status(400).json({ message: err.message });
}
});

// PATCH /api/item/customer - Patch a customer of an item
app.patch('/items/:kitId/:itemSku/customer', async (req, res) => {
    const { kitId, itemSku } = req.params;
    const { newCustomer } = req.body;
    
    const kit = kits.find(k => k.kit_id === kitId);
    if (!kit) return res.status(404).send('Kit not found');
    
    const item = kit.items.find(i => i.item_SKU === itemSku);
    if (!item) return res.status(404).send('Item not found');
    
    item.item_customer = newCustomer;
    res.send(item);
});
  
// PATCH /api/item/status - Patch the status of an item
app.patch('/items/:kitId/:itemSku/status', async (req, res) => {
    const { kitId, itemSku } = req.params;
    const { newStatus } = req.body;
    
    const kit = kits.find(k => k.kit_id === kitId);
    if (!kit) return res.status(404).send('Kit not found');
    
    const item = kit.items.find(i => i.item_SKU === itemSku);
    if (!item) return res.status(404).send('Item not found');
    
    item.item_status = newStatus;
    res.send(item);
});
  
// PATCH /api/item/order-status - Patch the order status of an item
app.patch('/api/item/order-status/:itemId', async (req, res) => {
try {
    const { itemId } = req.params;
    const { order_status } = req.body;  // Assuming this is a custom field

    // Update the order status of the item
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
  
// PATCH /api/kit/status - Patch the kit status
app.patch('/kits/:kitId/status', async (req, res) => {
    const { kitId } = req.params;
    const { newStatus } = req.body;
    
    const kit = kits.find(k => k.kit_id === kitId);
    if (!kit) return res.status(404).send('Kit not found');
    
    kit.kit_status = newStatus;
    res.send(kit);
});
  
// PATCH /api/kit/sku - Patch the kit SKU
app.patch('/kits/:kitId/sku', async (req, res) => {
    const { kitId } = req.params;
    const { newSku } = req.body;
    
    const kit = kits.find(k => k.kit_id === kitId);
    if (!kit) return res.status(404).send('Kit not found');
    
    kit.kit_SKU = newSku;
    res.send(kit);
});
  
// PATCH /api/kit/customer - Patch the customer associated with a kit
app.patch('/api/kit/customer/:kitId', async (req, res) => {
try {
    const { kitId } = req.params;
    const { customerId } = req.body;

    // Update the kit's customerId
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

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});