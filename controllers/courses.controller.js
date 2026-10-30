import * as coursesRepository from "../repositories/courses.repository.js";

// GET all Courses
export const getAllCourses = async (req, res) => {
  try {
    const allCourses = await coursesRepository.getAllCourses();
    res.json(allCourses);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
};

// GET Course by id
export const getCourseById = async (req, res) => {
  try {
    const id = req.params.id;
    const course = await coursesRepository.getCourseById(id);

    if (course) {
      res.status(200).json(course);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
};
