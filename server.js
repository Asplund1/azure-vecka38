const express = require('express');
const app = express();

const port = process.env.WEBSITES_PORT || process.env.PORT || 8080;
const databaseUrl = process.env.DATABASE_URL;



app.get('/health', (req, res) => res.json({ ok: true }));
app.listen(port, () => console.log(`Server listening on ${port}`));
