using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicApplication.Models
{
    public class Cancion
    {
        public string id { get; set; }
        public string title { get; set; }
        public string artist { get; set; }
        public string musicgenre { get; set; }
        public string year { get; set; }
        public string image { get; set; }
        public string path { get; set; }
        public Cancion()
        {

        }

        public Cancion(string id, string title, string artist, string musicgenre, string year, string image, string path)
        {
            this.id = id;
            this.title = title;
            this.artist = artist;
            this.musicgenre = musicgenre;
            this.year = year;
            this.image = image;
            this.path = path;
        }
    }
}