const{reques, response, request} = require("express")
const pool = require("../db/connection")
const getNombre = async (req = reques, res = response) => {
    let conn
    try{
        conn = await pool.getConnection() //realizamos la conexion
        
        //generamos la consulta
        const Nombre = await conn.query("SELECT * FROM Cantantes", (error) => {if (error) throw error})

        if(!Nombre){ // En caso de no haber registros lo informamos
            res.status(404).json({msg: "No existen cantantes registrados"})
            return
        }
        res.json({Nombre})
    }catch (error){

        console.log(error)
        res.status(500).json({msg: error}) //informamos del error
    } finally{
        if (conn) conn.end() //termina la conexion

    }
}

const addCan = async (req = request, res = response) =>{
    const {Nombre, Fecha_Nacimiento, Genero, Debut, Activo} = req.params

    if(!Nombre || !Fecha_Nacimiento || !Genero || !Debut || !Activo){
        res.status(400).json({msg: "Faltan Datos"})
        return
    }


    let conn
    try{
        conn = await pool.getConnection() //realizamos la conexion
        
        //generamos la consulta
        const [CanExist] = await conn.query(`SELECT Nombre FROM Cantantes WHERE Nombre = '?'`, [Nombre])

        if(CanExist){ // En caso de no haber registros lo informamos
            res.status(404).json({msg: `El cantante '${Nombre}' ya se encuentra registrado`})
            return
        }

                 //generamos la consulta
                    const result = await conn.query(`INSERT INTO Cantantes
                    (Nombre,
                    Fecha_Nacimiento,
                    Genero,
                    Debut,
                    Activo) VALUES ('${Nombre}', '${Fecha_Nacimiento}', '${Genero}', '${Debut}', '${Activo}')`,
                         (error) => {if(error) throw error})

                    if (result.affectedRows === 0) {//En caso de no haber registros lo informamos
                    res.status(400).json({msg: `No se pudo agregar al cantante`})
                    }
                    res.json({msg: `Se agrego satisfactoriamente el cantante`})//se manda la lista de usuarios

    }catch (error){
        console.log(error)
        res.status(500).json({msg: error}) //informamos del error
    } finally{
        if (conn) conn.end() //termina la conexion

    }


}

const getCanByID = async (req = request, res = response) =>{
    const {id} = req.params
    let conn
    try{
        conn = await pool.getConnection() //realizamos la conexion
        
        //generamos la consulta
        const [Cantantes] = await conn.query(`SELECT *FROM Cantantes WHERE ID = ?`, [id], (error) => {if (error) throw error})
        console.log(Cantantes)

        if(!Cantantes){ // En caso de no haber registros lo informamos
            res.status(404).json({msg: `No existen cantantes registrados con el ID ${id}`})
            return
        }
        res.json({Cantantes})
    }catch (error){

        console.log(error)
        res.status(500).json({msg: error}) //informamos del error
    } finally{
        if (conn) conn.end() //termina la conexion

    }


}

const deleteCanByID = async (req = request, res = response) =>{
    const {id} = req.params
    let conn
    try{
        conn = await pool.getConnection() //realizamos la conexion
        
        //generamos la consulta
        const result = await conn.query(`UPDATE Cantantes SET Activo = 'N' WHERE ID = ${id}`, (error) => {if (error) throw error})
        console.log(result.affectedRows)

        if(result.affectedRows === 0){ // En caso de no haber registros lo informamos
            res.status(404).json({msg: `NO existen Cantantes registrados con el ID ${id}`})
            return
        }

        res.json({msg:`Se elemino el cantante con el ID ${id}`})
    }catch (error){

        console.log(error)
        res.status(500).json({msg: error}) //informamos del error
    } finally{
        if (conn) conn.end() //termina la conexion

    }


}

module.exports = {getNombre, addCan, getCanByID, deleteCanByID}