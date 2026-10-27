import { pool } from "../db.js";

export async function getAllHouses() {
  const result = await pool.query("SELECT * FROM houses");
  return result.rows;
}

export async function getHouseById(id) {
  const one = await pool.query("SELECT * FROM houses WHERE. id = $1", [
    req.params.id,
  ]);
}
