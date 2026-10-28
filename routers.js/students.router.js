import express from "express";
import * as studentsController from "../controllers/students.controller.js";

const studentsRouter = express.Router();

studentsRouter.get("/", studentsController.getAllStudents);
studentsRouter.get("/:id", studentsController.getStudentById);
studentsRouter.post("/", studentsController.createNewStudent);
studentsRouter.delete("/:id", studentsController.deleteStudentById);

export default studentsRouter;
