when CLIENT_ACCEPTED {
  switch [IP::client_addr] {
      { [class match equals C1575724-mail-servers] } {
         snatpool SNAT-10.215.208.234-237
     } default 
   }
}
