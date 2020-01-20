using MusicApplication.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MusicApplication.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var cancionService = new CancionService();
            var model = cancionService.ObtenerCanciones();

            return View(model);
        }

        public ActionResult Top()
        {
            var cancionService = new CancionService();
            var model = cancionService.ObtenerTop();

            return View(model);
        }

        public ActionResult Festival()
        {
            return View();
        }

        public FileResult Audio(string Song)
        {
            var ruta = Server.MapPath("../Canciones/" + Song);
            return File(ruta, "audio/mp3", Song);
        }

        public FileResult Archivo()
        {
            var ruta = Server.MapPath("../img/pdf/Musica.pdf");
            return File(ruta, "application/pdf ", "TeoriaMusica.pdf");
        }

    }
}