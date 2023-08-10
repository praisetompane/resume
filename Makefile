praise_tompane_resume: praise_tompane_resume.tex
	aspell -t -c praise_tompane_resume.tex
	aspell -t -c ./resume/education.tex 
	aspell -t -c ./resume/experience.tex
	aspell -t -c ./resume/skills.tex
	aspell -t -c ./resume/summary.tex
	xelatex praise_tompane_resume.tex

clean:
	rm *.aux *.log *.out