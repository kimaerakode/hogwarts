import * as coursesRepository from "../repositories/courses.repository.js";

// GET all Courses
export const getAllCourses = async (req, res) => {

    const allCourses = await coursesRepository.getAllCourses();
    res.json(allCourses);
  
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  
};

// GET Course by id
export const getCourseById = async (req, res) => {

    const id = req.params.id;
    const course = await coursesRepository.getCourseById(id);

    if (course) {
      res.status(200).json(course);
    } else {
      res.sendStatus(404);
    }

    console.log(err);
    res.status(500).json({ error: "Database error" });
  
};
