using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MusicApplication.Startup))]
namespace MusicApplication
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
