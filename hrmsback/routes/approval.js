const router = require("express").Router();
const Approval = require("../models/Approval");
const Leave = require("../models/Leave");
const auth = require("../middleware/auth");

router.post("/approve", auth, async (req, res) => {
  const approval = await Approval.findById(req.body.approvalId);
  approval.status = "APPROVED";
  await approval.save();

  if (approval.requestType === "LEAVE") {
    await Leave.findByIdAndUpdate(
      approval.requestId,
      { status: "APPROVED" }
    );
  }

  res.send("Approved");
});

module.exports = router;

