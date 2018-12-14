var express = require('express'),
app = express(),
http = require('http').Server(app),
axios = require('axios'),
io = require('socket.io').listen(http);
app.get('/', function (req, res) {
  res.sendFile(__dirname + '/index.html');
});

http.listen(80, function () {
  console.log('listening on *:80');
});



io.on('connection', function (socket) {
  socket.emit('connect', function () {

  });

  socket.on('chat_welcome', function (msg) {
    io.emit('bot_uttered', {
        text: 'Velkommen'
    });
  });


  socket.on('user_uttered', function (msg) {
    console.log('user says');
    axios.get('http://localhost:5005/conversations/bizmiq/respond?q=' + msg.message, {
      
    })
    .then(function (response) {
      io.emit('bot_uttered', {
        text: response.data[0].text,
      });
      console.log(response.data[0].text);
    })
    .catch(function (error) {
      console.log(error);
    });
  });

  socket.on('session_request', function (msg) {
    io.emit('session_confirm', '2');
  });

  socket.emit('disconnect', function () {
    console.log('5 ...');
  });

  
});
