|Question|Answer|
|---|---|
|A|wget https://ed-public-download.app.cloud.gov/downloads/Most-Recent-Cohorts-Scorecard-Elements.csv|
|B|head -1 scorecard.csv| tr. " " | wc -w|
|C|grep "Dartmouth College" scorecard.csv|
|D|sed -n '/Dartmouth College/,/Southern New Hampshire Univeristy/p' scorecard.csv|
|E|cut -d , -f 4,86 scorecard.csv|
|F|cut -d , -f 4,86 scorecard.csv| sort -t',' -k 2 -n -r | head -10|
|G|cut -d , -f 4,86 scorecard.csv| sort -t',' -k 2 -n -r | sed -e 's/,/|/g' -e 's/.*/|&|/' | head -10|
|Institution|Size|
|Western Governors University|88921|
|Southern New Hampshire University|80170|
|University of Phoenix-Arizona|70241|
|Ivy Tech Community College|59821|
|Lone Star College System|59074|
|University of Central Florida|58392|
|Houston Community College|57053|
|Grand Canyon University|53209|
|Texas A & M University-College Station|53194|
|Miami Dade College|49443|
|H|cut -d , -f 6 scorecard.csv| sed '1d'| sort | uniq -c | sort -rn|
