import * as courseStudentsRepository from "../repositories/course_students.repository.js";

// GET all Course Students
export const getAllCourseStudents = async (req, res) => {

    const allCourseStudents =
      await courseStudentsRepository.getAllCourseStudents();
    res.json(allCourseStudents);

    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  
};
