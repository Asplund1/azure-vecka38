import express from "express";
const app = express();

const port = process.env.WEBSITES_PORT || process.env.PORT || 8080;

app.get("/", (req, res) => {
  res.send("Hello from Docker image pushed to ACR!");
});

app.listen(port, () => {
  console.log(`Server listening on ${port}`);
});
 
// test för uppgift 2