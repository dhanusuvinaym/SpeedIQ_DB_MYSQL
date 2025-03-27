

create database speediq;

use speediq;


Delimiter //
drop procedure if exists getQuestionsAttenedByUserId;
CREATE PROCEDURE getQuestionsAttenedByUserId(IN TokenId_1 char(6))
 Begin
 DECLARE userId INT DEFAULT NULL;
SELECT id into userId FROM login WHERE tokenid = TokenId_1;
 select q.question,q.optionA,q.optionB,q.optionC,q.optionD,q.correctoption,a.option_selected,(q.correctoption=a.option_selected) as finalOutput
 from questions q
 inner join analysis a
 where a.question_id=q.id and a.user_id=userId;
 end //
 Delimiter ;