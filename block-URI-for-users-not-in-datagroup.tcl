when HTTP_REQUEST { 
   if { [matchclass [string tolower [HTTP::uri]] starts_with $::allowed_stuff] } { 
     if { [matchclass [IP::client_addr] equals $::allowed_dudes] } { 
       #Secure path and trusted IP 
       #log local0. "Allowing connection from [IP::client_addr] to secure path [HTTP::uri]" 
       forward 
     } else { 
       #Secure path but not a trusted IP 
       #log local0. "Untrusted IP ([IP::client_addr]) attempting to access secure path ([HTTP::uri])" 
       discard 
     } 
   } else { 
     #Not a secure path 
     #log local0. "Allowing connection from [IP::client_addr] to [HTTP::uri]" 
     forward 
   } 
 }
