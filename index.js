const express =require("express");
const app = express();

console.dir(app);

let port =8080;//8080 ports
app.listen(port,() => {
    console.log(`app listening port ${port}`);
});

app.use("/:username/:id",(req,res) =>{
    // console.log("request recieved");
    console.log(req.params);
    res.send("Standard responses");
});