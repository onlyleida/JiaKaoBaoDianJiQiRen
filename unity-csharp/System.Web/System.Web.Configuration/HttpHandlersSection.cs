using System.Configuration;

namespace System.Web.Configuration;

public sealed class HttpHandlersSection : ConfigurationSection
{
	private static ConfigurationPropertyCollection properties;

	private static ConfigurationProperty handlersProp;

	[ConfigurationProperty("", Options = ConfigurationPropertyOptions.IsDefaultCollection)]
	public HttpHandlerActionCollection Handlers => (HttpHandlerActionCollection)base[handlersProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static HttpHandlersSection()
	{
		handlersProp = new ConfigurationProperty("", typeof(HttpHandlerActionCollection), null, null, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.IsDefaultCollection);
		properties = new ConfigurationPropertyCollection();
		properties.Add(handlersProp);
	}

	internal object LocateHandler(string verb, string filepath, out bool allowCache)
	{
		int count = Handlers.Count;
		for (int i = 0; i < count; i++)
		{
			HttpHandlerAction httpHandlerAction = Handlers[i];
			string[] verbs = httpHandlerAction.Verbs;
			if (verbs == null)
			{
				if (httpHandlerAction.PathMatches(filepath))
				{
					allowCache = httpHandlerAction.Path != "*";
					return httpHandlerAction.GetHandlerInstance();
				}
				continue;
			}
			int num = verbs.Length;
			while (num > 0)
			{
				num--;
				if (!(verbs[num] != verb) && httpHandlerAction.PathMatches(filepath))
				{
					allowCache = httpHandlerAction.Path != "*";
					return httpHandlerAction.GetHandlerInstance();
				}
			}
		}
		allowCache = false;
		return null;
	}
}
