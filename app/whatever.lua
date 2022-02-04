local d = db.exec{
	conn = config.db
, string = "SELECT uri FROM urllist WHERE stub = :arg"
, bindargs = { arg = route.active }
}

--response = {}
--response.content = json.encode( d )

---[[
if d.count == 0
then
	
	response = {}
	response.status = 404
	response.content = "Sorry, that URL was not found."
	return

else

	return {
		text = d.results[1].uri
	, service = config.fqdn
	}

end
--]]
