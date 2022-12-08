all: tests
COLOR=YELLOW

first: FORCE
	cd solve-me-first && $(MAKE) COLOR=$(COLOR)

birthday: FORCE
	cd birthday-cake-candles && $(MAKE) COLOR=$(COLOR)

records: FORCE
	cd breaking-the-records && $(MAKE) COLOR=$(COLOR)

grading: FORCE
	cd grading-students && $(MAKE) COLOR=$(COLOR)

staircase: FORCE
	cd staircase && $(MAKE) COLOR=$(COLOR)

rotation: FORCE
	cd left-rotation && $(MAKE) COLOR=$(COLOR)

time: FORCE
	cd time-conversion && $(MAKE) COLOR=$(COLOR)

tests: FORCE first birthday records grading staircase rotation time

FORCE: