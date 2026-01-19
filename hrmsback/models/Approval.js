const mongoose = require("mongoose");

const ApprovalSchema = new mongoose.Schema({
  requestType: String, // LEAVE, SWIPE
  requestId: mongoose.Schema.Types.ObjectId,

  level1: mongoose.Schema.Types.ObjectId,
  level2: mongoose.Schema.Types.ObjectId,

  status: { type: String, default: "PENDING" }
});

module.exports = mongoose.model("Approval", ApprovalSchema);
