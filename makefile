.DEFAULT_GOAL := generate

generate:
	@echo "Rendering with Quarto"
	quarto render 
	@echo "Saving to Server"
	rsync -av -e ssh _book/* u35500146@home89691980.1and1-data.host:quartobook/

clean:
	@echo "Cleaning up..."
	rm -r _book/