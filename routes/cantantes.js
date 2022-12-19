const{Router} =require("express")
const {getNombre, addCan, getCanByID, deleteCanByID} =require("../controllers/Cantantes")
const router = Router()

//http:localhost:4000/api/v1/users/

//GET 
router.get("/", getNombre)

//POST 
router.post("/", addCan)

//GET
router.get("/id/:id", getCanByID)

//DELETE
router.delete("/id/:id", deleteCanByID)

module.exports = router