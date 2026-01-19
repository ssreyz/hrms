const mongoose = require("mongoose");

const LeaveSchema = new mongoose.Schema({
  userId: mongoose.Schema.Types.ObjectId,
  fromDate: String,
  toDate: String,
  reason: String,
  status: { type: String, default: "PENDING" }
});

module.exports = mongoose.model("Leave", LeaveSchema);
