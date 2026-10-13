const express = require("express");
const app = express();
const port= 8080;
const path = require("path");

app.use(express.urlencoded({extended:true}));

app.set("view engine","ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname,"public")));

let posts =[
    {
        id: "1",
    username:"Ayushkumar",
    Content:"I love coding!"
},
{
    id: "2",
    username:"Ayushc",
    Content:"I love Insta!"
},
{
    id: "3",
    username:"surja",
    Content:"I love freefire!"
},
];
let nextPostId = Math.max(...posts.map((post) => Number(post.id))) + 1;

app.get("/posts/new",(req,res) =>{
    res.render("new.ejs");
});

app.get("/posts",(req,res) => {
    res.render("index.ejs",{posts});
});

app.post("/posts", (req, res) => {
    let { username, Content } = req.body;
    posts.push({ id: String(nextPostId++), username, Content });
    res.redirect("/posts");
});

app.get("/posts/:id", (req, res) => {
let { id } = req.params;
let post = posts.find((p) => id == p.id);
res.render("show.ejs", { post });
});
app.listen(port,() =>{
    console.log("listening to port: 8080");
});