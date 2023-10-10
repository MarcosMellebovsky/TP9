using System.Data.SqlClient;
using Dapper;
public static class BD{
    private static string connectionString = @"Server=localhost;DataBase=BD-TP9;Trusted_Connection=True;";
    
      public static void Registro(Usuario us)
    {
        string SQL = "INSERT INTO Usuario(UserName, Contraseña, Nombre, Telefono, Email) VALUES( @pUserName, @pContraseña, @pNombre, @pTelefono, @pEmail)";
        using (SqlConnection db = new SqlConnection(connectionString))
        {
           db.Execute(SQL, new{ pUserName = us.UserName, pContraseña = us.Contraseña, pNombre = us.Nombre, pTelefono = us.Telefono, pEmail = us.Email});
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
    public static Usuario VerificarCredenciales(string UserName, string Contraseña)
{
    string SQL = "SELECT * FROM Usuario WHERE UserName = @userName";
    using (SqlConnection db = new SqlConnection(connectionString))
    {
        Usuario usuario = db.QueryFirstOrDefault<Usuario>(SQL, new { userName = UserName });

        if (usuario != null && usuario.Contraseña == Contraseña)
        {
            return usuario; 
        }
        else
        {
            return null;
        }
    }
}
public static Usuario ObtenerContraseñaPorUserName(string UserName)
{
    string SQL = "SELECT * FROM Usuario WHERE UserName = @username";
    using (SqlConnection db = new SqlConnection(connectionString))
    {
        return db.QueryFirstOrDefault<Usuario>(SQL, new { username = UserName });
    }
}



}