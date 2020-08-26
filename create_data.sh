# Создаем студентов
 curl --header "Content-Type: application/json" \
   --request POST \
   --data '{"name":"Asan Usenuly"}' \
   http://127.0.0.1:8000/student/
 curl --header "Content-Type: application/json" \
   --request POST \
   --data '{"name":"Ivan Ivanov"}' \
   http://127.0.0.1:8000/student/
 curl --header "Content-Type: application/json" \
   --request POST \
   --data '{"name":"John Watson"}' \
   http://127.0.0.1:8000/student/

# Создаем предметы
 curl --header "Content-Type: application/json" \
   --request POST \
   --data '{"name":"Math"}' \
   http://127.0.0.1:8000/subject/
 curl --header "Content-Type: application/json" \
   --request POST \
   --data '{"name":"Physics"}' \
   http://127.0.0.1:8000/subject/
 curl --header "Content-Type: application/json" \
   --request POST \
   --data '{"name":"Programming"}' \
   http://127.0.0.1:8000/subject/
 curl --header "Content-Type: application/json" \
   --request POST \
   --data '{"name":"History"}' \
   http://127.0.0.1:8000/subject/


# Создаем связи студентов с предметами
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student":1, "subject_id":1, "score":55.0}' \
  http://127.0.0.1:8000/scores/
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":1, "subject_id":1, "score":95.0}' \
  http://127.0.0.1:8000/scores/
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":1, "subject_id":1, "score":85.5}' \
  http://127.0.0.1:8000/scores/
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":1, "subject_id":1, "score":71.5}' \
  http://127.0.0.1:8000/scores/
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":1, "subject_id":2, "score":61.0}' \
  http://127.0.0.1:8000/scores/
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":1, "subject_id":2, "score":31.7}' \
  http://127.0.0.1:8000/scores/
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":1, "subject_id":2, "score":87.3}' \
  http://127.0.0.1:8000/scores/

curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":2, "subject_id":3, "score":81.3}' \
  http://127.0.0.1:8000/scores/
  curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":2, "subject_id":1, "score":34.8}' \
  http://127.0.0.1:8000/scores/
  curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"student_id":2, "subject_id":3, "score":66.3}' \
  http://127.0.0.1:8000/scores/