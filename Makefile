NAME=p0x
DIRPATH=$(shell realpath .)
DIRNAME=$(shell basename $(DIRPATH))

cmake:
	cmake -S . -B build

build: cmake
	cd build; make

clean:
	rm -rf build

tar:
	cd ..; tar cvfz $(DIRNAME)/$(NAME)_joseangel_portillogarcia.tar.gz --exclude-from=./$(DIRNAME)/.gitignore $(DIRNAME)
