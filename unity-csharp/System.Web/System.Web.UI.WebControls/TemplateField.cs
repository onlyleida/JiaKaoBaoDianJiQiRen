using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class TemplateField : DataControlField
{
	private ITemplate alternatingItemTemplate;

	private ITemplate editItemTemplate;

	private ITemplate footerTemplate;

	private ITemplate headerTemplate;

	private ITemplate insertItemTemplate;

	private ITemplate itemTemplate;

	[Browsable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(IDataItemContainer), BindingDirection.TwoWay)]
	[DefaultValue(null)]
	public virtual ITemplate AlternatingItemTemplate
	{
		get
		{
			return alternatingItemTemplate;
		}
		set
		{
			alternatingItemTemplate = value;
			OnFieldChanged();
		}
	}

	[WebCategory("Behavior")]
	[DefaultValue(true)]
	public virtual bool ConvertEmptyStringToNull
	{
		get
		{
			object obj = ViewState["ConvertEmptyStringToNull"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["ConvertEmptyStringToNull"] = value;
			OnFieldChanged();
		}
	}

	[TemplateContainer(typeof(IDataItemContainer), BindingDirection.TwoWay)]
	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual ITemplate EditItemTemplate
	{
		get
		{
			return editItemTemplate;
		}
		set
		{
			editItemTemplate = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(null)]
	[TemplateContainer(typeof(IDataItemContainer), BindingDirection.OneWay)]
	[Browsable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual ITemplate FooterTemplate
	{
		get
		{
			return footerTemplate;
		}
		set
		{
			footerTemplate = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(null)]
	[TemplateContainer(typeof(IDataItemContainer), BindingDirection.OneWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate HeaderTemplate
	{
		get
		{
			return headerTemplate;
		}
		set
		{
			headerTemplate = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(null)]
	[TemplateContainer(typeof(IDataItemContainer), BindingDirection.TwoWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate InsertItemTemplate
	{
		get
		{
			return insertItemTemplate;
		}
		set
		{
			insertItemTemplate = value;
			OnFieldChanged();
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[TemplateContainer(typeof(IDataItemContainer), BindingDirection.TwoWay)]
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
			OnFieldChanged();
		}
	}

	public new ValidateRequestMode ValidateRequestMode
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

	public override void InitializeCell(DataControlFieldCell cell, DataControlCellType cellType, DataControlRowState rowState, int rowIndex)
	{
		base.InitializeCell(cell, cellType, rowState, rowIndex);
		switch (cellType)
		{
		case DataControlCellType.Header:
			if (headerTemplate != null && ShowHeader)
			{
				cell.Text = string.Empty;
				headerTemplate.InstantiateIn(cell);
			}
			return;
		case DataControlCellType.Footer:
			if (footerTemplate != null)
			{
				cell.Text = string.Empty;
				footerTemplate.InstantiateIn(cell);
			}
			return;
		}
		cell.Text = string.Empty;
		if ((rowState & DataControlRowState.Insert) != 0 && insertItemTemplate != null)
		{
			insertItemTemplate.InstantiateIn(cell);
		}
		else if ((rowState & DataControlRowState.Edit) != 0 && editItemTemplate != null)
		{
			editItemTemplate.InstantiateIn(cell);
		}
		else if ((rowState & DataControlRowState.Alternate) != 0 && alternatingItemTemplate != null)
		{
			alternatingItemTemplate.InstantiateIn(cell);
		}
		else if (itemTemplate != null)
		{
			itemTemplate.InstantiateIn(cell);
		}
		else
		{
			cell.Text = "&nbsp;";
		}
	}

	public override void ExtractValuesFromCell(IOrderedDictionary dictionary, DataControlFieldCell cell, DataControlRowState rowState, bool includeReadOnly)
	{
		IBindableTemplate bindableTemplate;
		if ((rowState & DataControlRowState.Insert) != 0)
		{
			bindableTemplate = insertItemTemplate as IBindableTemplate;
		}
		else if ((rowState & DataControlRowState.Edit) != 0)
		{
			bindableTemplate = editItemTemplate as IBindableTemplate;
		}
		else
		{
			bindableTemplate = ((alternatingItemTemplate == null || (rowState & DataControlRowState.Alternate) == 0) ? (itemTemplate as IBindableTemplate) : (alternatingItemTemplate as IBindableTemplate));
		}
		if (bindableTemplate == null)
		{
			return;
		}
		IOrderedDictionary orderedDictionary = bindableTemplate.ExtractValues(cell);
		if (orderedDictionary == null)
		{
			return;
		}
		foreach (DictionaryEntry item in orderedDictionary)
		{
			dictionary[item.Key] = item.Value;
		}
	}

	public override void ValidateSupportsCallback()
	{
		throw new NotSupportedException("Callback not supported on TemplateField. Turn disable callbacks on '" + Control.ID + "'.");
	}

	protected override DataControlField CreateField()
	{
		return new TemplateField();
	}

	protected override void CopyProperties(DataControlField newField)
	{
		base.CopyProperties(newField);
		TemplateField templateField = (TemplateField)newField;
		templateField.AlternatingItemTemplate = AlternatingItemTemplate;
		templateField.ConvertEmptyStringToNull = ConvertEmptyStringToNull;
		templateField.EditItemTemplate = EditItemTemplate;
		templateField.FooterTemplate = FooterTemplate;
		templateField.HeaderTemplate = HeaderTemplate;
		templateField.InsertItemTemplate = InsertItemTemplate;
		templateField.ItemTemplate = ItemTemplate;
	}
}
