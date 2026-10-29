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

// CREATE new teacher
export async function createNewTeacher(name, house) {
  const result = await pool.query(
    "INSERT INTO hogwarts.teachers (name, house) VALUES ($1, $2) RETURNING *",
    [name, house],
  );
  return result.rows[0];
}

// UPDATE existing teacher

export async function updateTeacherById(id, name, house) {
  const result = await pool.query(
    "UPDATE hogwarts.teachers SET name = $1, house = $2 WHERE id = $3 RETURNING *",
    [name, house, id],
  );
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

// DELETE existing teacher

export async function deleteTeacherById(id) {
  const one = await pool.query(
    "DELETE FROM hogwarts.teachers WHERE id = $1 RETURNING *",
    [id],
  );

  if (one.rowCount === 0) {
    return null;
  } else {
    return one.rows[0];
  }
}
