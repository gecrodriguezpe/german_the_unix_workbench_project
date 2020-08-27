all: README.md

README.md: guessinggame.sh
	echo "# Germán Camilo title project for the Unix Workbench" > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
