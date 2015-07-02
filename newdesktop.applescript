tell application "System Events"
	-- start mission control
	do shell script "/Applications/Mission\\ Control.app/Contents/MacOS/Mission\\ Control"
	tell process "Dock"
		set countSpaces to count buttons of list 1 of group 1
		-- new space
		click button 1 of group 1
		-- NOTE: uncomment below to automatically switch to new space
		-- repeat until (count buttons of list 1 of group 1) = (countSpaces + 1)
		-- end repeat
		-- click button (countSpaces + 1) of list 1 of group 1
		-- NOTE: comment below to automatically switch to new space
		tell application "System Events"
			key code 53
		end tell
	end tell
end tell

