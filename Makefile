praise_tompane_resume: praise_tompane_resume.tex
	pyspelling -c spellcheck.yaml
	xelatex praise_tompane_resume.tex

clean:
	rm *.aux *.log *.out