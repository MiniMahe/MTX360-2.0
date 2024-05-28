using System.Data;
using System.Data.SqlClient;

namespace CAD
{
    public class CD_Image
    {
        public DataTable LoadImage()
        {
            using (SqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                SqlCommand comando = new SqlCommand("SacarImagen", conexionsql);
                SqlDataAdapter adapter1 = new SqlDataAdapter(comando);
                DataTable dataTable = new DataTable();
                adapter1.Fill(dataTable);
                return dataTable;
            }
        }
        public void Crear(string ruta, string nombre, int x, int y, int piso)
        {
            using (SqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                SqlCommand command = new SqlCommand("CrearImagen", conexionsql);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@ruta", ruta);
                command.Parameters.AddWithValue("@nombre", nombre);
                command.Parameters.AddWithValue("@x", x);
                command.Parameters.AddWithValue("@y", y);
                command.Parameters.AddWithValue("@piso", piso);

                conexionsql.Open();
                command.ExecuteNonQuery();
                command.Parameters.Clear();
                conexionsql.Close();
            }
        }
        public void Editar(int id, string nombre, string ruta, int x, int y, int piso)
        {
            using (SqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                SqlCommand command = new SqlCommand("EditarImagen", conexionsql);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@nombre", nombre);
                command.Parameters.AddWithValue("@ruta", ruta);
                command.Parameters.AddWithValue("@x", x);
                command.Parameters.AddWithValue("@y", y);
                command.Parameters.AddWithValue("@piso", piso);

                conexionsql.Open();
                command.ExecuteNonQuery();
                command.Parameters.Clear();
                conexionsql.Close();
            }
        }
        public void Eliminar(int id)
        {
            using (SqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                SqlCommand command = new SqlCommand("EliminarImagen", conexionsql);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@id", id);

                conexionsql.Open();
                command.ExecuteNonQuery();
                command.Parameters.Clear();
                conexionsql.Close();
            }
        }
    }
}
