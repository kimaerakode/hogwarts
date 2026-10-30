import express from "express";
import * as courseStudentsController from "../controllers/course_students.controller.js";

const courseStudentsRouter = express.Router();

courseStudentsRouter.get("/", courseStudentsController.getAllCourseStudents);

export default courseStudentsRouter;
