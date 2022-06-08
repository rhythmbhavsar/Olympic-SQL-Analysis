-- Q1 Find the average number of medals won by each country
SELECT participant_details.country, AVG(medals.total_medal) AS avg_medals FROM participant_details, medals GROUP BY participant_details.country;
 

------------------------------------------------------------------------------------------------------------------


--  Q2 Display the countries and the number of gold medals they have won in decreasing order
SELECT participant_details.country, SUM(medals.gold_medal) AS Total_goldMedals FROM participant_details, medals GROUP BY participant_details.country ORDER BY COUNT(medals.gold_medal) DESC;


------------------------------------------------------------------------------------------------------------------


--  Q3 Display the list of people and the medals they have won in descending order, grouped by their country
SELECT participant_details.name, SUM(medals.total_medal) AS Total_Medals FROM participant_details, medals GROUP BY participant_details.country ORDER BY SUM(medals.total_medal) DESC;


------------------------------------------------------------------------------------------------------------------


--  Q4 Display the list of people with the medals they have won according to their their age

SELECT participant_details.name, participant_details.age , SUM(medals.total_medal) AS Total_Medals FROM participant_details, medals GROUP BY participant_details.name ORDER BY participant_details.age DESC;


------------------------------------------------------------------------------------------------------------------


--  Q5 Which country has won the most number of medals (cumulative)
SELECT participant_details.country, SUM(medals.total_medal) AS Total_Medals FROM participant_details, medals GROUP BY participant_details.country ORDER BY SUM(medals.total_medal) DESC LIMIT 5;

------------------------------------------------------------------------------------------------------------------
 
