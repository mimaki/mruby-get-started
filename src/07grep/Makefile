MRUBY=../../mruby
BLDHOST=$(MRUBY)/build/host

all:
	$(MRUBY)/bin/mrbc -o grep.c -Bappbin grep.rb
	gcc -o mygrep -I$(MRUBY)/include -L$(BLDHOST)/lib main.c grep.c -lmruby -lm

win:
	$(MRUBY)/bin/mrbc -o grep.c -Bappbin grep.rb
	gcc -o mygrep -I$(MRUBY)/include -L$(BLDHOST)/lib main.c grep.c -lmruby -lm -lws2_32

mruby:
	cd $(MRUBY); rake MRUBY_CONFIG=../src/07grep/host-regexp.rb clean all

clean:
	rm -f grep.c mygrep *.lock
