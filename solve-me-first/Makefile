CASE=case00.txt
COLOR=blue
all: tests

solution: solution.cpp
	g++ -o solution solution.cpp -std=c++11 -Wno-deprecated

test: solution
	@./solution < tests/in/$(CASE) | sed 's/: /:\n/g'

case00: solution
	./solution < tests/in/case00.txt | sed 's/: /:\n/g'

case01: solution
	./solution < tests/in/case01.txt | sed 's/: /:\n/g'

cases: solution case00 case01

tests: FORCE solution
	@bash ../test.bash -f solution.cpp -c $(COLOR)

FORCE: