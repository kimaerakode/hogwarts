import express from "express";
import { pool } from "./db.js";

const app = express();

app.get("/", (req, res) => {
  res.send("Hello, world!");
});
app.listen(3000, () => {
  console.log("Server started on port 3000");
});

// HOUSES ***

// Houses R all - GET all houses

app.get("/houses", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM hogwarts.houses");
    console.log(result);

    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
});

// Housees R id - Get single house

app.get("/houses/:id", async (req, res) => {
  try {
    const one = await pool.query(
      "SELECT * FROM hogwarts.houses WHERE id = $1",
      [req.params.id],
    );

    if (one.rowCount === 0) return res.sendStatus(404);

    res.status(200).json(one.rows[0]);
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
});

// TEACHERS ***

// teachers R all - GET all teachers

app.get("/teachers", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM hogwarts.teachers");
    console.log(result);

    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
});

// teachers R id - GET a single teacher

app.get("/teachers/:id", async (req, res) => {
  try {
    const one = await pool.query(
      "SELECT * FROM hogwarts.teachers WHERE id = $1",
      [req.params.id],
    );

    if (one.rowCount === 0) return res.sendStatus(404);

    res.status(200).json(one.rows[0]);
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
});

// Teacher C new

// Update existing teacher - PUT

app.put("/teachers/:id", async (req, res) => {
  try {
    const one = await pool.query(
      "SELECT * FROM hogwarts.teachers WHERE id = $1",
      [req.params.id],
    );

    if (one.rowCount === 0) return res.sendStatus(404);

    res.status(200).json(one.rows[0]);
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
});

//Teacer D existing

// STUDENTS ***

// students R all - GET all students

app.get("/students", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM hogwarts.students");
    console.log(result);

    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
});

// students R id - GET a single student

app.get("/students/:id", async (req, res) => {
  try {
    const one = await pool.query(
      "SELECT * FROM hogwarts.students WHERE id = $1",
      [req.params.id],
    );

    if (one.rowCount === 0) return res.sendStatus(404);

    res.status(200).json(one.rows[0]);
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
});

// Students C new

app.post("/students", async (req, res) => {
  try {
    const { name, house } = req.body;
    if (!name) {
      return res.status(400).json({ error: "name is required" });
    }
    const result = await pool.query(
      "INSERT INTO hogwarts.students (name, house) VALUES ($1, $2) RETURNING *",
      [name, house],
    );

    res.status(201).json(result.rows[0]);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
});

// Students D existing
