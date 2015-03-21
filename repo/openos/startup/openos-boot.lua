--OpenOS Startup File
print("Loading APIs...")
os.loadAPI("/lib/libde")
os.loadAPI("/lib/libtext")
os.loadAPI("/lib/libget")
print("Checking for updates...")
shell.run("ac-get", "update")
print("Starting OpenOS...")
shell.run("/bin/desktop")