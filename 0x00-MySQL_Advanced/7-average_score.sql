-- SQL script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student.
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id_ INT)
BEGIN
    DECLARE avg_score FLOAT;

    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = user_id_;

    UPDATE users
    SET average_score = avg_score
    WHERE id = user_id_;

END$$

DELIMITER ;