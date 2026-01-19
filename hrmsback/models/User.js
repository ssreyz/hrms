const mongoose = require("mongoose");

const UserSchema = new mongoose.Schema({
  name: String,
  email: String,
  password: String,
  role: {
    type: String,
    enum: ["EMPLOYEE", "MANAGER", "HR", "ADMIN", "SUPER_ADMIN"]
  },
  clientId: String,
  shiftStart: String,
  shiftEnd: String
});

module.exports = mongoose.model("User", UserSchema);
