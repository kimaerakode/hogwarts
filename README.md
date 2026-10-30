# Hogwarts course management (EK webdev: backend + DB)

## Endpoints

### Houses

| Method | Route       | Description     |
| ------ | ----------- | --------------- |
| GET    | /houses     | Get all Houses  |
| GET    | /houses/:id | Get House by id |

### Students

| Method | Route         | Description          |
| ------ | ------------- | -------------------- |
| POST   | /students     | Create new Student   |
| GET    | /students     | Get all Students     |
| GET    | /students/:id | Get Student by id    |
| PUT    | /students/:id | Update Student by id |
| DELETE | /students/:id | Delete Student by id |

### Teachers

| Method | Route         | Description          |
| ------ | ------------- | -------------------- |
| POST   | /teachers     | Create new Teacher   |
| GET    | /students     | Get all Students     |
| GET    | /teachers/:id | Get Teacher by id    |
| PUT    | /teachers/:id | Update Teacher by id |
| DELETE | /teachers/:id  | Delete Teacher by id |

### Courses

| Method | Route    | Description     |
| ------ | -------- | --------------- |
| GET    | /courses | Get all Courses |

### Course Students

<strong>Note:</strong> Dette data er ikke specielt brugbart (endnu). Jeg ville gerne prøve at få Course Students til at returnere Course-objekter med arrays af Student-objekter, men kunne ikke gennemskue hvordan...

| Method | Route            | Description              |
| ------ | ---------------- | ------------------------ |
| GET    | /course_students | Get all Courses Students |
