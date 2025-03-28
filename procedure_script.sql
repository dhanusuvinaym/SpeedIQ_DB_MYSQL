

create database speediq;

use speediq;

select * from guidelines;

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

CREATE TABLE guidelines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT NOT NULL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

insert into guidelines values(2,"https://www.google.com",now());

insert into guidelines values(1,"I. Eligibility and Registration:
• Age: 18. 
• Location: India  
• Registration: User Need to provide valid Mobile number, name . For one registration quiz can be take only once 
• Multiple Registrations: Multiple registrations from the same participant are allowed as every time it show different question paper. 
• Disqualification: Test Can be submitted within 30mins after starting the quiz. If time expires quiz can be submitted automatically.
                                       
II. Quiz Format and Rules:
• Quiz Type: multiple choice, open-ended. 
• Number of Questions: 10 questions for 30mins. 
• Question Topics: questions can be covered from General aptitude , logic reasoning , general awareness, sports and games which are helpful for interview exams/competitive exams. 
• Scoring: each correct answer will get 1 mark and NO penalties for incorrect answers , for Un answered questions will get 0 marks after timer expires[30mins]. 
• Allowed Devices: computers, mobile phones. 
• Communication: Participants are allowed to communicate with each other or use external resources during the quiz. 
• Disqualification: List reasons for potential disqualification, such as cheating or violating the rules. 
III. Prizes and Awards:
• Prizes: Winner will get certificate from the SpeedIQ (soft copy) and monetary value as RS:-5000. 
• Winner Selection: Winner will be selected based the top score with less time. 
• Prize Distribution: certificate will be shared to winner’s mobile number through what’s up and prize money will be paid through UPI. 
IV. Disclaimers and Legal:
• Organizers' Responsibility: organizers are available to resolve any technical issues during the quiz . 
• Data Privacy: participant data will be collected, used, and stored, till the quiz context period. Once winners announced data will be erased after a week. 
• Organizer's Right to Change: organizers reserve the right to change the terms and conditions at any time, with reasonable notice. 
• Contact Information: Mobile Number : XXXXXXX Mail ID:XXXXXXXX@gmail.com
",now());

