using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[ParseChildren(true, "Cells")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlTableRow : HtmlContainerControl
{
	protected class HtmlTableCellControlCollection : ControlCollection
	{
		internal HtmlTableCellControlCollection(HtmlTableRow owner)
			: base(owner)
		{
		}

		public override void Add(Control child)
		{
			if (child == null)
			{
				throw new NullReferenceException("null");
			}
			if (!(child is HtmlTableCell))
			{
				throw new ArgumentException("child", Locale.GetText("Must be an HtmlTableCell instance."));
			}
			base.Add(child);
		}

		public override void AddAt(int index, Control child)
		{
			if (child == null)
			{
				throw new NullReferenceException("null");
			}
			if (!(child is HtmlTableCell))
			{
				throw new ArgumentException("child", Locale.GetText("Must be an HtmlTableCell instance."));
			}
			base.AddAt(index, child);
		}
	}

	private HtmlTableCellCollection _cells;

	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
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
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	[DefaultValue("")]
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

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
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

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual HtmlTableCellCollection Cells
	{
		get
		{
			if (_cells == null)
			{
				_cells = new HtmlTableCellCollection(this);
			}
			return _cells;
		}
	}

	[DefaultValue("")]
	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
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

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public string VAlign
	{
		get
		{
			string text = Attributes["valign"];
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
				Attributes.Remove("valign");
			}
			else
			{
				Attributes["valign"] = value;
			}
		}
	}

	private int Count
	{
		get
		{
			if (_cells != null)
			{
				return _cells.Count;
			}
			return 0;
		}
	}

	public HtmlTableRow()
		: base("tr")
	{
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new HtmlTableCellControlCollection(this);
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
		if (Count == 0)
		{
			writer.WriteLine();
		}
		writer.WriteEndTag(TagName);
		if (writer.Indent == 0)
		{
			writer.WriteLine();
		}
	}
}
