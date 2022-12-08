CASE=case00.txt
COLOR=blue
all: tests

solution: solution.cpp
	g++ -o solution solution.cpp -std=c++11 -Wno-deprecated

case00: solution
	./solution < tests/in/case00.txt | sed 's/: /:\n/g'

case01: solution
	./solution < tests/in/case01.txt | sed 's/: /:\n/g'

case02: solution
	./solution < tests/in/case02.txt | sed 's/: /:\n/g'

case03: solution
	./solution < tests/in/case03.txt | sed 's/: /:\n/g'

case04: solution
	./solution < tests/in/case04.txt | sed 's/: /:\n/g'

case05: solution
	./solution < tests/in/case05.txt | sed 's/: /:\n/g'

case06: solution
	./solution < tests/in/case06.txt | sed 's/: /:\n/g'

case07: solution
	./solution < tests/in/case07.txt | sed 's/: /:\n/g'

case08: solution
	./solution < tests/in/case08.txt | sed 's/: /:\n/g'

case09: solution
	./solution < tests/in/case09.txt | sed 's/: /:\n/g'

cases: solution case00 case01 case02 case03 case04 case05 case06 case07 case08 case09

test: solution
	@./solution < tests/in/$(CASE) | sed 's/: /:\n/g'

tests: FORCE solution
	@bash ../test.bash -f solution.cpp -c $(COLOR)

FORCE: