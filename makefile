README.md: guessinggame.sh
	touch README.md
	echo "# Guessing game for the Unix Workbench course at coursera" > README.md
	echo `date` >> README.md
	echo "The number of lines in the guessinggame script:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
