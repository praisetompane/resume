praise_tompane_engineering: praise_tompane_engineering.tex
	aspell -t -c praise_tompane_engineering.tex
	aspell -t -c ./resume/education.tex 
	aspell -t -c ./resume/experience.tex
	aspell -t -c ./resume/skills.tex
	aspell -t -c ./resume/summary.tex
	xelatex praise_tompane_engineering.tex

praise_tompane_software_tech_lead: praise_tompane_software_tech_lead.tex
	aspell -t -c praise_tompane_software_tech_lead.tex
	aspell -t -c ./resume/education.tex 
	aspell -t -c ./resume/experience_software_tech_lead.tex
	aspell -t -c ./resume/skills.tex
	aspell -t -c ./resume/summary.tex
	xelatex praise_tompane_software_tech_lead.tex

clean:
	rm *.aux *.log *.out