#!/bin/bash

# Define the output file names
COURSE=478
TYEAR=SP25
CLASS=02
SECTION=7005
NAME=Giacalone_Anthony

# Generate output files
pandoc README.md -o cecs-$COURSE-$TYEAR-$CLASS-syllabus-$SECTION.html --from markdown
pandoc README.md --template eisvogel -V linkcolor=blue -V header-includes:'\usepackage[export]{adjustbox} \let\includegraphicsbak\includegraphics \renewcommand*{\includegraphics}[2][]{\includegraphicsbak[frame,#1]{#2}}' -o CECS\ $COURSE\_$CLASS\_$TYEAR\_$NAME.pdf
