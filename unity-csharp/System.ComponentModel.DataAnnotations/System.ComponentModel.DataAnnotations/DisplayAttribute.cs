using System.Globalization;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public sealed class DisplayAttribute : Attribute
{
	private Type _resourceType;

	private LocalizableString _shortName = new LocalizableString("ShortName");

	private LocalizableString _name = new LocalizableString("Name");

	private LocalizableString _description = new LocalizableString("Description");

	private LocalizableString _prompt = new LocalizableString("Prompt");

	private LocalizableString _groupName = new LocalizableString("GroupName");

	private bool? _autoGenerateField;

	private bool? _autoGenerateFilter;

	private int? _order;

	public string ShortName
	{
		get
		{
			return _shortName.Value;
		}
		set
		{
			if (_shortName.Value != value)
			{
				_shortName.Value = value;
			}
		}
	}

	public string Name
	{
		get
		{
			return _name.Value;
		}
		set
		{
			if (_name.Value != value)
			{
				_name.Value = value;
			}
		}
	}

	public string Description
	{
		get
		{
			return _description.Value;
		}
		set
		{
			if (_description.Value != value)
			{
				_description.Value = value;
			}
		}
	}

	public string Prompt
	{
		get
		{
			return _prompt.Value;
		}
		set
		{
			if (_prompt.Value != value)
			{
				_prompt.Value = value;
			}
		}
	}

	public string GroupName
	{
		get
		{
			return _groupName.Value;
		}
		set
		{
			if (_groupName.Value != value)
			{
				_groupName.Value = value;
			}
		}
	}

	public Type ResourceType
	{
		get
		{
			return _resourceType;
		}
		set
		{
			if (_resourceType != value)
			{
				_resourceType = value;
				_shortName.ResourceType = value;
				_name.ResourceType = value;
				_description.ResourceType = value;
				_prompt.ResourceType = value;
				_groupName.ResourceType = value;
			}
		}
	}

	public bool AutoGenerateField
	{
		get
		{
			if (!_autoGenerateField.HasValue)
			{
				throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The {0} property has not been set.  Use the {1} method to get the value.", "AutoGenerateField", "GetAutoGenerateField"));
			}
			return _autoGenerateField.Value;
		}
		set
		{
			_autoGenerateField = value;
		}
	}

	public bool AutoGenerateFilter
	{
		get
		{
			if (!_autoGenerateFilter.HasValue)
			{
				throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The {0} property has not been set.  Use the {1} method to get the value.", "AutoGenerateFilter", "GetAutoGenerateFilter"));
			}
			return _autoGenerateFilter.Value;
		}
		set
		{
			_autoGenerateFilter = value;
		}
	}

	public int Order
	{
		get
		{
			if (!_order.HasValue)
			{
				throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The {0} property has not been set.  Use the {1} method to get the value.", "Order", "GetOrder"));
			}
			return _order.Value;
		}
		set
		{
			_order = value;
		}
	}

	public string GetShortName()
	{
		return _shortName.GetLocalizableValue() ?? GetName();
	}

	public string GetName()
	{
		return _name.GetLocalizableValue();
	}

	public string GetDescription()
	{
		return _description.GetLocalizableValue();
	}

	public string GetPrompt()
	{
		return _prompt.GetLocalizableValue();
	}

	public string GetGroupName()
	{
		return _groupName.GetLocalizableValue();
	}

	public bool? GetAutoGenerateField()
	{
		return _autoGenerateField;
	}

	public bool? GetAutoGenerateFilter()
	{
		return _autoGenerateFilter;
	}

	public int? GetOrder()
	{
		return _order;
	}
}
