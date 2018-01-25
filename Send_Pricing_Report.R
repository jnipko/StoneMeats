#Render weekly reports rmd files-----------------------------------------------------
library(rmarkdown)
library(mailR)
render("C:\\Users\\jhnip\\documents\\R2D2\\Pricing\\Pricing_Report.Rmd")

#Send Basic Reports------------------------------------------------------------------
from <- "<reports@stonemeats.com>"
to <- c("<justin@stonemeats.com>", "<carolyn@stonemeats.com>", "<burke@stonemeats.com>", "<karyn@stonemeats.com>")
subject <- paste("Pricing ",Sys.Date())
body <- "Here's an example of what you will get every week."
send.mail(from = from, 
          to = to, 
          subject = subject,
          body = body,
          smtp = list(host.name = "smtp.stonemeats.com",
                      port = 587,
                      user.name = "reports@stonemeats.com",
                      passwd = "Stonemeats1",
                      ssl = T),
          authenticate = T,
          attach.files = c(file.path("C:", 
                                     "Users",
                                     "jhnip",
                                     "Documents", 
                                     "R2D2", 
                                      "Pricing", 
                                     "Pricing_Report.html"),
                           file.path("C:",
                                     "Users",
                                     "Jnipko",
                                     "Documents",
                                     "Pricing",
                                     "Customer_files",
                                     "Kroger Pricing.xlsx"),
                           file.path("C:",
                                     "Users",
                                     "Jnipko",
                                     "Documents",
                                     "Pricing",
                                     "Customer_files",
                                     "Associated.xlsx"),
                           file.path("C:",
                                     "Users",
                                     "Jnipko",
                                     "Documents",
                                     "Pricing",
                                     "Customer_files",
                                     "Pricing.xlsx")),

          send = T)