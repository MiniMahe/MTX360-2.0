using System.Data;
using System.Data.SqlClient;

namespace CAD
{
    public class CD_User
    {
        SqlDataReader leer;

        public string Verify(string nombre, string password)
        {
            try
            {
                using (SqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
                {
                    using (SqlCommand comando = new SqlCommand("Verificar", conexionsql))
                    {
                        comando.CommandType = CommandType.StoredProcedure;
                        comando.Parameters.Add("name", SqlDbType.VarChar).Value = nombre;
                        comando.Parameters.Add("pass", SqlDbType.VarChar).Value = password;
                        conexionsql.Open();

                        leer = comando.ExecuteReader();

                        if (leer.Read())
                        {
                            conexionsql.Close();
                            return nombre;
                        }
                        else
                        {
                            conexionsql.Close();
                            return null;
                        }
                    }
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
