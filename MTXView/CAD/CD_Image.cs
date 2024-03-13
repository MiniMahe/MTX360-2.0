using MySql.Data.MySqlClient;
using System.Data;

namespace CAD
{
    public class CD_Image
    {
        MySqlDataReader leer;
        public DataTable LoadImage()
        {
            using (MySqlConnection conexionsql = new(CD_Conexion.ConexionStr()))
            {
                string query1 = "SELECT * FROM `imagen`";

                MySqlCommand comando = new MySqlCommand(query1, conexionsql);
                MySqlDataAdapter adapter1 = new MySqlDataAdapter(comando);
                DataTable dataTable = new DataTable();
                adapter1.Fill(dataTable);
                return dataTable;
            }
        }


        public void Editar(int id, string nombre, string ruta)
        {
            using (MySqlConnection conexionsql = new MySqlConnection(CD_Conexion.ConexionStr()))
            {
                using (MySqlCommand command = new MySqlCommand("ModificarImagen", conexionsql))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@idmod", id).Direction = ParameterDirection.InputOutput;
                    command.Parameters.AddWithValue("@nombremod", nombre).Direction = ParameterDirection.InputOutput;
                    command.Parameters.AddWithValue("@rutamod", ruta).Direction = ParameterDirection.InputOutput;

                    conexionsql.Open();
                    command.ExecuteNonQuery();

                }
            }
        }
    }
}
