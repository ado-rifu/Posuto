const express = require('express');
const router = express.Router();
const { Users } = require('../models');
const bcrypt = require('bcrypt');

router.post('/', async (req, res) => {
	const { username, password } = req.body;
	bcrypt.hash(password, 10).then((hash) => {
		Users.create({
			username: username,
			password: hash,
		});

		res.json('SUCCESS');
	});
});

router.post('/login', async (req, res) => {
	const { username, password } = req.body;
	const user = await Users.findOne({ where: { username: username } });

	if (user) {
		bcrypt.compare(password, user.password).then((match) => {
			if (!match) {
				res.json({ error: 'Invalid username and password.' });
			} else {
				res.json('LOGIN SUCCESS');
			}
		});
	} else {
		res.json({ error: "User doesn't exist." });
	}

	/* if (!user) res.json({ error: "User doesn't exist." });

	bcrypt.compare(password, user.password).then((match) => {
		if (!match) res.json({ error: 'Invalid username and password.' });

		res.json('LOGIN SUCCESS');
	}); */
});

module.exports = router;
