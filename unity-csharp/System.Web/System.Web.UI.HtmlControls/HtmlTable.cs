using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;

namespace System.Web.UI.HtmlControls;

[ParseChildren(true, "Rows")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlTable : HtmlContainerControl
{
	protected class HtmlTableRowControlCollection : ControlCollection
	{
		internal HtmlTableRowControlCollection(HtmlTable owner)
			: base(owner)
		{
		}

		public override void Add(Control child)
		{
			if (child == null)
			{
				throw new NullReferenceException("null");
			}
			if (!(child is HtmlTableRow))
			{
				throw new ArgumentException("child", Locale.GetText("Must be an HtmlTableRow instance."));
			}
			base.Add(child);
		}

		public override void AddAt(int index, Control child)
		{
			if (child == null)
			{
				throw new NullReferenceException("null");
			}
			if (!(child is HtmlTableRow))
			{
				throw new ArgumentException("child", Locale.GetText("Must be an HtmlTableRow instance."));
			}
			base.AddAt(index, child);
		}
	}

	private HtmlTableRowCollection _rows;

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public string Align
	{
		get
		{
			string text = Attributes["align"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("align");
			}
			else
			{
				Attributes["align"] = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Appearance")]
	[DefaultValue("")]
	[WebSysDescription("")]
	public string BgColor
	{
		get
		{
			string text = Attributes["bgcolor"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("bgcolor");
			}
			else
			{
				Attributes["bgcolor"] = value;
			}
		}
	}

	[DefaultValue(-1)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public int Border
	{
		get
		{
			string text = Attributes["border"];
			if (text != null)
			{
				return Convert.ToInt32(text);
			}
			return -1;
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("border");
			}
			else
			{
				Attributes["border"] = value.ToString(Helpers.InvariantCulture);
			}
		}
	}

	[WebSysDescription("")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebCategory("Appearance")]
	public string BorderColor
	{
		get
		{
			string text = Attributes["bordercolor"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("bordercolor");
			}
			else
			{
				Attributes["bordercolor"] = value;
			}
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public int CellPadding
	{
		get
		{
			string text = Attributes["cellpadding"];
			if (text != null)
			{
				return Convert.ToInt32(text);
			}
			return -1;
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("cellpadding");
			}
			else
			{
				Attributes["cellpadding"] = value.ToString(Helpers.InvariantCulture);
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public int CellSpacing
	{
		get
		{
			string text = Attributes["cellspacing"];
			if (text != null)
			{
				return Convert.ToInt32(text);
			}
			return -1;
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("cellspacing");
			}
			else
			{
				Attributes["cellspacing"] = value.ToString(Helpers.InvariantCulture);
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public string Height
	{
		get
		{
			string text = Attributes["height"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("height");
			}
			else
			{
				Attributes["height"] = value;
			}
		}
	}

	public override string InnerHtml
	{
		get
		{
			throw new NotSupportedException();
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	public override string InnerText
	{
		get
		{
			throw new NotSupportedException();
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual HtmlTableRowCollection Rows
	{
		get
		{
			if (_rows == null)
			{
				_rows = new HtmlTableRowCollection(this);
			}
			return _rows;
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public string Width
	{
		get
		{
			string text = Attributes["width"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("width");
			}
			else
			{
				Attributes["width"] = value;
			}
		}
	}

	public HtmlTable()
		: base("table")
	{
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new HtmlTableRowControlCollection(this);
	}

	protected internal override void RenderChildren(HtmlTextWriter writer)
	{
		if (HasControls())
		{
			writer.Indent++;
			base.RenderChildren(writer);
			writer.Indent--;
			writer.WriteLine();
		}
	}

	protected override void RenderEndTag(HtmlTextWriter writer)
	{
		writer.WriteLine();
		writer.WriteEndTag(TagName);
		writer.WriteLine();
	}
}
