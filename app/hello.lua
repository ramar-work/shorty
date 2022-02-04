-- app.hello.lua

-- If there's something in GET, redirect
if request.url
then

	response = {}
	response.content = "Hello!"

elseif request.body
then
	--response = {}
	--response.content = json.encode( request.body )

	--TODO: This should not be needed
	local str = rand.alpha( 8 )
	if string.len( str ) < 8 
	then
	str = rand.alpha( 8 )
	end

---[[
	-- Write the resposne
	local d = db.exec{
		conn = config.db
	, string = "INSERT INTO urllist VALUES ( NULL, :src, :dest )"
	, bindargs = { 
			src = str
		, dest = request.body.urlv.value
		}
	}

	local words = {
		"Cool", "Great", "Awesome", "Tubular", "Totally Rad"
	}

	return {
		post = {
			{ word = words[1], value = str }
		}
	}
--]]

-- If there's something in POST, make the URL
end

return { rands = rand.alpha(8) }

