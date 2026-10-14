using System.ComponentModel;
using System.Globalization;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[Designer("System.Web.UI.Design.HtmlIntrinsicControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ToolboxItem(false)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class HtmlControl : Control, IAttributeAccessor
{
	internal string _tagName;

	private AttributeCollection _attributes;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public AttributeCollection Attributes
	{
		get
		{
			if (_attributes == null)
			{
				_attributes = new AttributeCollection(ViewState);
			}
			return _attributes;
		}
	}

	[DefaultValue(false)]
	[TypeConverter(typeof(MinimizableAttributeTypeConverter))]
	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Disabled
	{
		get
		{
			return Attributes["disabled"] != null;
		}
		set
		{
			if (!value)
			{
				Attributes.Remove("disabled");
			}
			else
			{
				Attributes["disabled"] = "disabled";
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public CssStyleCollection Style => Attributes.CssStyle;

	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	public virtual string TagName => _tagName;

	protected override bool ViewStateIgnoresCase => true;

	protected HtmlControl()
		: this("span")
	{
	}

	protected HtmlControl(string tag)
	{
		_tagName = tag;
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	internal static string AttributeToString(int n)
	{
		if (n != -1)
		{
			return n.ToString(NumberFormatInfo.InvariantInfo);
		}
		return null;
	}

	internal static string AttributeToString(string s)
	{
		if (s != null && s.Length != 0)
		{
			return s;
		}
		return null;
	}

	internal void PreProcessRelativeReference(HtmlTextWriter writer, string attribName)
	{
		string text = Attributes[attribName];
		if (text != null && text.Length != 0)
		{
			try
			{
				text = ResolveClientUrl(text);
			}
			catch (Exception)
			{
				throw new HttpException(attribName + " property had malformed url");
			}
			writer.WriteAttribute(attribName, text);
			Attributes.Remove(attribName);
		}
	}

	protected virtual string GetAttribute(string name)
	{
		return Attributes[name];
	}

	protected virtual void SetAttribute(string name, string value)
	{
		Attributes[name] = value;
	}

	string IAttributeAccessor.GetAttribute(string name)
	{
		return Attributes[name];
	}

	void IAttributeAccessor.SetAttribute(string name, string value)
	{
		Attributes[name] = value;
	}

	protected virtual void RenderBeginTag(HtmlTextWriter writer)
	{
		writer.WriteBeginTag(TagName);
		RenderAttributes(writer);
		writer.Write('>');
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		RenderBeginTag(writer);
	}

	protected virtual void RenderAttributes(HtmlTextWriter writer)
	{
		if (ID != null)
		{
			writer.WriteAttribute("id", ClientID);
		}
		Attributes.Render(writer);
	}
}
