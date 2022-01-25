
.DEFAULT_GOAL := tilt

.PHONY: clean
clean:
	kind delete cluster

.PHONY: tilt
tilt: clean
	ctlptl create cluster kind
	tilt up
