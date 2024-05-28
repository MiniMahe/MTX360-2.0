using System.Data;
using System.Data.SqlClient;


namespace CAD
{
    public class CD_2D
    {
        public DataTable ObtenerDatatable()
        {
            using (SqlConnection conexionsql = new SqlConnection(CD_Conexion.ConexionStr()))
            {
                SqlCommand command1 = new SqlCommand("SacarCoord", conexionsql);
                SqlDataAdapter adapter1 = new SqlDataAdapter(command1);

                DataTable table1 = new DataTable("cordenadas");
                adapter1.Fill(table1);

                return table1;
            }
        }

    }
}
