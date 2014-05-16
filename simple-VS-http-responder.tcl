when HTTP_REQUEST {
   log local0. "response irule [HTTP::host][HTTP::uri]"
   HTTP::respond 200 content {
        <html>
         <head>
            <title>THIS IS VS_RESPONDER</title>
         </head>
         <body>
        </body>
      </html>
   } Content-Type "text/html; charset=UTF-8"
}
