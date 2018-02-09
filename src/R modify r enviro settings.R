# create and modify your .Renviron file

# if(!file.exists("~/.Renviron")) # only create if not already there
#   file.create("~/.Renviron")    # (don't overwrite it)
# file.edit("~/.Renviron")
item = Sys.getenv("<your item>") # Stored in .Renviron
