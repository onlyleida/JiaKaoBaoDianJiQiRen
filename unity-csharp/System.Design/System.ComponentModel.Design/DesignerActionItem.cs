using System.Collections;
using Unity;

namespace System.ComponentModel.Design;

public abstract class DesignerActionItem
{
	private bool allow_associate;

	private string category;

	private string description;

	private string display_name;

	private IDictionary properties;

	public bool AllowAssociate
	{
		get
		{
			return allow_associate;
		}
		set
		{
			allow_associate = value;
		}
	}

	public virtual string Category => category;

	public virtual string Description => description;

	public virtual string DisplayName => display_name;

	public IDictionary Properties
	{
		get
		{
			if (properties == null)
			{
				properties = new Hashtable();
			}
			return properties;
		}
	}

	public bool ShowInSourceView
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public DesignerActionItem(string displayName, string category, string description)
	{
		display_name = displayName;
		this.description = description;
		this.category = category;
	}
}
