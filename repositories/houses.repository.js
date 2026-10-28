import { pool } from "../db.js";

// HOUSES ***
// GET all houses
export async function getAllHouses() {
  const result = await pool.query("SELECT * FROM hogwarts.houses");
  return result.rows;
}

// GET single house
export async function getHouseById(id) {
  const one = await pool.query("SELECT * FROM hogwarts.houses WHERE id = $1", [
    id,
  ]);

  if (one.rowCount === 0) {
    return null;
  } else {
    return one.rows[0];
  }
}


