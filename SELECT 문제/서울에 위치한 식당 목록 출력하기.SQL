select
    REST_INFO.REST_ID,
    REST_INFO.REST_NAME,
    REST_INFO.FOOD_TYPE,
    REST_INFO.FAVORITES,
    REST_INFO.ADDRESS,
    round(AVG(REST_REVIEW.REVIEW_SCORE),2) as SCORE
from REST_INFO
         join REST_REVIEW
              on REST_INFO.REST_ID=REST_REVIEW.REST_ID

group by REST_ID
having ADDRESS like '서울%'
order by SCORE desc, FAVORITES desc