import express from "express";
import * as studentsController from "../controllers/students.controller.js";

const studentsRouter = express.Router();

studentsRouter.post("/", studentsController.createNewStudent);
studentsRouter.get("/", studentsController.getAllStudents);
studentsRouter.get("/:id", studentsController.getStudentById);
studentsRouter.put("/:id", studentsController.updateStudentById);
studentsRouter.delete("/:id", studentsController.deleteStudentById);

export default studentsRouter;
