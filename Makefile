install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv *.ipynb
	#py.test --nbval *.ipynb

format:	
	nbqa black *.ipynb &&\
	black *.py && black test_*.py

lint:
	ruff check test_*.py && ruff check *.py
	nbqa ruff *.ipynb

		
all: install lint format test
