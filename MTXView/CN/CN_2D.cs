using CAD;
using System.Data;

namespace CN
{
    public class CN_2D
    {
        public int id { get; set; }
        public string aula { get; set; }
        public string imagen { get; set; }
        public int piso { get; set; }
        public string cordenadas { get; set; }
        public string url { get; set; }
        public List<CN_2D> ConvertirDataTableALista(int pisoid = 0)
        {
            CD_2D CD_2D = new CD_2D();
            DataTable dataTable;
            dataTable = CD_2D.ObtenerDatatable();

            List<CN_2D> lista = new List<CN_2D>();

            foreach (DataRow row in dataTable.Rows)
            {
                CN_2D modelo = new CN_2D();
                modelo.id = Convert.ToInt32(row["id"]);
                modelo.aula = row["nombre"].ToString();
                modelo.imagen = row["imagen"].ToString();
                modelo.piso = Convert.ToInt32(row["piso"]);
                modelo.cordenadas = row["coordenadas"].ToString();
                modelo.url = row["url"].ToString();

                if (pisoid == modelo.piso)
                {
                    lista.Add(modelo);
                }
            }

            return lista;
        }
    }


}
