all: snake

snake: 	main.o snake.o
	g++ -o snake main.o snake.o -lncurses

main.o:	main.cpp
	g++ -c main.cpp -lncurses

snake.o: snake.cpp
	g++ -c snake.cpp -lncurses

clean:
	rm -rf *o snake
