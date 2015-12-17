#
# Download and place this file into your git repository. 
# Rename it to 'Makefile' (without quotes)
#
# wget http://www.phys.uconn.edu/phys2200/downloads/Makefile.sample
# mv Makefile.sample Makefile
#
# or
#
# wget http://www.phys.uconn.edu/phys2200/downloads/Makefile.sample -O Makefile
#

EDITOR = /usr/bin/vim
INDENT = /usr/bin/indent

CC        = clang
LDFLAGS   = -O
CFLAGS    = -Weverything -Wextra -pedantic $(LDFLAGS)
LDLIBS    = $(shell gsl-config --libs)
GNUPLOT   = gnuplot

.SUFFIXES:
.SUFFIXES:  .c .o .h

.PHONY: edit clean veryclean

target    = FIN2

$(target) : $(target).o two-cubes-integrand2.o
	$(CC) $(LDFLAGS) $^ -o $@ $(LDLIBS)

edit : $(target).c
	$(EDITOR) $<
	$(INDENT) $<

res: FIN2 
	./FIN2 > res

show: res plot.gp
	$(GNUPLOT) plot.gp
	eog plot.png

clean : 
	rm -f *.o
	rm -f *.*~

veryclean : clean
	rm  -f $(target)
