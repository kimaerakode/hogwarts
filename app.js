import express from "express";

import housesRouter from "./routers.js/houses.router.js";
import teachersRouter from "./routers.js/teachers.router.js";
import studentsRouter from "./routers.js/students.router.js";
import coursesRouter from "./routers.js/courses.router.js";
import courseStudentsRouter from "./routers.js/course_students.router.js";

const app = express();

app.use(express.json());

const port = 3000;

app.get("/", (req, res) => {
  res.send("Hello, world!");
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

app.use("/houses/", housesRouter);

app.use("/teachers/", teachersRouter);

app.use("/students/", studentsRouter);

app.use("/courses/", coursesRouter);

app.use("/course_students/", courseStudentsRouter);
