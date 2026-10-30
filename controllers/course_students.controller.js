import * as courseStudentsRepository from "../repositories/course_students.repository.js";

// GET all Course Students
export const getAllCourseStudents = async (req, res) => {
  try {
    const allCourseStudents =
      await courseStudentsRepository.getAllCourseStudents();
    res.json(allCourseStudents);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
};
