const mongoose = require('mongoose');

const messageSchema = new mongoose.Schema(
  {
    text: {
      type: String,
      required: true,
    },
  },
);
 
exports.Message = mongoose.model('Message', messageSchema);