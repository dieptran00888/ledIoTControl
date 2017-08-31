var http = require("http");
var url = require("url");
var path = require("path");
var ServerIP = '127.0.0.1',
    port = '8080';

var Server = http.createServer(function (request , response) {
    console.log("Request Recieved" + request.url);
    console.log(request.url.substring(6, 9))
    var SampleJsonData = JSON.stringify([{"ElementName":"ElementValue"}]);
    response.end('_testcb(' + SampleJsonData + ')'); // this is the postbackmethod
   }); 
Server.listen(port, ServerIP, function () {
    console.log("Listening..." + ServerIP + ":" + port);
});
