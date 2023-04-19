CREATE TABLE answers (
  id SERIAL PRIMARY KEY,
  -- user_id SERIAL NOT NULL,
  question_id SERIAL NOT NULL,
  -- question_type VARCHAR(10) NOT NULL,
  answer VARCHAR NOT NULL
  -- created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  -- updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- ALTER TABLE answers ADD CONSTRAINT answers_question_type_check CHECK
--   (question_type IN ('range', 'radio', 'checkbox', 'input'));

-- SELECT diesel_manage_updated_at('answers');
-- INSERT INTO answers (user_id, question_id, question_type, answer) VALUES
--   (1, 1, 'range', '1'),
--   (1, 2, 'range', '1'),
--   (1, 3, 'range', '3'),
--   (1, 4, 'range', '5'),
--   (1, 5, 'range', '1')
--   ;

INSERT INTO answers (question_id, answer) VALUES
  (1, '1'),
  (2, '1'),
  (3, '3'),
  (4, '5'),
  (5, '1')
  ;

-- ALTER TABLE answers REPLICA IDENTITY FULL;
-- CREATE PUBLICATION answers_pub FOR TABLE answers;
