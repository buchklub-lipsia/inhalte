# requires a patched version of hjson that quotes all numbers
# and strips newlines from multiline string literals
HJSON = hjson
deploy_json: global.hjson books.hjson members.hjson
	$(HJSON) -j global.hjson > ../buchklub_gen/content/global.json
	$(HJSON) -j books.hjson > ../buchklub_gen/content/books.json
	$(HJSON) -j members.hjson > ../buchklub_gen/content/members.json
	
