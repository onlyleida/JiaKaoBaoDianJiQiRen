using System.Configuration;
using System.Reflection;
using System.Web.Security;

namespace System.Web.Configuration;

public sealed class HttpModulesSection : ConfigurationSection
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty modulesProp;

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public HttpModuleActionCollection Modules => (HttpModuleActionCollection)base[modulesProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static HttpModulesSection()
	{
		properties = new ConfigurationPropertyCollection();
		modulesProp = new ConfigurationProperty("", typeof(HttpModuleActionCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.IsDefaultCollection);
		properties.Add(modulesProp);
	}

	internal HttpModuleCollection LoadModules(HttpApplication app)
	{
		HttpModuleCollection httpModuleCollection = new HttpModuleCollection();
		foreach (HttpModuleAction module in Modules)
		{
			Type type = HttpApplication.LoadType(module.Type);
			if (!(type == null))
			{
				IHttpModule httpModule = (IHttpModule)Activator.CreateInstance(type, BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic, null, null, null);
				httpModule.Init(app);
				httpModuleCollection.AddModule(module.Name, httpModule);
			}
		}
		IHttpModule httpModule2 = new DefaultAuthenticationModule();
		httpModule2.Init(app);
		httpModuleCollection.AddModule("DefaultAuthentication", httpModule2);
		return httpModuleCollection;
	}
}
