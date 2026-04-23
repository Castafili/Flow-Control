CC = gcc
CFLAGS = -Wall -Wextra -g
LDFLAGS = -lrt

SRCS = library.c eventCallbacks.c
OBJS = $(SRCS:.c=.o)
TARGET = flowcontrol

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS)

%.o: %.c global.h library.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
