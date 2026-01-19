const router = require("express").Router();
const Attendance = require("../models/Attendance");
const auth = require("../middleware/auth");

router.post("/punch-in", auth, async (req, res) => {
  const today = new Date().toISOString().split("T")[0];

  let attendance = await Attendance.findOne({
    userId: req.user.id,
    date: today
  });

  if (!attendance) {
    attendance = new Attendance({
      userId: req.user.id,
      date: today,
      punches: []
    });
  }

  attendance.punches.push({
    inTime: new Date(),
    location: req.body.location
  });

  await attendance.save();
  res.send("Punch In Successful");
});

router.post("/punch-out", auth, async (req, res) => {
  const today = new Date().toISOString().split("T")[0];
  const attendance = await Attendance.findOne({
    userId: req.user.id,
    date: today
  });

  const lastPunch = attendance.punches[attendance.punches.length - 1];
  lastPunch.outTime = new Date();

  const diff =
    (lastPunch.outTime - lastPunch.inTime) / 60000;
  attendance.totalMinutes += diff;

  await attendance.save();
  res.send("Punch Out Successful");
});

module.exports = router;
