when CLIENT_ACCEPTED {
   # Drop 20% of all connections
   # modify 0.2 to the percentage you want to drop.  .02 = 2%, 0.2 = 20%, .5 = 50%, etc.

   if { rand() < 0.2 } {
      reject
      # log local0. "iRule Random session reject." #uncomment for debugging.
   }
}

when HTTP_REQUEST {
# log local0. "iRule Random session allow" #uncomment for debugging
  HTTP::respond 200 content "
<html>
<head>
  <title>The End of the Internet</title>
</head>
<body>
<h1>The End of the Internet</h1>
<h3>Congratulations! This is the last page.</h3>
Thank you for visiting the End of the Internet.<br>
There are no more links.<br>
<br>
You must now turn off your computer and go do something productive.</p>
<br> <br> <br><br>
</body>
</html>
"
}
}
