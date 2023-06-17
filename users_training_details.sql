Select training_details.user_id, user_name, training_id, training_date,count(training_id)
from users join training_details 
on users.user_id = training_details.user_id
Group by training_details.user_id,  user_name , training_id , training_date
Having count(training_id)>1
order by training_date desc;