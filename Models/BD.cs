using System.Data.SqlClient;
using Dapper;
public static class BD{
    private static string connectionString = @"Server=localhost;DataBase=BD-TP9;Trusted_Connection=True;";
    
      public static void Registro(Usuario us)
    {
        string SQL = "INSERT INTO Usuario(IdUsuario, UserName, Contraseña, Nombre, Telefono, Email) VALUES(@pIdUsuario, @pUserName, @pContraseña, @pNombre, @pTelefono, @pEmail)";
        using (SqlConnection db = new SqlConnection(connectionString))
        {
           db.Execute(SQL, new{pIdUsuario = us.IdUsuario, pUserName = us.UserName, pContraseña = us.Contraseña, pNombre = us.Nombre, pTelefono = us.Telefono, pEmail = us.Email});
        }

       
    }

}