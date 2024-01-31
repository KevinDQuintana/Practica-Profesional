import express from 'express';
import applicants from './src/routes/applicants.js';
import professions from './src/routes/professions.js';
import imageSend from './src/routes/imageSend.js';

const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => res.send('Hello World!!!'));

app.use('/applicants', applicants);
app.use('/professions', professions);
app.use('/image', imageSend);

app.listen(port, () => {
	console.log(`server started on http://localhost:${port}/`);
});
