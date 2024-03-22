using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;


namespace CAD
{
    public class DT_CAD_2D
    {


        public DataTable ObtenerDatatable()
        {
            using (SqlConnection conexionsql = new SqlConnection(CD_Conexion.ConexionStr()))
            {
                string query1 = "SELECT * FROM coordenadas";

                SqlCommand command1 = new SqlCommand(query1, conexionsql);
                SqlDataAdapter adapter1 = new SqlDataAdapter(command1);

                DataTable table1 = new DataTable("cordenadas");
                adapter1.Fill(table1);

                return table1;
            }
        }

    }
}
