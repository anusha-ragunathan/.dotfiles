
all:

# Build the bin go files so that they work on different platforms
# and the repository stays small
go:
	go build -o bin/server bin/server.go

init:
	git submodule update --init --recursive

font:
	mkdir /usr/local/share/fonts/crosbymichael
	cp ~/.dotfiles/fonts/*.ttf /usr/local/share/fonts/crosbymichael/
	sudo chown -r root /usr/local/share/fonts/
	fc-cache

zsh:
	cp ~/.dotfiles/themes/* ~/.oh-my-zsh/themes

.PHONY: all go init font
