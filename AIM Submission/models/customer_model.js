const customerSchema = new mongoose.Schema({
    name: { type: String, required: true },
    email: { type: String, required: true }
  });
  
const Customer = mongoose.model('Customer', customerSchema);