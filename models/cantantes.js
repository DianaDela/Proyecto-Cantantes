const modelsUsuarios = {
    queryGetUsers: "SELECT * FROM Cantantes",
    queryGetUsersByID:`SELECT * FROM Usuarios WHERE ID = ?`,
    queryDeleteUsersByID: `UPDATE Usuarios SET Activo = 'N' WHERE ID = ?`,
    queryUserExists: `SELECT Usuario FROM Usuarios WHERE Usuario = '?'`,
    queryAddUser:
    `INSERT INTO Usuarios(
                            Nombre,
                            Fecha_Nacimiento, 
                            Genero, 
                            Debut,
                            Activo)
                        VALUES (
                            ?,?,?,?,?,?,?,?)`,
    querySignIn: `SELECT Contrasena, Activo FROM Usuarios WHERE Usuario = ?`
                        }
    module.exports = modelsCantantes