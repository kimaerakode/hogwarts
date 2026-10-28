import express from "express";
import * as housesController from "../controllers/houses.controller.js";

const housesRouter = express.Router();

housesRouter.get("/", housesController.getAllHouses);
housesRouter.get("/:id", housesController.getHouseById);

export default housesRouter;
