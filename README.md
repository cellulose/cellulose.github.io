cellulose.io website
======

This is the website found at [http://cellulose.io](http://cellulose.io)

### Building documentation

1. Install executable of [ExDoc](http://github.com/elixir-lang/ex_doc). This is
most easily done by cloning [CaptChrisD's version](http://github.com/captchrisd/ex_doc)
```bash
git clone git@github.com:CaptChrisD/ex_doc.git
cd ex_doc
mix deps.get
mix escript.build
```
**Note:** You may have to run `mix escript.build` as sudo if you do not have write permisions to `/usr/local/bin`

2. Use Makefile to build documentation
```bash
#build local docs
make docs
```
**Note:** The makefile expects all other [Cellulose](http://github.com/cellulose) projects to be at the same directory level as this project:
```bash
|-> cellulose.github.io
|-> discovery
|-> hub
...
|-> leds
...
```
3. For automated uploading the Makefile can help, just type `make upload`
