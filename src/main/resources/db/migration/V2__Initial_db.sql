CREATE TABLE members (
                         id         bigserial              NOT NULL,
                         first_name character varying(100) NOT NULL,
                         last_name  character varying(100) NOT NULL,
                         phone      character varying(20),
                         age        integer
);

CREATE TABLE trainers (
                          id               bigserial              NOT NULL,
                          first_name       character varying(100) NOT NULL,
                          last_name        character varying(100) NOT NULL,
                          specialization   character varying(100),
                          experience_years integer
);

CREATE TABLE subscriptions (
                               id         bigserial              NOT NULL,
                               member_id  bigint                 NOT NULL,
                               trainer_id bigint,
                               type       character varying(100) NOT NULL,
                               start_date date                   NOT NULL,
                               end_date   date                   NOT NULL,
                               price      numeric(12,2)
);

ALTER TABLE members       ADD PRIMARY KEY (id);
ALTER TABLE trainers      ADD PRIMARY KEY (id);
ALTER TABLE subscriptions ADD PRIMARY KEY (id);

ALTER TABLE subscriptions
    ADD CONSTRAINT fk_subscription_member
        FOREIGN KEY (member_id) REFERENCES members(id);

ALTER TABLE subscriptions
    ADD CONSTRAINT fk_subscription_trainer
        FOREIGN KEY (trainer_id) REFERENCES trainers(id);