CREATE DATABASE Social_buzz

USE Social_buzz

SELECT * FROM REACTION

SELECT * FROM REACTION_TYPE

SELECT *FROM CONTENT


---TO PERFORM INNER JOIN ON THREE TABLES
SELECT
    Reaction.ContentID,
    Reaction.ReactionType,
    Reaction.Datetime,
    Content.ContentType,
    Content.Category,
	Reaction_Type.Sentiment,
	Reaction_Type.Score
FROM
    Reaction
INNER JOIN
    Content
ON
    Reaction.ContentID = Content.ContentID
INNER JOIN
	Reaction_Type
ON
	Reaction.ReactionType = Reaction_Type.ReactionType;


	--Top 5 categories with the largest popularity
Select Top 5
	Category,
Sum(Score) AS SumOfScore
from
	social_buzz
group by
	Category
Order by
	SumOfScore Desc;
	


SELECT
	ReactionType,
	ContentType
FROM 
	Social_buzz
WHERE
	not Sentiment= 'positive';



SELECT
	ReactionType,
	ContentType
FROM 
	Social_buzz
WHERE
	Sentiment= 'positive';



SELECT
	ReactionType,
	ContentType
FROM 
	Social_buzz
WHERE
	Sentiment= 'positive'
AND
	Category = 'studying';


