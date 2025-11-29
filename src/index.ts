import express from "express"

const app = express() ; 
const PORT  = 8000


app.get("/health"  , (req,res)=>{
    res.json({success : true , message : "we are working great "})
})




app.listen(PORT , ()=>{

    console.log(`Server is listening on PORT ${PORT}`)
})