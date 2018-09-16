### 1. Write a query that includes a column that is flagged "yes" when a player is from California,and sort the results with 
those players first.

SELECT player_name, CASE WHEN state='CA' THEN 'yes' ELSE 'no' END AS California_Player
FROM benn.college_football_players 
ORDER BY 2 desc

### 2. Write a query that selects all columns from benn.college_football_players and adds an additional column that displays 
the player's name if that player is a junior or senior.

SELECT *, 
CASE WHEN year IN ('JR','SR') THEN player_name ELSE NULL END AS Player_level
FROM benn.college_football_players 
ORDER BY 2 desc

### 3. Write a query that counts the number of 300lb+ players for each of the following regions: 
West Coast (CA, OR, WA), Texas, and Other (Everywhere else).

SELECT CASE 
WHEN state IN ('CA', 'OR', 'WA') THEN 'West_Coast'
WHEN  state='TX' THEN 'Texas'
ELSE 'others' END AS player_state, 
COUNT(*) AS player_count
from benn.college_football_players
WHERE weight>=300
GROUP BY 1
ORDER BY 2 desc

### 4. Write a query that calculates the combined weight of all underclass players (FR/SO) in California as well as the 
combined weight of all upperclass players (JR/SR) in California.

SELECT SUM( CASE WHEN year IN ('FR','SO') AND state='CA' THEN weight ELSE NULL END) Underclass_weight,
SUM(CASE WHEN year IN ( 'JR', 'SR' ) AND state='CA' THEN weight ELSE NULL END) Upperclass_weight
FROM benn.college_football_players

### 5. Write a query that displays the number of players in each state, with FR, SO, JR, and SR players in separate columns 
and another column for the total number of players. Order results such that states with the most players come first.

SELECT state,
COUNT(CASE WHEN year='SR' THEN id ELSE NUll END) Senior_players,
COUNT(CASE WHEN year='JR' THEN id ELSE NULL END) Junior_players,
COUNT(CASE WHEN year='FR' THEN id ELSE NULL END) Freshmen_players,
COUNT(CASE WHEN year='SO' THEN id ELSE NULL END) Sophomore_players,
Count(*) AS Total_Players
FROM benn.college_football_players 
GROUP BY 1

### 6. Write a query that shows the number of players at schools with names that start with A through M, 
and the number at schools with names starting with N - Z.

SELECT CASE
WHEN school_name < 'N' THEN 'first_zone_schools'
WHEN school_name >='N' THEN 'second_zone_schools'
END AS School_Zone,
COUNT(*) AS Total_students
from benn.college_football_players 
GROUP BY 1
