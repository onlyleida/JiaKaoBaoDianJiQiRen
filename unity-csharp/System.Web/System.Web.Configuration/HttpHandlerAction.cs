using System.ComponentModel;
using System.Configuration;
using System.Reflection;
using System.Web.Util;

namespace System.Web.Configuration;

public sealed class HttpHandlerAction : ConfigurationElement
{
	private static ConfigurationPropertyCollection _properties;

	private static ConfigurationProperty pathProp;

	private static ConfigurationProperty typeProp;

	private static ConfigurationProperty validateProp;

	private static ConfigurationProperty verbProp;

	private object instance;

	private Type type;

	private string cached_verb;

	private string[] cached_verbs;

	[ConfigurationProperty("path", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string Path
	{
		get
		{
			return (string)base[pathProp];
		}
		set
		{
			base[pathProp] = value;
		}
	}

	[ConfigurationProperty("type", Options = ConfigurationPropertyOptions.IsRequired)]
	public string Type
	{
		get
		{
			return (string)base[typeProp];
		}
		set
		{
			base[typeProp] = value;
		}
	}

	[ConfigurationProperty("validate", DefaultValue = true)]
	public bool Validate
	{
		get
		{
			return (bool)base[validateProp];
		}
		set
		{
			base[validateProp] = value;
		}
	}

	[ConfigurationProperty("verb", Options = (ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey))]
	public string Verb
	{
		get
		{
			return (string)base[verbProp];
		}
		set
		{
			base[verbProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return _properties;
		}
	}

	internal string[] Verbs
	{
		get
		{
			if (cached_verb != Verb)
			{
				cached_verbs = SplitVerbs();
				cached_verb = Verb;
			}
			return cached_verbs;
		}
	}

	static HttpHandlerAction()
	{
		pathProp = new ConfigurationProperty("path", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		typeProp = new ConfigurationProperty("type", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired);
		validateProp = new ConfigurationProperty("validate", typeof(bool), true);
		verbProp = new ConfigurationProperty("verb", typeof(string), null, TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.IsRequired | ConfigurationPropertyOptions.IsKey);
		_properties = new ConfigurationPropertyCollection();
		_properties.Add(pathProp);
		_properties.Add(typeProp);
		_properties.Add(validateProp);
		_properties.Add(verbProp);
	}

	internal HttpHandlerAction()
	{
	}

	public HttpHandlerAction(string path, string type, string verb)
		: this(path, type, verb, validate: true)
	{
	}

	public HttpHandlerAction(string path, string type, string verb, bool validate)
	{
		Path = path;
		Type = type;
		Verb = verb;
		Validate = validate;
	}

	private string[] SplitVerbs()
	{
		if (Verb == "*")
		{
			cached_verbs = null;
		}
		else
		{
			cached_verbs = Verb.Split(',');
		}
		return cached_verbs;
	}

	internal static Type LoadType(string type_name)
	{
		Type type = null;
		type = HttpApplication.LoadType(type_name, throwOnMissing: false);
		if (type == null)
		{
			throw new HttpException($"Failed to load httpHandler type `{type_name}'");
		}
		if (typeof(IHttpHandler).IsAssignableFrom(type) || typeof(IHttpHandlerFactory).IsAssignableFrom(type))
		{
			return type;
		}
		throw new HttpException($"Type {type_name} does not implement IHttpHandler or IHttpHandlerFactory");
	}

	internal bool PathMatches(string pathToMatch)
	{
		if (string.IsNullOrEmpty(pathToMatch))
		{
			return false;
		}
		bool flag = false;
		string[] array = Path.Split(',');
		int num = pathToMatch.LastIndexOf('/');
		string text = pathToMatch;
		string text2 = null;
		if (num != -1)
		{
			pathToMatch = pathToMatch.Substring(num);
		}
		SearchPattern searchPattern = null;
		string[] array2 = array;
		foreach (string text3 in array2)
		{
			if (text3.Length == 0)
			{
				continue;
			}
			if (text3 == "*")
			{
				flag = true;
				break;
			}
			string text4 = null;
			string text5 = null;
			if (text3.Length > 0)
			{
				if (text3[0] == '*' && text3.IndexOf('*', 1) == -1)
				{
					text5 = text3.Substring(1);
				}
				if (text3.IndexOf('*') == -1 && text3[0] != '/')
				{
					HttpRequest httpRequest = HttpContext.Current?.Request;
					string text6 = ((httpRequest != null) ? httpRequest.BaseVirtualDir : HttpRuntime.AppDomainAppVirtualPath);
					if (text6 == "/")
					{
						text6 = string.Empty;
					}
					text4 = text6 + "/" + text3;
				}
			}
			if (text4 != null)
			{
				flag = text4.Length == text.Length && StrUtils.EndsWith(text, text4, ignore_case: true);
				if (flag)
				{
					break;
				}
				continue;
			}
			if (text5 != null)
			{
				flag = StrUtils.EndsWith(pathToMatch, text5, ignore_case: true);
				if (flag)
				{
					break;
				}
				continue;
			}
			string text7 = ((text3[0] != '/') ? text3 : text3.Substring(1));
			if (searchPattern == null)
			{
				searchPattern = new SearchPattern(text7, ignore: true);
			}
			else
			{
				searchPattern.SetPattern(text7, ignore: true);
			}
			if (text2 == null)
			{
				text2 = ((text[0] != '/') ? text : text.Substring(1));
			}
			if (text7.IndexOf('/') >= 0)
			{
				text2 = AdjustPath(text7, text2);
			}
			if (searchPattern.IsMatch(text2))
			{
				flag = true;
				break;
			}
		}
		return flag;
	}

	private static string AdjustPath(string pattern, string path)
	{
		int num = 0;
		for (int i = 0; i < pattern.Length; i++)
		{
			if (pattern[i] == '/')
			{
				num++;
			}
		}
		int num2;
		for (num2 = path.Length - 1; num2 >= 0; num2--)
		{
			if (path[num2] == '/')
			{
				num--;
				if (num == -1)
				{
					break;
				}
			}
		}
		if (num >= 0 || num2 == 0)
		{
			return path;
		}
		return path.Substring(num2 + 1);
	}

	internal object GetHandlerInstance()
	{
		IHttpHandler httpHandler = instance as IHttpHandler;
		if (instance == null || (httpHandler != null && !httpHandler.IsReusable))
		{
			if (type == null)
			{
				type = LoadType(Type);
			}
			instance = Activator.CreateInstance(type, BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic, null, null, null);
		}
		return instance;
	}
}
