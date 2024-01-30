import express from 'express';
import applicants from './src/routes/applicants.js';
import professions from './src/routes/professions.js';

const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => res.send('Hello World!!!'));

app.use('/applicants', applicants);
app.use('/professions', professions);

app.listen(port, () => {
	console.log(`server started on http://localhost:${port}/`);
});
