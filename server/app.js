const express = require('express');

const applicants = require('./src/routes/applicants');
const professions = require('./src/routes/professions.js');
const imageSend = require('./src/routes/imageSend.js');

const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => res.send('Hello World!!!'));

app.use('/applicants', applicants);
app.use('/professions', professions);
app.use('/image', imageSend);

app.listen(port, () => {
	console.log(`server started on http://localhost:${port}/`);
});
