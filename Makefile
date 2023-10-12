# Add variable to shorten commands statements
VENV = venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip

# Run the app after updating the virtual environment
run: $(VENV)/bin/activate
	$(PYTHON) app.py

# Update virtual environment and install dependencies
$(VENV)/bin/activate: requirements.txt
	python3 -m venv $(VENV)
	$(PIP) install -r requirements.txt


clean:
	rm -rf __pycache__
	rm -rf $(VENV)