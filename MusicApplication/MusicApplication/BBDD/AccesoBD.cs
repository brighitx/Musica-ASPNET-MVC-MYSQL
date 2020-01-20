using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace MusicApplication.BBDD
{
    public class AccesoBD
    {
        private String servidor;
        private String bdNombre;
        private String usuario;
        private String password;
        private MySqlConnection conexion;
        private MySqlCommand comando;
        private MySqlTransaction transaccion;

        //Carga los datos de la conexion
        public AccesoBD()
        {
            try
            {
                servidor = ConfigurationManager.AppSettings["servidor"].ToString();
                bdNombre = ConfigurationManager.AppSettings["baseDatos"].ToString();
                usuario = ConfigurationManager.AppSettings["usuario"].ToString();
                password = ConfigurationManager.AppSettings["password"].ToString();

            }
            catch (Exception e)
            {
                throw;
            }
        }

        protected void abrirConexion()
        {
            try
            {
                conexion = new MySqlConnection();
                conexion.ConnectionString = "Server=" + servidor + "; Database=" + bdNombre + "; Uid=" + usuario + "; Pwd=" + password + ";";
                conexion.Open();
            }
            catch (Exception e)
            {
                throw;
            }

        }
        protected void cerrarConexion()
        {
            try
            {
                conexion.Close();
            }
            catch (Exception e)
            {
                throw;
            }
        }

        protected void iniciarTransaccion()
        {
            try
            {
                transaccion = this.conexion.BeginTransaction();
            }
            catch (Exception e)
            {
                throw;
            }
        }

        protected void aceptarTransaccion()
        {
            try
            {
                transaccion.Commit();
            }
            catch (Exception e)
            {
                throw;
            }
        }

        protected void cancelarTransaccion()
        {
            try
            {
                transaccion.Rollback();
            }
            catch (Exception e)
            {
                throw;
            }
        }


        public MySqlDataReader sendQuery(String sql)
        {
            try
            {
                abrirConexion();
                comando = new MySqlCommand(sql, conexion);
                MySqlDataReader dr = comando.ExecuteReader();
                return dr;
            }
            catch (Exception e)
            {
                throw;
            }

        }

    }
}
