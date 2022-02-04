return {
	db = "sqlite3://db/shorty.db",
	title = "Ironhead's URL Shortener",
	fqdn = "shorty.ironhead.io",
	static = { "/assets", "/ROBOTS.TXT", "/favicon.ico" },
	routes = {
		["/"] = { model="hello",view="hello" },

		["/:id"] = {
			model = "whatever"
		, view = "whatever"
		}
	}
}
