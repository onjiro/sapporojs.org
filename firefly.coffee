exports.listen = (args...) ->
    io = require("socket.io").listen(args...)

    io.sockets.on 'connection', (socket) ->
        socket.broadcast.emit 'entry cursor'
            id: socket.id

        socket.emit 'info'
            message: "create new connection"

        socket.on 'mouse position', (data) ->
            console.log data
            socket.broadcast.emit 'move cursor'
                id: socket.id
                screen: data

        socket.on 'disconnect', ->
            socket.broadcast.emit 'disconnect'
                id: socket.id