import { pool } from "../db.js";

// COURSES ***

//GET all courses

export async function getAllCourses() {
  const result = await pool.query("SELECT * FROM hogwarts.courses");
  return result.rows;
}

// GET course by id
export async function getCourseById(id) {
  const one = await pool.query("SELECT * FROM hogwarts.courses WHERE id = $1", [
    id,
  ]);

  if (one.rowCount === 0) {
    return null;
  } else {
    return one.rows[0];
  }
}
