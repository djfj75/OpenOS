if fs.isDir("/bin/programs") == false then
	fs.makeDir("/bin/programs")
end

if fs.exists("/bin/programs/sketch") == false then
	term.setBackgroundColor(colors.white)
	term.setTextColor(colors.white)
	shell.run("pastebin","get Mm5hd97E /bin/programs/sketch")
	shell.run("/bin/programs/sketch")
else
	shell.run("/bin/programs/sketch")
end