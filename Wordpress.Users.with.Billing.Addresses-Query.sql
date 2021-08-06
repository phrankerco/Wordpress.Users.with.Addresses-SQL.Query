SELECT
  A.ID as a_userid
, B.meta_value as b_first_name
, C.meta_value as b_last_name
, D.meta_value as b_address_1
, E.meta_value as b_address_2
, F.meta_value as b_country
, G.meta_value as b_state
, H.meta_value as b_city
, I.meta_value as b_postcode
, A.user_email as a_email
, A.user_registered as a_registered

FROM wp_users as A
LEFT JOIN wp_usermeta B 
  ON A.id = B.user_id AND B.meta_key = 'first_name'

LEFT JOIN wp_usermeta C
  ON A.id = C.user_id AND C.meta_key = 'last_name'

LEFT JOIN wp_usermeta D
  ON A.id = D.user_id AND D.meta_key = 'billing_address_1'

LEFT JOIN wp_usermeta E
  ON A.id = E.user_id AND E.meta_key = 'billing_address_2'

LEFT JOIN wp_usermeta F
  ON A.id = F.user_id AND F.meta_key = 'billing_country'

LEFT JOIN wp_usermeta G
  ON A.id = G.user_id AND G.meta_key = 'billing_state'

LEFT JOIN wp_usermeta H
  ON A.id = H.user_id AND H.meta_key = 'billing_city'

LEFT JOIN wp_usermeta I
  ON A.id = I.user_id AND I.meta_key = 'billing_postcode'

WHERE A.ID > 0
