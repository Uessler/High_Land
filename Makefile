CC = gcc
CFLAGS = -Wall -Wextra -g -Iinclude
LIBS = -lglfw -lGL -lm -ldl

SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)

TARGET = high_land

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET) $(LIBS)

clean:
	rm -f src/*.o $(TARGET)

