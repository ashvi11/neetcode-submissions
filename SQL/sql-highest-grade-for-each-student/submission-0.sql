-- Write your query below

select student_id, exam_id, score
from 
(select *,
    rank() over(partition by student_id order by score desc, exam_id asc) as rnk
from exam_results) ranked_scores
where rnk = 1
order by 1


