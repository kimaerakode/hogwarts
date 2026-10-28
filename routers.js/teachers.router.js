import express from "express";
import * as teachersController from "../controllers/teachers.controller.js";

const teachersRouter = express.Router();

teachersRouter.get("", teachersController.getAllTeachers);
teachersRouter.get("/:id", teachersController.getTeacherById);
teachersRouter.post("", teachersController.createNewTeacher);
teachersRouter.put("/:id", teachersController.updTeacherById);
teachersRouter.delete("/:id", teachersController.delTeacherById);

export default teachersRouter;
