import express from 'express';

const router = express.Router();

const getHome = (req, res) => {
  res.send('Welcome to user portal');
};

router.get('', getHome);

export default router;
