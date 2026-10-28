import { pool } from "../db.js";

// TEACHERS ***

// GET all teachers
export async function getAllTeachers() {
  const result = await pool.query("SELECT * FROM hogwarts.teachers");
  return result.rows;
}

// GET single teacher
export async function getTeacherById(id) {
  const one = await pool.query(
    "SELECT * FROM hogwarts.teachers WHERE id = $1",
    [id],
  );

  if (one.rowCount === 0) {
    return null;
  } else {
    return one.rows[0];
  }
}
