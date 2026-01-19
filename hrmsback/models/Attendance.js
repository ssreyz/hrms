const mongoose = require("mongoose");

const AttendanceSchema = new mongoose.Schema({
  userId: mongoose.Schema.Types.ObjectId,
  date: String,
  punches: [
    {
      inTime: Date,
      outTime: Date,
      location: String
    }
  ],
  totalHours: Number
});

module.exports = mongoose.model("Attendance", AttendanceSchema);
