DOCS := master
release_dir := $(shell pwd)
docs_dir := $(release_dir)/docs/
time := `date +'%m.%d.%y %H:%M:%S'`
project_url := http://github.com/cellulose
doc_url := http://cellulose.io/documentation

default: docs

upload: pull docs push

clean:
	rm -rf $(docs_dir)

# cd into the project dirctory, pull latest changes, build docs with version number found in VERSION
# REVIEW: -u options should provide enough information to exdoc to build a url direct to the source
# including line number for a particular function. But it does not work correctly when in this file...
# ex_doc/lib/ex_doc.ex:60 include %{path} which expands to linux filepath in the middle of the url...
# change project_url to https for this to kick in http does not trigger this feature
GET_VERSION = $(shell cat ../$(1)/VERSION)
COMPILE_DOCS = cd ../$(2); git pull; mix docs --output ../cellulose.github.io/docs/$(2) --main $(3); cd $(release_dir)

docs:
	rm -rf $(docs_dir)
	$(call COMPILE_DOCS,Hub,hub,Hub)
	$(call COMPILE_DOCS,JrtpBridge,jrtp_bridge,JrtpBridge)
	$(call COMPILE_DOCS,Ethernet,ethernet,Ethernet)
	#$(call COMPILE_DOCS,Discovery,discovery,Discovery)
	$(call COMPILE_DOCS,PersistentStorage,persistent_storage,PersistentStorage)
	$(call COMPILE_DOCS,Resources,resources,Resources)
	$(call COMPILE_DOCS,Leds,leds,Leds)
	$(call COMPILE_DOCS,LoggerMulticastBackend,logger_multicast_backend,LoggerMulticastBackend)
	$(call COMPILE_DOCS,HubStorage,hub_storage,HubStorage)

pull:
	cd $(release_dir); git pull

commit: pull
	cd $(release_dir); git add --all; git commit -am "Automated Documentation Update - $(time)"

push: commit
	cd $(release_dir); git push
