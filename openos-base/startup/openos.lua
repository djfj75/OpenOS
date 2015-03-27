print("Loading APIs...")
os.loadAPI("/lib/libde")
os.loadAPI("/lib/libget")
os.loadAPI("/lib/libtext")
print("Checking for desktop enviorments...")
if fs.exists("/bin/desktop") == true then
	print("Running Desktop...")
	shell.run("/bin/desktop")
else
	print("No desktop enviorments found.")
	term.clear()
	term.setCursorPos(1,1)
	print("OpenOS Shell")
end