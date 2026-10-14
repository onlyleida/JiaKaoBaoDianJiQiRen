using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ControlBuilder(typeof(ListItemControlBuilder))]
[TypeConverter(typeof(ExpandableObjectConverter))]
[ParseChildren(true, "Text")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class ListItem : IAttributeAccessor, IParserAccessor, IStateManager
{
	private string text;

	private string value;

	private bool selected;

	private bool dirty;

	private bool enabled = true;

	private bool tracking;

	private StateBag sb;

	private AttributeCollection attrs;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public AttributeCollection Attributes
	{
		get
		{
			if (attrs != null)
			{
				return attrs;
			}
			if (sb == null)
			{
				sb = new StateBag(ignoreCase: true);
				if (tracking)
				{
					sb.TrackViewState();
				}
			}
			return attrs = new AttributeCollection(sb);
		}
	}

	bool IStateManager.IsTrackingViewState => tracking;

	[TypeConverter("System.Web.UI.MinimizableAttributeTypeConverter")]
	[DefaultValue(false)]
	public bool Selected
	{
		get
		{
			return selected;
		}
		set
		{
			selected = value;
			if (tracking)
			{
				SetDirty();
			}
		}
	}

	[PersistenceMode(PersistenceMode.EncodedInnerDefaultProperty)]
	[DefaultValue("")]
	[Localizable(true)]
	public string Text
	{
		get
		{
			string empty = text;
			if (empty == null)
			{
				empty = value;
			}
			if (empty == null)
			{
				empty = string.Empty;
			}
			return empty;
		}
		set
		{
			text = value;
			if (tracking)
			{
				SetDirty();
			}
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public string Value
	{
		get
		{
			string empty = value;
			if (empty == null)
			{
				empty = text;
			}
			if (empty == null)
			{
				empty = string.Empty;
			}
			return empty;
		}
		set
		{
			this.value = value;
			if (tracking)
			{
				SetDirty();
			}
		}
	}

	[DefaultValue(true)]
	public bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			enabled = value;
			if (tracking)
			{
				SetDirty();
			}
		}
	}

	internal bool HasAttributes
	{
		get
		{
			if (attrs != null)
			{
				return attrs.Count > 0;
			}
			return false;
		}
	}

	public ListItem(string text, string value, bool enabled)
		: this(text, value)
	{
		this.enabled = enabled;
	}

	public ListItem(string text, string value)
	{
		this.text = text;
		this.value = value;
	}

	public ListItem(string text)
		: this(text, null)
	{
	}

	public ListItem()
		: this(null, null)
	{
	}

	public static ListItem FromString(string s)
	{
		return new ListItem(s);
	}

	public override bool Equals(object o)
	{
		if (!(o is ListItem listItem))
		{
			return false;
		}
		if (listItem.Text == Text)
		{
			return listItem.Value == Value;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return Text.GetHashCode() ^ Value.GetHashCode();
	}

	string IAttributeAccessor.GetAttribute(string key)
	{
		if (attrs == null)
		{
			return null;
		}
		return Attributes[key];
	}

	void IAttributeAccessor.SetAttribute(string key, string value)
	{
		Attributes[key] = value;
	}

	void IParserAccessor.AddParsedSubObject(object obj)
	{
		if (!(obj is LiteralControl literalControl))
		{
			throw new HttpException("'ListItem' cannot have children of type " + obj.GetType());
		}
		Text = literalControl.Text;
	}

	void IStateManager.LoadViewState(object state)
	{
		LoadViewState(state);
	}

	internal void LoadViewState(object state)
	{
		if (state != null)
		{
			object[] array = (object[])state;
			if (array[0] != null)
			{
				sb = new StateBag(ignoreCase: true);
				sb.LoadViewState(array[0]);
				sb.SetDirty(dirty: true);
			}
			if (array[1] != null)
			{
				text = (string)array[1];
			}
			if (array[2] != null)
			{
				value = (string)array[2];
			}
			if (array[3] != null)
			{
				selected = (bool)array[3];
			}
			if (array[4] != null)
			{
				enabled = (bool)array[4];
			}
		}
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}

	internal object SaveViewState()
	{
		if (!dirty)
		{
			return null;
		}
		return new object[5]
		{
			(sb != null) ? sb.SaveViewState() : null,
			text,
			value,
			selected,
			enabled
		};
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	internal void TrackViewState()
	{
		tracking = true;
		if (sb != null)
		{
			sb.TrackViewState();
			sb.SetDirty(dirty: true);
		}
	}

	public override string ToString()
	{
		return Text;
	}

	internal void SetDirty()
	{
		dirty = true;
	}
}
