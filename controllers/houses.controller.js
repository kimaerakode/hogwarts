import * as housesRepository from "../repositories/houses.repository.js";

// GET all Houses
export const getAllHouses = async (req, res) => {

    const allHouses = await housesRepository.getAllHouses();
    res.json(allHouses);
 
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  
};

// GET single House
export const getHouseById = async (req, res) => {

    const id = req.params.id;
    const house = await housesRepository.getHouseById(id);

    if (house) {
      res.status(200).json(house);
    } else {
      res.sendStatus(404);
    }
 
    console.log(err);
    res.status(500).json({ error: "Database error" });
  
};
