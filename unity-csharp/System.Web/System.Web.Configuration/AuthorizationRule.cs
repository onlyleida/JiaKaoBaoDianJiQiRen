using System.Collections.Specialized;
using System.ComponentModel;
using System.Configuration;
using System.Security.Principal;
using System.Web.Util;
using System.Xml;

namespace System.Web.Configuration;

public sealed class AuthorizationRule : ConfigurationElement
{
	private static ConfigurationProperty rolesProp;

	private static ConfigurationProperty usersProp;

	private static ConfigurationProperty verbsProp;

	private static ConfigurationPropertyCollection properties;

	private AuthorizationRuleAction action;

	private ConfigurationSaveMode saveMode = ConfigurationSaveMode.Full;

	public AuthorizationRuleAction Action
	{
		get
		{
			return action;
		}
		set
		{
			action = value;
		}
	}

	[ConfigurationProperty("roles")]
	[TypeConverter(typeof(CommaDelimitedStringCollectionConverter))]
	public StringCollection Roles => (StringCollection)base[rolesProp];

	[ConfigurationProperty("users")]
	[TypeConverter(typeof(CommaDelimitedStringCollectionConverter))]
	public StringCollection Users => (StringCollection)base[usersProp];

	[ConfigurationProperty("verbs")]
	[TypeConverter(typeof(CommaDelimitedStringCollectionConverter))]
	public StringCollection Verbs => (StringCollection)base[verbsProp];

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static AuthorizationRule()
	{
		rolesProp = new ConfigurationProperty("roles", typeof(StringCollection), null, PropertyHelper.CommaDelimitedStringCollectionConverter, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		usersProp = new ConfigurationProperty("users", typeof(StringCollection), null, PropertyHelper.CommaDelimitedStringCollectionConverter, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		verbsProp = new ConfigurationProperty("verbs", typeof(StringCollection), null, PropertyHelper.CommaDelimitedStringCollectionConverter, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(rolesProp);
		properties.Add(usersProp);
		properties.Add(verbsProp);
	}

	public AuthorizationRule(AuthorizationRuleAction action)
	{
		this.action = action;
		base[rolesProp] = new CommaDelimitedStringCollection();
		base[usersProp] = new CommaDelimitedStringCollection();
		base[verbsProp] = new CommaDelimitedStringCollection();
	}

	public override bool Equals(object obj)
	{
		if (!(obj is AuthorizationRule authorizationRule))
		{
			return false;
		}
		if (action != authorizationRule.Action)
		{
			return false;
		}
		if (Roles.Count != authorizationRule.Roles.Count || Users.Count != authorizationRule.Users.Count || Verbs.Count != authorizationRule.Verbs.Count)
		{
			return false;
		}
		for (int i = 0; i < Roles.Count; i++)
		{
			if (Roles[i] != authorizationRule.Roles[i])
			{
				return false;
			}
		}
		for (int i = 0; i < Users.Count; i++)
		{
			if (Users[i] != authorizationRule.Users[i])
			{
				return false;
			}
		}
		for (int i = 0; i < Verbs.Count; i++)
		{
			if (Verbs[i] != authorizationRule.Verbs[i])
			{
				return false;
			}
		}
		return true;
	}

	public override int GetHashCode()
	{
		int num = (int)action;
		for (int i = 0; i < Roles.Count; i++)
		{
			num += Roles[i].GetHashCode();
		}
		for (int i = 0; i < Users.Count; i++)
		{
			num += Users[i].GetHashCode();
		}
		for (int i = 0; i < Verbs.Count; i++)
		{
			num += Verbs[i].GetHashCode();
		}
		return num;
	}

	[MonoTODO("Not implemented")]
	protected internal override bool IsModified()
	{
		if (((CommaDelimitedStringCollection)Roles).IsModified || ((CommaDelimitedStringCollection)Users).IsModified || ((CommaDelimitedStringCollection)Verbs).IsModified)
		{
			return true;
		}
		return false;
	}

	private void VerifyData()
	{
		if (Roles.Count == 0 && Users.Count == 0)
		{
			throw new ConfigurationErrorsException("You must supply either a list of users or roles when creating an AuthorizationRule");
		}
	}

	protected override void PostDeserialize()
	{
		base.PostDeserialize();
		VerifyData();
	}

	protected override void PreSerialize(XmlWriter writer)
	{
		base.PreSerialize(writer);
		VerifyData();
	}

	protected internal override void Reset(ConfigurationElement parentElement)
	{
		AuthorizationRule authorizationRule = (AuthorizationRule)parentElement;
		Action = authorizationRule.Action;
		base.Reset(parentElement);
	}

	protected internal override void ResetModified()
	{
		base.ResetModified();
	}

	protected internal override bool SerializeElement(XmlWriter writer, bool serializeCollectionKey)
	{
		if (saveMode != ConfigurationSaveMode.Full && !IsModified())
		{
			return true;
		}
		PreSerialize(writer);
		writer.WriteStartElement((action == AuthorizationRuleAction.Allow) ? "allow" : "deny");
		if (Roles.Count > 0)
		{
			writer.WriteAttributeString("roles", Roles.ToString());
		}
		if (Users.Count > 0)
		{
			writer.WriteAttributeString("users", Users.ToString());
		}
		if (Verbs.Count > 0)
		{
			writer.WriteAttributeString("verbs", Verbs.ToString());
		}
		writer.WriteEndElement();
		return true;
	}

	protected internal override void SetReadOnly()
	{
		base.SetReadOnly();
	}

	protected internal override void Unmerge(ConfigurationElement sourceElement, ConfigurationElement parentElement, ConfigurationSaveMode saveMode)
	{
		base.Unmerge(sourceElement, parentElement, saveMode);
		this.saveMode = saveMode;
		if (sourceElement is AuthorizationRule authorizationRule)
		{
			action = authorizationRule.Action;
		}
	}

	internal bool CheckVerb(string verb)
	{
		StringEnumerator enumerator = Verbs.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				if (string.Compare(enumerator.Current, verb, ignoreCase: true, Helpers.InvariantCulture) == 0)
				{
					return true;
				}
			}
		}
		finally
		{
			if (enumerator is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		return false;
	}

	internal bool CheckUser(string user)
	{
		StringEnumerator enumerator = Users.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				if (string.Compare(current, user, ignoreCase: true, Helpers.InvariantCulture) == 0 || current == "*" || (current == "?" && user == ""))
				{
					return true;
				}
			}
		}
		finally
		{
			if (enumerator is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		return false;
	}

	internal bool CheckRole(IPrincipal user)
	{
		StringEnumerator enumerator = Roles.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				if (user.IsInRole(current))
				{
					return true;
				}
			}
		}
		finally
		{
			if (enumerator is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		return false;
	}
}
