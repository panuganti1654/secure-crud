const mongoose = require("mongoose");

mongoose.connect("mongodb://securecrud-mongo:27017/securecrud", {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})
.then(() => console.log("Mongo Connected"))
.catch(err => console.log(err));

const express = require("express");
const app = express();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("Secure CRUD App Running");
});

const PORT = 5000;
app.listen(PORT, () => console.log(`Server running on ${PORT}`));