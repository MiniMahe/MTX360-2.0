using CN;

namespace MVC.Models
{
    public class ListaClases
    {
        public List<CN_2D> Salas { get; set; }

        public ListaClases()
        {
            Salas = new List<CN_2D>();
        }

        public void RellenarLista(int idpiso = 0)
        {
            CN_2D cT_CD_2D = new CN_2D();
            Salas = cT_CD_2D.ConvertirDataTableALista(idpiso);
        }
        public int id { get; set; }
        public string name { get; set; }
        public string url { get; set; }
    }
}
