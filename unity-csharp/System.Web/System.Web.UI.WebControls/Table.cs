using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[DefaultProperty("Rows")]
[Designer("System.Web.UI.Design.WebControls.TableDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ParseChildren(true, "Rows")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Table : WebControl, IPostBackEventHandler
{
	protected class RowControlCollection : ControlCollection
	{
		internal RowControlCollection(Table owner)
			: base(owner)
		{
		}

		public override void Add(Control child)
		{
			if (child == null)
			{
				throw new NullReferenceException("null");
			}
			if (!(child is TableRow))
			{
				throw new ArgumentException("child", Locale.GetText("Must be an TableRow instance."));
			}
			base.Add(child);
		}

		public override void AddAt(int index, Control child)
		{
			if (child == null)
			{
				throw new NullReferenceException("null");
			}
			if (!(child is TableRow))
			{
				throw new ArgumentException("child", Locale.GetText("Must be an TableRow instance."));
			}
			base.AddAt(index, child);
		}
	}

	private TableRowCollection rows;

	private bool generateTableSections;

	internal bool GenerateTableSections
	{
		get
		{
			return generateTableSections;
		}
		set
		{
			generateTableSections = value;
		}
	}

	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	[WebSysDescription("")]
	public virtual string BackImageUrl
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return string.Empty;
			}
			return TableStyle.BackImageUrl;
		}
		set
		{
			TableStyle.BackImageUrl = value;
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	[WebSysDescription("")]
	[WebCategory("Accessibility")]
	public virtual string Caption
	{
		get
		{
			object obj = ViewState["Caption"];
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
				ViewState.Remove("Caption");
			}
			else
			{
				ViewState["Caption"] = value;
			}
		}
	}

	[DefaultValue(TableCaptionAlign.NotSet)]
	[WebCategory("Accessibility")]
	public virtual TableCaptionAlign CaptionAlign
	{
		get
		{
			object obj = ViewState["CaptionAlign"];
			if (obj != null)
			{
				return (TableCaptionAlign)obj;
			}
			return TableCaptionAlign.NotSet;
		}
		set
		{
			if (value < TableCaptionAlign.NotSet || value > TableCaptionAlign.Right)
			{
				throw new ArgumentOutOfRangeException(Locale.GetText("Invalid TableCaptionAlign value."));
			}
			ViewState["CaptionAlign"] = value;
		}
	}

	[DefaultValue(-1)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual int CellPadding
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return -1;
			}
			return TableStyle.CellPadding;
		}
		set
		{
			TableStyle.CellPadding = value;
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DefaultValue(-1)]
	public virtual int CellSpacing
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return -1;
			}
			return TableStyle.CellSpacing;
		}
		set
		{
			TableStyle.CellSpacing = value;
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DefaultValue(GridLines.None)]
	public virtual GridLines GridLines
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return GridLines.None;
			}
			return TableStyle.GridLines;
		}
		set
		{
			TableStyle.GridLines = value;
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
			return TableStyle.HorizontalAlign;
		}
		set
		{
			TableStyle.HorizontalAlign = value;
		}
	}

	[WebSysDescription("")]
	[MergableProperty(false)]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	public virtual TableRowCollection Rows
	{
		get
		{
			if (rows == null)
			{
				rows = new TableRowCollection(this);
			}
			return rows;
		}
	}

	private TableStyle TableStyle => ControlStyle as TableStyle;

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	public Table()
		: base(HtmlTextWriterTag.Table)
	{
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new RowControlCollection(this);
	}

	protected override Style CreateControlStyle()
	{
		return new TableStyle(ViewState);
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		TableRowSection tableRowSection = TableRowSection.TableHeader;
		bool flag = false;
		if (Rows.Count <= 0)
		{
			return;
		}
		foreach (TableRow row in Rows)
		{
			if (generateTableSections)
			{
				TableRowSection tableSection = row.TableSection;
				if (tableSection < tableRowSection)
				{
					throw new HttpException("The table " + ID + " must contain row sections in order of header, body, then footer.");
				}
				if (tableRowSection != tableSection)
				{
					if (flag)
					{
						writer.RenderEndTag();
						flag = false;
					}
					tableRowSection = tableSection;
				}
				if (!flag)
				{
					switch (tableSection)
					{
					case TableRowSection.TableHeader:
						writer.RenderBeginTag(HtmlTextWriterTag.Thead);
						break;
					case TableRowSection.TableBody:
						writer.RenderBeginTag(HtmlTextWriterTag.Tbody);
						break;
					case TableRowSection.TableFooter:
						writer.RenderBeginTag(HtmlTextWriterTag.Tfoot);
						break;
					}
					flag = true;
				}
			}
			row?.RenderControl(writer);
		}
		if (flag)
		{
			writer.RenderEndTag();
		}
	}

	public override void RenderBeginTag(HtmlTextWriter writer)
	{
		base.RenderBeginTag(writer);
		string caption = Caption;
		if (caption.Length > 0)
		{
			TableCaptionAlign captionAlign = CaptionAlign;
			if (captionAlign != TableCaptionAlign.NotSet)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Align, captionAlign.ToString());
			}
			writer.RenderBeginTag(HtmlTextWriterTag.Caption);
			writer.Write(caption);
			writer.RenderEndTag();
		}
	}

	void IPostBackEventHandler.RaisePostBackEvent(string argument)
	{
		RaisePostBackEvent(argument);
	}

	protected virtual void RaisePostBackEvent(string argument)
	{
		ValidateEvent(UniqueID, argument);
	}
}
