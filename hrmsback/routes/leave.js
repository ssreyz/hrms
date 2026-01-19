const router = require("express").Router();
const Leave = require("../models/Leave");
const Approval = require("../models/Approval");
const auth = require("../middleware/auth");

router.post("/apply", auth, async (req, res) => {
  const leave = new Leave({
    userId: req.user.id,
    fromDate: req.body.from,
    toDate: req.body.to,
    reason: req.body.reason
  });

  await leave.save();

  const approval = new Approval({
    requestType: "LEAVE",
    requestId: leave._id,
    level1: req.body.managerId
  });

  await approval.save();
  res.send("Leave Applied & Sent for Approval");
});

module.exports = router;
