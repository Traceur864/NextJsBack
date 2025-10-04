const express = require("express");
const router = express.Router();
const { login, register, update } = require("../controllers/auth.controller");

router.post("/login", login);
router.post("/register", register);
router.put("/update", update);

module.exports = router;
