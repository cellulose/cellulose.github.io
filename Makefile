DOCS := master
release_dir := ./
docs_dir := $(release_dir)docs/
time := `date +'%m.%d.%y %H:%M:%S'`
project_url := http://github.com/cellulose
doc_url := http://cellulose.io/documentation

default: docs

upload: pull docs push

clean:
	rm -rf $(docs_dir)

GET_VERSION = $(shell cat ../$(1)/VERSION)
COMPILE_DOCS = exdoc "$(1)" "$(call GET_VERSION,$(2))" "../$(2)/_build/dev/lib/$(2)/ebin" -m "$(3)" -u $(project_url) -o $(docs_dir)$(2) -p $(doc_url)

docs:
	rm -rf $(docs_dir)
	$(call COMPILE_DOCS,Hub,hub)
	$(call COMPILE_DOCS,JrtpBridge,jrtp_bridge,JrtpBridge)
	$(call COMPILE_DOCS,Ethernet,ethernet,Ethernet)
	$(call COMPILE_DOCS,Discovery,discovery,Discovery)
	$(call COMPILE_DOCS,PersistentStorage,persistent_storage,PersistentStorage)
	$(call COMPILE_DOCS,Resources,resources,Resources)
	$(call COMPILE_DOCS,Leds,leds,Leds)
	$(call COMPILE_DOCS,LoggerMulticastBackend,logger_multicast_backend,LoggerMulticastBackend)

pull:
	cd $(release_dir); git pull

commit: pull
	cd $(release_dir); git add --all; git commit -am "Automated Documentation Update - $(time)"

push: commit
	cd $(release_dir); git push
