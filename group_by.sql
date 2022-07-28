-- Questão 01
SELECT COUNT(id) AS "currentExperiences"
FROM experiences
WHERE "endDate" IS NOT NULL
GROUP BY "endDate" IS NOT NULL;

-- Questão 02
SELECT "userId", COUNT("userId") AS educations
FROM educations
GROUP BY "userId"
ORDER BY "userId" ASC;

-- Questão 03
SELECT writer.name AS writer, COUNT(testimonials."writerId") AS "testimonailCount"
FROM testimonials
JOIN users writer
	ON testimonials."writerId"=writer.id
WHERE testimonials."writerId"=435
GROUP BY writer.name;

-- Questão 04
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs
JOIN roles
	ON jobs."roleId"=roles.id
WHERE jobs.active=true
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;