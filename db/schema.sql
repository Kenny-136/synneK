CREATE DATABASE dadjokes;

\c dadjokes;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

CREATE TABLE jokes(
    jokes_id SERIAL PRIMARY KEY,
    user_id INT,
    jokes TEXT,
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO users (name, email, password_digest) VALUES ('kenny', 'a', 'a');

INSERT INTO jokes (user_id, jokes)
VALUES (1, 'Why did the half blind man fall in the well? Because he couldnt see that well!'), (1, 'A bartender broke up with her boyfriend, but he kept asking her for another shot.'
);