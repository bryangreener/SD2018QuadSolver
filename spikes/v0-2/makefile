# Source: https://spin.atomicobject.com/2016/08/26/makefile-c-projects/
CC = gcc

TARGET ?= a.out
SRC_DIRS ?= ./src

SRCS := $(shell find $(SRC_DIRS) -name *.c)
OBJS := $(addsuffix .o,$(basename $(SRCS)))
DEPS := $(OBJS:.o=.d)

INC_DIRS := $(shell find $(SRC_DIRS) -type d)
INC_FLAGS := $(addprefix -I,$(INC_DIRS))

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $@ $(LOADLIBES) $(LDLIBS) -lm

.PHONY: clean
clean:
	$(RM) $(TARGET) $(OBJS) $(DEPS)

-include $(DEPS)
