when HTTP_REQUEST { 
     redirect to "https://[HTTP::host][HTTP::uri]"
   }
