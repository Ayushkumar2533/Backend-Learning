const express = require("express");
const app = express();
const path =require("path");//used here for setting path for the views dirrectory so that 
//it can run without the file extension

const port= 8080;

app.set("view engine","ejs");
app.set("views", path.join(__dirname,"/views"));//path defiined here 

//using EJS: EJS (Embedded JavaScript Templates) 
// is a templating engine used with Node.js + Express to generate dynamic HTML pages.

app.get("/",(req,res) =>{
    res.render("home")
});

app.get("/hello",(req,res) =>{
    res.render("hello");
});

app.listen(port,() =>{
    console.log(`listening on port ${port}`);
});
