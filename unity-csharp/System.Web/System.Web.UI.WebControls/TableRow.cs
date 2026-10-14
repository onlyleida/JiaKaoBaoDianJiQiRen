using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[DefaultProperty("Cells")]
[ParseChildren(true, "Cells")]
[ToolboxItem("")]
[Bindable(false)]
[Designer("System.Web.UI.Design.WebControls.PreviewControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TableRow : WebControl
{
	protected class CellControlCollection : ControlCollection
	{
		internal CellControlCollection(TableRow owner)
			: base(owner)
		{
		}

		public override void Add(Control child)
		{
			if (child == null)
			{
				throw new NullReferenceException("null");
			}
			if (!(child is TableCell))
			{
				throw new ArgumentException("child", Locale.GetText("Must be an TableCell instance."));
			}
			base.Add(child);
		}

		public override void AddAt(int index, Control child)
		{
			if (child == null)
			{
				throw new NullReferenceException("null");
			}
			if (!(child is TableCell))
			{
				throw new ArgumentException("child", Locale.GetText("Must be an TableCell instance."));
			}
			base.AddAt(index, child);
		}
	}

	private TableCellCollection cells;

	private bool tableRowSectionSet;

	internal TableRowCollection Container { get; set; }

	internal bool TableRowSectionSet => tableRowSectionSet;

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[MergableProperty(false)]
	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	public virtual TableCellCollection Cells
	{
		get
		{
			if (cells == null)
			{
				cells = new TableCellCollection(this);
			}
			return cells;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Layout")]
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

	private TableItemStyle TableItemStyle => ControlStyle as TableItemStyle;

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	[DefaultValue(TableRowSection.TableBody)]
	public virtual TableRowSection TableSection
	{
		get
		{
			object obj = ViewState["TableSection"];
			if (obj != null)
			{
				return (TableRowSection)obj;
			}
			return TableRowSection.TableBody;
		}
		set
		{
			if (value < TableRowSection.TableHeader || value > TableRowSection.TableFooter)
			{
				throw new ArgumentOutOfRangeException("TableSection");
			}
			ViewState["TableSection"] = (int)value;
			tableRowSectionSet = true;
			Container?.RowTableSectionSet();
		}
	}

	public TableRow()
		: base(HtmlTextWriterTag.Tr)
	{
		AutoID = false;
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new CellControlCollection(this);
	}

	protected override Style CreateControlStyle()
	{
		return new TableItemStyle(ViewState);
	}
}
