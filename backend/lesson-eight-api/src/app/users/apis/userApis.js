import express from 'express';
import { users } from '../data/users.js';

const router = express.Router();

router.get('', (req, res) => {
  res.json(users);
});

router.get('/:id', (req, res) => {
  const id = req.params.id;
  res.json(users.find((user) => user.id === id));
});

export default router;
