namespace MVC.Models
{
    public class Imagen
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string ruta { get; set; }
		public int x { get; set; }
		public int y { get; set; }
		public int piso { get; set; }
        public List<Imagen> list = new List<Imagen>();
		public List<Arrows> flechas { get; set; }
        public Imagen()
        {
            flechas = new List<Arrows>();
        }
    }
}
