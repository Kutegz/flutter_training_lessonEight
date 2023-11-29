import express from 'express';
import homeApis from './app/home/apis/homeApis.js';
import userApis from './app/users/apis/userApis.js';

const app = express();

app.use(express.json());

app.use('/', homeApis);
app.use('/users', userApis);

app.listen(4000, () => {
  console.log('Server on:  http://localhost:4000/');
});
