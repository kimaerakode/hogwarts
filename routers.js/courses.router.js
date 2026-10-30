import express from "express";
import * as coursesController from "../controllers/courses.controller.js";

const coursesRouter = express.Router();

coursesRouter.get("/", coursesController.getAllCourses);
coursesRouter.get("/:id", coursesController.getCourseById);

export default coursesRouter;
