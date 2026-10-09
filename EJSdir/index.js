const express = require("express");
const app = express();
const path = require("path");

const port = 8080;

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "/views"));
//serve static files in ejs..
app.use(express.static("public"));

app.get("/hello", (req, res) => {
    res.render("hello");
});

app.get("/rolldice", (req, res) => {
    let dicevalue = Math.floor(Math.random() * 6) + 1;
    res.render("rolldice", { num: dicevalue });
});

app.get("/instagram/:username", (req, res) => {
    let username = req.params.username;

    let profile = data[username];

    if (!profile) {
        return res.render("error.ejs", {
            err: "User not found!"
        });
    }

    res.render("instagram.ejs", {
        data: profile
    });
});

app.listen(port, () => {
    console.log(`listening on port ${port}`);
});

