# Datagroup example:
# ltm data-group internal /Common/site_redirections {
#     records {
#         quickchop.billymays.com:5000 {
#             data slapchop.vinceoffer.com/skinsonthebottom.html
#         }
#         thighmaster.suzannesomers.com {
#            data thighrocker.jakesteinfeld.com/workoutroutine.html
#         }
#    }
#    type string
#}

when HTTP_REQUEST {
  if { [class match [string tolower [HTTP::host][HTTP::uri][TCP::local_port clientside]] starts_with site_redirections] } {
    HTTP::redirect https://[class match -value [string tolower [HTTP::host][HTTP::uri]] starts_with site_redirections]
  }
}
