using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(finaldotnetproject.Startup))]
namespace finaldotnetproject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
