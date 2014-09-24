
outs += puseries-1.eps
outs += puseries-n.eps
outs += flow-mod-open-1.eps
outs += flow-mod-open-n.eps
outs += flow-closed-1.eps
outs += flow-closed-n.eps

all: $(outs)

puseries-%.eps: pu-%.gp closed-%.pudat mod-open-%.pudat
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

.PHONY: all clean
