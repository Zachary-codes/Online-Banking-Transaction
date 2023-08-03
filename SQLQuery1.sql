CREATE DATABASE BankingTransactionDB

Use BankingTransactionDB

CREATE TABLE SecurityQuestion
(
	SecurityQuestionId int PRIMARY KEY IDENTITY(1,1),
	SecurityQuestionName VARCHAR(50)
)

INSERT INTO SecurityQuestion values('What primary school did you go to?');
INSERT INTO SecurityQuestion values('What is your mother''s maiden name?');
INSERT INTO SecurityQuestion values('Who is your favourite actor?')

CREATE TABLE Account
(
	AccountId int PRIMARY KEY IDENTITY(1,1),
	AccountNumber VARCHAR(30),
	AccountType VARCHAR(30),
	UserName VARCHAR(30),
	Gender VARCHAR(10),
	Email VARCHAR(50),
	Address VARCHAR(MAX),
	SecurityQuestionId int FOREIGN KEY REFERENCES SecurityQuestion(SecurityQuestionId),
	Answer VARCHAR(30),
	Amount int,
	Password VARCHAR(30)
)

CREATE TABLE [Transaction]
(
	TransactionId int PRIMARY KEY IDENTITY(1,1),
	SenderAccountId int, FOREIGN KEY REFERENCES Account(AccountId),
	ReceiverAccountId int, FOREIGN KEY REFERENCES Account(AccountId),
	MobileNo VARCHAR(20),
	Amount int,
	TransactionType VARCHAR(10),
	Remarks VARCHAR(30)
)