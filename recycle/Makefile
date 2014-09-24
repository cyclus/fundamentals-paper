
infiles = $(wildcard *.xml)
scenarios = $(wildcard mod-open*.xml)

flowgraphs = $(infiles:%.xml=flow-%.eps)
pucharts = $(scenarios:mod-open-%.xml=puseries-%.eps)

all: $(flowgraphs) $(pucharts)

puseries-%.eps: pu-%.gp open-%.pudat closed-%.pudat mod-open-%.pudat
	gnuplot $<

flow-%.eps: %.dot
	dot -Teps -o $@ $<
	dot -Tsvg -o flow-$*.svg $<

%.dot: %.sqlite
	metric -db $< flowgraph -proto > $@

%.pudat : %.sqlite
	metric -db $< -custom query.json puseries > $@

%.sqlite : %.xml
	cyclus $^ -o $@

clean:
	rm -f *.sqlite
	rm -f *.pudat
	rm -f *.eps *.svg

.PRECIOUS: %.sqlite

.PHONY: all clean
