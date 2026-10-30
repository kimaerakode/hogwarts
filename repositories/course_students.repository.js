import { pool } from "../db.js";

// COURSE STUDENTS ***

//GET all course students

export async function getAllCourseStudents() {
  const result = await pool.query("SELECT * FROM hogwarts.course_students");
  return result.rows;
}
