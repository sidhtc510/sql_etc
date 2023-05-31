// import express from "express";
// const app = express();
const express = require("express"); // https://expressjs.com/    ||    https://www.npmjs.com/package/express
const knex = require("knex"); // https://knexjs.org/guide/query-builder.html
const cors = require("cors");
const app = express();

app.use(cors());

const connector = knex({
  client: "mysql",
  connection: {
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "library",
  },
});

app.get("/api/books", (req, res, next) => {
  // const name = req.query.name;
  const { name } = req.query;

  const request = connector("books")
    .select("*"); 
    if(!!name) {
        request.where("name", name)
    }
    request.then((books) => {
      res.send(books);
    });

  // ------------------------------------------------------------------

  // connector.raw('select * from books').then(([books]) => {res.send(books)});
});

app.listen(3001, () => {
  console.log("server is running");
});

// node server.js
// http://localhost:3001/api/books
