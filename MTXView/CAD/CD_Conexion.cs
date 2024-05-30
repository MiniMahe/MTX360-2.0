﻿using System.Xml;

namespace CAD
{
    public class CD_Conexion
    {
        public static string ConexionStr()
        {
            string cadenita;
            using (XmlReader lectorxml = XmlReader.Create("XMLFile1.xml"))
            {
                lectorxml.ReadToFollowing("add");
                cadenita = lectorxml.ReadElementContentAsString();
                return cadenita;
            }
        }
    }

}
