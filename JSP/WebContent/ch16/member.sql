CREATE TABLE IF NOT EXISTS member(
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(20),
	name VARCHAR(20),
	PRIMARY KEY (id)
);

select * from member;