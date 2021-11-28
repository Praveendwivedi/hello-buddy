ACTIVATE := . ./venv/bin/activate
PYTHON := python3
ifeq '$(findstring ;,$(PATH))' ';'
	ACTIVATE := . .\venv\Scripts\activate
	PYTHON := python
endif

.PHONY: venv
venv:
	$(PYTHON) -m venv venv
	$(ACTIVATE)

install:
	pip install -r requirements
	pipwin install pyaudio
run:
	make install
	$(PYTHON) app.py