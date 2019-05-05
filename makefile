all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment." > README.md
	echo "## by Johns Hopkins University."  >> README.md
	echo "## Description:  ## Make a program called  **guessinggame.sh**:" >> README.md
	echo "## This program should continuously ask the user to guess how many files are in directory and at the same time advise the guesser if they are higher or lower and once the right number is chosen, **congratulate them.**"  >> README.md
	echo "## Make Date**:"  >> README.md
	date >> README.md
	echo   "## Number of lines in guessinggame.sh:"  >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
