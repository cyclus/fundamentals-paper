
all: puseries.eps flow-mod-open.eps flow-closed.eps

puseries.eps: pu.gp closed.pudat mod-open.pudat
	gnuplot pu.gp

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

.PHONY: all clean
