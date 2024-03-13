using CAD;
using MySql.Data.MySqlClient;
using System.Data;

namespace CAD
{
    public class CD_Arrow
    {
        MySqlDataReader leer;
        public DataTable LoadArrow()
        {
            using (MySqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                string query1 = "SELECT * FROM `arrow`";

                MySqlCommand comando = new MySqlCommand(query1, conexionsql);
                MySqlDataAdapter adapter1 = new MySqlDataAdapter(comando);
                DataTable dataTable = new DataTable();
                adapter1.Fill(dataTable);
                return dataTable;
            }
        }
        public void Crear(int idim, int nodo, string pos)
        {
            using (MySqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                using (MySqlCommand command = new MySqlCommand("CrearFlecha", conexionsql))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@idimg", idim).Direction = ParameterDirection.InputOutput;
                    command.Parameters.AddWithValue("@node", nodo).Direction = ParameterDirection.InputOutput;
                    command.Parameters.AddWithValue("@posicion", pos).Direction = ParameterDirection.InputOutput;

                    conexionsql.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
        public void Editar(int id, int idimg, int node, string pos)
        {
            using (MySqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                using (MySqlCommand command = new MySqlCommand("EditarFlecha", conexionsql))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@id", id).Direction = ParameterDirection.InputOutput;
                    command.Parameters.AddWithValue("@idimg", idimg).Direction = ParameterDirection.InputOutput;
                    command.Parameters.AddWithValue("@node", node).Direction = ParameterDirection.InputOutput;
                    command.Parameters.AddWithValue("@posicion", pos).Direction = ParameterDirection.InputOutput;

                    conexionsql.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
        public void Eliminar(int id)
        {
            using (MySqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                using (MySqlCommand command = new MySqlCommand("EliminarFlecha", conexionsql))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@id", id).Direction = ParameterDirection.InputOutput;

                    conexionsql.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}
