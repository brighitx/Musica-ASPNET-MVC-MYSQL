using MusicApplication.BBDD;
using MusicApplication.Models;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace MusicApplication.Services
{
    public class CancionService
    {
        AccesoBD acceso;
        public CancionService() 
        {
            acceso = new AccesoBD();
        }
        public List<Cancion> ObtenerCanciones()
        {
            List<Cancion> opcion = new List<Cancion>();
            string sql = "SELECT * FROM songlist";
            MySqlDataReader dr = acceso.sendQuery(sql);
            while (dr.Read())
            {
                opcion.Add(DarCancion(dr));
            }
            return opcion;
        }

        public List<Cancion> ObtenerTop()
        {
            List<Cancion> opcion = new List<Cancion>();
            string sql = "SELECT * FROM songlist Where id<11";
            MySqlDataReader dr = acceso.sendQuery(sql);
            while (dr.Read())
            {
                opcion.Add(DarCancion(dr));
            }
            return opcion;
        }

        private static Cancion DarCancion(IDataReader reader)
        {
            Cancion top = new Cancion();
            top.id = Convert.ToString(reader["id"]);
            top.title = Convert.ToString(reader["title"]);
            top.artist = Convert.ToString(reader["artist"]);
            top.musicgenre = Convert.ToString(reader["musicgenre"]);
            top.year = Convert.ToString(reader["year"]);
            top.image = Convert.ToString(reader["image"]);
            top.path = Convert.ToString(reader["path"]);

            return top;
        }
    }
}
