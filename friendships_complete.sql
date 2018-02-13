select concat_ws(' ', users.first_name, users.last_name) as user_name, concat_ws(' ', users2.first_name, users2.last_name) as friend_name
from users
left join friendships on users.id = friendships.user_id
left join users as users2 on friendships.friend_id = users2.id

