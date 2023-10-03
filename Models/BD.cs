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
    public static Usuario VerInfoUsuario(int IdUsuario)
    {
        Usuario InfoUsuario = new Usuario();
        string SQL = "SELECT * FROM Usuario WHERE IdUsuario = @idus";
        using (SqlConnection db = new SqlConnection(connectionString))
        {
            InfoUsuario = db.QueryFirstOrDefault(SQL, new{idus = IdUsuario});
        }
        return InfoUsuario;
    }
      public static List<Usuario> ListarUsuario(int IdUsuario)
    {
        List<Usuario> ListarUsuario = new List<Usuario>();
        string SQL = "SELECT * FROM Usuario WHERE IdUsuario = @idus";
        using (SqlConnection db = new SqlConnection(connectionString))
        {
            ListarUsuario = db.Query<Usuario>(SQL, new{idus = IdUsuario}).ToList();
        }
        return ListarUsuario;
    }


}