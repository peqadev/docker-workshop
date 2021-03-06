'use strict';
const express = require('express');
const connection = require('./connection');
const models = require('./models');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();

// Controllers
app.get('/', async (req, res) => {
    const message = models.Message({
        text: 'Mensaje de ejemplo',
    });
    await message.save();
    res.send('Agregado un nuevo mensaje');
});
app.get('/messages', async (req, res) => {
    const messages = await models.Message.find();
    res.json({ messages });
});

connection.connectDb().then(async () => {
    app.listen(PORT, () =>
        console.log(`Ejecutandose en el puerto: ${PORT}!`),
    );
});