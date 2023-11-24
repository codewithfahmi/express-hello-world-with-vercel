const express = require("express");
const app = express();

require("dotenv").config();

app.get("/", function (req, res) {
  res.json({ say: "Hello, World" });
});

app.listen(process.env.PORT, function () {
  console.log("listen on http://localhost:" + process.env.PORT);
});
