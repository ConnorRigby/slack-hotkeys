LDFLAGS += -lcurl
CFLAGS ?= -O2 -Wall -Wextra -Wno-unused-parameter
# CFLAGS += -DSLACKING_VERBOSE_OUTPUT=1
CFLAGS += -D_GNU_SOURCE
SRC=$(wildcard src/*.cpp)
OBJ=$(SRC:.cpp=.o)
OUT=bin

EXES=bin/users.profile.set bin/chat.meMessage bin/chat.postMessage

.PHONY: all clean

all: $(OUT) $(EXES)

$(OUT):
	mkdir -p $(OUT)

%.o: %.cpp
	$(CXX) -Ideps/slacking/include/slacking/ -c $(CFLAGS) -o $@ $<

bin/users.profile.set: src/users.profile.set.o
	$(CXX) $^ $(LDFLAGS) -o $@

bin/chat.meMessage: src/chat.meMessage.o
	$(CXX) $^ $(LDFLAGS) -o $@

bin/chat.postMessage: src/chat.postMessage.o
	$(CXX) $^ $(LDFLAGS) -o $@

clean:
	$(RM) $(OBJ)
	$(RM) $(EXES)