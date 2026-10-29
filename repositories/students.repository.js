import { pool } from "../db.js";

// STUDENTS ***

// GET all students
export async function getAllStudents() {
  const result = await pool.query("SELECT * FROM hogwarts.students");
  return result.rows;
}

// GET single student
export async function getStudentById(id) {
  const one = await pool.query(
    "SELECT * FROM hogwarts.students WHERE id = $1",
    [id],
  );

  if (one.rowCount === 0) {
    return null;
  } else {
    return one.rows[0];
  }
}

// CREATE new Student
export async function createNewStudent(name, house) {
  const result = await pool.query(
    "INSERT INTO hogwarts.students (name, house) VALUES ($1, $2) RETURNING *",
    [name, house],
  );
  return result.rows[0];
}

// UPDATE existing student
export async function updateStudentById(id, name, year, house) {
  const result = await pool.query(
    "UPDATE hogwarts.students SET name = $1, year = $2, house = $3 WHERE id = $4 RETURNING *",
    [name, year, house, id],
  );
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

// DELETE existing Student

export async function deleteStudentById(id) {
  const one = await pool.query(
    "DELETE FROM hogwarts.students WHERE id = $1 RETURNING *",
    [id],
  );

  if (one.rowCount === 0) {
    return null;
  } else {
    return one.rows[0];
  }
}
