using System.ComponentModel;

namespace System.Web.UI.WebControls;

public class TemplateColumn : DataGridColumn
{
	private ITemplate editItemTemplate;

	private ITemplate footerTemplate;

	private ITemplate headerTemplate;

	private ITemplate itemTemplate;

	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(DataGridItem))]
	[WebSysDescription("")]
	public virtual ITemplate EditItemTemplate
	{
		get
		{
			return editItemTemplate;
		}
		set
		{
			editItemTemplate = value;
		}
	}

	[WebSysDescription("")]
	[Browsable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(DataGridItem))]
	[DefaultValue(null)]
	public virtual ITemplate FooterTemplate
	{
		get
		{
			return footerTemplate;
		}
		set
		{
			footerTemplate = value;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(DataGridItem))]
	[WebSysDescription("")]
	public virtual ITemplate HeaderTemplate
	{
		get
		{
			return headerTemplate;
		}
		set
		{
			headerTemplate = value;
		}
	}

	[WebSysDescription("")]
	[TemplateContainer(typeof(DataGridItem))]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[Browsable(false)]
	public virtual ITemplate ItemTemplate
	{
		get
		{
			return itemTemplate;
		}
		set
		{
			itemTemplate = value;
		}
	}

	public override void InitializeCell(TableCell cell, int columnIndex, ListItemType itemType)
	{
		base.InitializeCell(cell, columnIndex, itemType);
		ITemplate template = null;
		switch (itemType)
		{
		case ListItemType.Header:
			template = HeaderTemplate;
			break;
		case ListItemType.Footer:
			template = FooterTemplate;
			break;
		case ListItemType.Item:
		case ListItemType.AlternatingItem:
		case ListItemType.SelectedItem:
			template = ItemTemplate;
			if (template == null)
			{
				cell.Text = "&nbsp;";
			}
			break;
		case ListItemType.EditItem:
			template = EditItemTemplate;
			if (template == null)
			{
				template = ItemTemplate;
			}
			if (template == null)
			{
				cell.Text = "&nbsp;";
			}
			break;
		}
		template?.InstantiateIn(cell);
	}
}
