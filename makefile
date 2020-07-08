README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo  >> README.md
	echo Date: $$(date) >> README.md
	echo >> README.md
	echo Line count: $$(wc -l < guessinggame.sh) >> README.md
