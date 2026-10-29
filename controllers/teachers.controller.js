import * as teachersRepository from "../repositories/teachers.repository.js";

// GET all Teachers
export const getAllTeachers = async (req, res) => {
  try {
    const allTeachers = await teachersRepository.getAllTeachers();
    res.json(allTeachers);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
};

// GET Teacher by id
export const getTeacherById = async (req, res) => {
  try {
    const id = req.params.id;
    const teacher = await teachersRepository.getTeacherById(id);

    if (teacher) {
      res.status(200).json(teacher);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
};

// CREATE new teacher

export const createNewTeacher = async (req, res) => {
  try {
    const { name, house } = req.body;

    if (!name) {
      return res.status(400).json({ error: "name is required" });
    }

    if (!house) {
      return res.status(400).json({ error: "house is required" });
    }

    const newTeacher = await teachersRepository.createNewTeacher(name, house);

    res.status(201).json(newTeacher);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
};

// UPDATE existing Teacher

export const updTeacherById = async (req, res) => {
  try {
    const id = req.params.id;
    const teacher = await teachersRepository.updTeacherById(id);

    if (teacher) {
      res.status(200).json(teacher);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
};

export const updateTeacherById = async (req, res) => {
  try {
    const id = req.params.id;
    const { name, house } = req.body;

    if (!name) {
      return res.status(404).json({ error: "name is required" });
    }
    if (!house) {
      return res.status(404).json({ error: "house is required" });
    }
    const teacher = await teachersRepository.updateTeacherById(id, name, house);

    if (teacher) {
      res.status(200).json(teacher);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
};

// DELETE existing teacher

export const deleteTeacherById = async (req, res) => {
  try {
    const id = req.params.id;
    const teacher = await teachersRepository.deleteTeacherById(id);

    if (teacher) {
      res.status(200).json(teacher);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
};
