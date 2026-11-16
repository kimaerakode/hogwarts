import * as studentsRepository from "../repositories/students.repository.js";

// GET all Students

export const getAllStudents = async (req, res) => {

    const allStudents = await studentsRepository.getAllStudents();
    res.json(allStudents);

    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  
};

// GET single student by id

export const getStudentById = async (req, res) => {

    const id = req.params.id;
    const teacher = await studentsRepository.getStudentById(id);

    if (teacher) {
      res.status(200).json(teacher);
    } else {
      res.sendStatus(404);
    }
 
    console.log(err);
    res.status(500).json({ error: "Database error" });
  
};

// CREATE new student

export const createNewStudent = async (req, res) => {

    const { name, house } = req.body;

    if (!name) {
      return res.status(400).json({ error: "name is required" });
    }

    if (!house) {
      return res.status(400).json({ error: "house is required" });
    }

    const newStudent = await studentsRepository.createNewStudent(name, house);

    res.status(201).json(newStudent);

    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  
};

export const updateStudentById = async (req, res) => {

    const id = req.params.id;
    const { name, year, house } = req.body;

    if (!name) {
      return res.status(404).json({ error: "name is required" });
    }
    if (!year) {
      return res.status(404).json({ error: "year is required" });
    }
    if (!house) {
      return res.status(404).json({ error: "house is required" });
    }
    const student = await studentsRepository.updateStudentById(
      id,
      name,
      year,
      house,
    );

    if (student) {
      res.status(200).json(student);
    } else {
      res.sendStatus(404);
    }

    console.log(err);
    res.status(500).json({ error: "Database error", code: err.code });
  
};

//  DELETE existing student by id

export const deleteStudentById = async (req, res) => {

    const id = req.params.id;
    const student = await studentsRepository.deleteStudentById(id);

    if (student) {
      res.status(200).json(student);
    } else {
      res.sendStatus(404);
    }

    console.log(err);
    res.status(500).json({ error: "Database error" });
  
};
