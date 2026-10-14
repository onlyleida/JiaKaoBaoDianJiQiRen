using System.ComponentModel;
using System.Security.Permissions;
using System.Text;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.PreviewControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[Bindable(false)]
[ParseChildren(false)]
[ToolboxItem("")]
[DefaultProperty("Text")]
[ControlBuilder(typeof(TableCellControlBuilder))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TableCell : WebControl
{
	[TypeConverter(typeof(StringArrayConverter))]
	[DefaultValue(null)]
	public virtual string[] AssociatedHeaderCellID
	{
		get
		{
			object obj = ViewState["AssociatedHeaderCellID"];
			if (obj != null)
			{
				return (string[])obj;
			}
			return new string[0];
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("AssociatedHeaderCellID");
			}
			else
			{
				ViewState["AssociatedHeaderCellID"] = value;
			}
		}
	}

	[DefaultValue(0)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual int ColumnSpan
	{
		get
		{
			object obj = ViewState["ColumnSpan"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 0;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("< 0");
			}
			ViewState["ColumnSpan"] = value;
		}
	}

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DefaultValue(HorizontalAlign.NotSet)]
	public virtual HorizontalAlign HorizontalAlign
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return HorizontalAlign.NotSet;
			}
			return TableItemStyle.HorizontalAlign;
		}
		set
		{
			TableItemStyle.HorizontalAlign = value;
		}
	}

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DefaultValue(0)]
	public virtual int RowSpan
	{
		get
		{
			object obj = ViewState["RowSpan"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 0;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("< 0");
			}
			ViewState["RowSpan"] = value;
		}
	}

	[WebCategory("Appearance")]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[WebSysDescription("")]
	[DefaultValue("")]
	[Localizable(true)]
	public virtual string Text
	{
		get
		{
			object obj = ViewState["Text"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("Text");
				return;
			}
			ViewState["Text"] = value;
			if (HasControls())
			{
				Controls.Clear();
			}
		}
	}

	[DefaultValue(VerticalAlign.NotSet)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual VerticalAlign VerticalAlign
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return VerticalAlign.NotSet;
			}
			return TableItemStyle.VerticalAlign;
		}
		set
		{
			TableItemStyle.VerticalAlign = value;
		}
	}

	[DefaultValue(true)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual bool Wrap
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return true;
			}
			return TableItemStyle.Wrap;
		}
		set
		{
			TableItemStyle.Wrap = value;
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	private TableItemStyle TableItemStyle => ControlStyle as TableItemStyle;

	public TableCell()
		: base(HtmlTextWriterTag.Td)
	{
		AutoID = false;
	}

	internal TableCell(HtmlTextWriterTag tag)
		: base(tag)
	{
		AutoID = false;
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		if (writer == null)
		{
			return;
		}
		int columnSpan = ColumnSpan;
		if (columnSpan > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Colspan, columnSpan.ToString(Helpers.InvariantCulture), fEncode: false);
		}
		columnSpan = RowSpan;
		if (columnSpan > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Rowspan, columnSpan.ToString(Helpers.InvariantCulture), fEncode: false);
		}
		string[] associatedHeaderCellID = AssociatedHeaderCellID;
		if (associatedHeaderCellID.Length > 1)
		{
			StringBuilder stringBuilder = new StringBuilder();
			for (columnSpan = 0; columnSpan < associatedHeaderCellID.Length - 1; columnSpan++)
			{
				stringBuilder.Append(associatedHeaderCellID[columnSpan]);
				stringBuilder.Append(",");
			}
			stringBuilder.Append(associatedHeaderCellID.Length - 1);
			writer.AddAttribute(HtmlTextWriterAttribute.Headers, stringBuilder.ToString());
		}
		else if (associatedHeaderCellID.Length == 1)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Headers, associatedHeaderCellID[0]);
		}
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (HasControls())
		{
			base.AddParsedSubObject(obj);
		}
		else if (!(obj is LiteralControl literalControl))
		{
			string text = Text;
			if (text.Length > 0)
			{
				Controls.Add(new LiteralControl(text));
				Text = null;
			}
			base.AddParsedSubObject(obj);
		}
		else
		{
			Text = literalControl.Text;
		}
	}

	protected override Style CreateControlStyle()
	{
		return new TableItemStyle(ViewState);
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		if (HasControls() || HasRenderMethodDelegate())
		{
			base.RenderContents(writer);
		}
		else
		{
			writer.Write(Text);
		}
	}
}
