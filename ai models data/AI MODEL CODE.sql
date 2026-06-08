USE AI;
SELECT * FROM  all_datset;
SELECT model_name,completion_tokens 
FROM all_datset
WHERE completion_tokens>2000;
CREATE TABLE highestcompletion_tokens  AS
SELECT team_owner,model_name,completion_tokens,estimated_cost_usd
FROM all_datset
WHERE completion_tokens>2000;
SELECT * FROM highestcompletion_tokens;
SELECT COUNT( model_name) 
FROM highestprompt_tokens
WHERE model_name='llama-3-70b';
CREATE TABLE highestprompt_tokens AS
SELECT team_owner,model_name,prompt_tokens,estimated_cost_usd
FROM  all_datset
WHERE prompt_tokens>2000;
SELECT * FROM  highestprompt_tokens;
CREATE TABLE lama_completed AS
SELECT team_owner,model_name,completion_tokens,estimated_cost_usd
FROM highestcompletion_tokens
WHERE model_name='llama-3-70b';
SELECT * FROM lama_completed;