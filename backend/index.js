const express=require("express");
const app=express();
const port=8080;

app.get("/register",(req,res) =>{
    res.send("standard GET request");
});

app.post("/register",(req,res) =>{
    res.send("standard POST request");
});

app.listen(port,()=>{
    console.log('listening on port$(port')
});
