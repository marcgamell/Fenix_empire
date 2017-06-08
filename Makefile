NAME=fenix_empire

all: dorks

rubber:
	rubber --pdf --force $(NAME);

dorks:
	pdflatex $(NAME)
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)
	scp fenix_empire.pdf esgmonster:Fenix_papers/empire_2017

rubberclean:
	rubber --clean $(NAME)
	rm -f $(NAME).pdf

clean:
	rm -f $(NAME).aux $(NAME).bbl $(NAME).blg $(NAME).log $(NAME).pdf *~
