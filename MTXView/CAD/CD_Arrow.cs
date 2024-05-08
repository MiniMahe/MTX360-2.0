using CAD;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;

namespace CAD
{
    public class CD_Arrow
    {
        public DataTable LoadArrow()
        {
            using (SqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                SqlCommand comando = new SqlCommand("SacarFlecha", conexionsql);
                SqlDataAdapter adapter1 = new SqlDataAdapter(comando);
                DataTable dataTable = new DataTable();
                adapter1.Fill(dataTable);
                return dataTable;
            }
        }
        public void Crear(int idim, int nodo, string pos)
        {
            using (SqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                SqlCommand command = new SqlCommand("CrearFlecha", conexionsql);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@idimg", idim);
                command.Parameters.AddWithValue("@node", nodo);
                command.Parameters.AddWithValue("@posicion", pos);

                conexionsql.Open();
                command.ExecuteNonQuery();
                command.Parameters.Clear();
                conexionsql.Close();
            }
        }
        public void Editar(int id, int idimg, int node, string pos)
        {
            using (SqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                SqlCommand command = new SqlCommand("EditarFlecha", conexionsql);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@id", id);
                command.Parameters.AddWithValue("@idimg", idimg);
                command.Parameters.AddWithValue("@node", node);
                command.Parameters.AddWithValue("@posicion", pos);

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
                SqlCommand command = new SqlCommand("EliminarFlecha", conexionsql);
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
