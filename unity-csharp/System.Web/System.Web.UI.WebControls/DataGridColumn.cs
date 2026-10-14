using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[TypeConverter(typeof(ExpandableObjectConverter))]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class DataGridColumn : IStateManager
{
	internal class ForeColorLinkButton : LinkButton
	{
		private Color GetForeColor(WebControl control)
		{
			if (control == null)
			{
				return Color.Empty;
			}
			if (control is Table)
			{
				return control.ControlStyle.ForeColor;
			}
			Color foreColor = control.ControlStyle.ForeColor;
			if (foreColor != Color.Empty)
			{
				return foreColor;
			}
			return GetForeColor((WebControl)control.Parent);
		}

		protected internal override void Render(HtmlTextWriter writer)
		{
			Color foreColor = GetForeColor(this);
			if (foreColor != Color.Empty)
			{
				ForeColor = foreColor;
			}
			base.Render(writer);
		}
	}

	private DataGrid owner;

	private StateBag viewstate;

	private bool tracking_viewstate;

	private bool design;

	private TableItemStyle footer_style;

	private TableItemStyle header_style;

	private TableItemStyle item_style;

	[WebCategory("Misc")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[WebSysDescription("")]
	[DefaultValue(null)]
	public virtual TableItemStyle FooterStyle
	{
		get
		{
			if (footer_style == null)
			{
				footer_style = new TableItemStyle();
				if (tracking_viewstate)
				{
					footer_style.TrackViewState();
				}
			}
			return footer_style;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Misc")]
	[DefaultValue("")]
	public virtual string FooterText
	{
		get
		{
			return viewstate.GetString("FooterText", string.Empty);
		}
		set
		{
			viewstate["FooterText"] = value;
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	[UrlProperty]
	public virtual string HeaderImageUrl
	{
		get
		{
			return viewstate.GetString("HeaderImageUrl", string.Empty);
		}
		set
		{
			viewstate["HeaderImageUrl"] = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Misc")]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual TableItemStyle HeaderStyle
	{
		get
		{
			if (header_style == null)
			{
				header_style = new TableItemStyle();
				if (tracking_viewstate)
				{
					header_style.TrackViewState();
				}
			}
			return header_style;
		}
	}

	[WebCategory("Misc")]
	[WebSysDescription("")]
	[DefaultValue("")]
	public virtual string HeaderText
	{
		get
		{
			return viewstate.GetString("HeaderText", string.Empty);
		}
		set
		{
			viewstate["HeaderText"] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	public virtual TableItemStyle ItemStyle
	{
		get
		{
			if (item_style == null)
			{
				item_style = new TableItemStyle();
				if (tracking_viewstate)
				{
					item_style.TrackViewState();
				}
			}
			return item_style;
		}
	}

	[WebCategory("Misc")]
	[WebSysDescription("")]
	[DefaultValue("")]
	public virtual string SortExpression
	{
		get
		{
			return viewstate.GetString("SortExpression", string.Empty);
		}
		set
		{
			viewstate["SortExpression"] = value;
		}
	}

	[WebCategory("Misc")]
	[WebSysDescription("")]
	[DefaultValue(true)]
	public bool Visible
	{
		get
		{
			return viewstate.GetBool("Visible", def: true);
		}
		set
		{
			viewstate["Visible"] = value;
		}
	}

	protected bool DesignMode => design;

	protected DataGrid Owner => owner;

	protected StateBag ViewState => viewstate;

	bool IStateManager.IsTrackingViewState => IsTrackingViewState;

	protected bool IsTrackingViewState => tracking_viewstate;

	protected DataGridColumn()
	{
		viewstate = new StateBag();
	}

	public virtual void Initialize()
	{
		if (owner != null && owner.Site != null)
		{
			design = owner.Site.DesignMode;
		}
	}

	public virtual void InitializeCell(TableCell cell, int columnIndex, ListItemType itemType)
	{
		switch (itemType)
		{
		case ListItemType.Header:
		{
			bool flag = false;
			string sortExpression = SortExpression;
			if (owner != null && sortExpression.Length > 0)
			{
				flag = owner.AllowSorting;
			}
			string headerImageUrl = HeaderImageUrl;
			if (headerImageUrl.Length > 0)
			{
				if (flag)
				{
					ImageButton imageButton = new ImageButton();
					imageButton.ImageUrl = headerImageUrl;
					imageButton.CommandName = "Sort";
					imageButton.CommandArgument = sortExpression;
					cell.Controls.Add(imageButton);
				}
				else
				{
					Image image = new Image();
					image.ImageUrl = headerImageUrl;
					cell.Controls.Add(image);
				}
			}
			else if (flag)
			{
				LinkButton linkButton = new ForeColorLinkButton();
				linkButton.Text = HeaderText;
				linkButton.CommandName = "Sort";
				linkButton.CommandArgument = sortExpression;
				cell.Controls.Add(linkButton);
			}
			else
			{
				string headerText = HeaderText;
				if (headerText.Length > 0)
				{
					cell.Text = headerText;
				}
				else
				{
					cell.Text = "&nbsp;";
				}
			}
			break;
		}
		case ListItemType.Footer:
		{
			string footerText = FooterText;
			if (footerText.Length > 0)
			{
				cell.Text = footerText;
			}
			else
			{
				cell.Text = "&nbsp;";
			}
			break;
		}
		}
	}

	public override string ToString()
	{
		return string.Empty;
	}

	internal TableItemStyle GetStyle(ListItemType type)
	{
		return type switch
		{
			ListItemType.Header => header_style, 
			ListItemType.Footer => footer_style, 
			_ => item_style, 
		};
	}

	internal void Set_Owner(DataGrid value)
	{
		owner = value;
	}

	protected virtual void OnColumnChanged()
	{
	}

	void IStateManager.LoadViewState(object savedState)
	{
		LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	protected virtual void LoadViewState(object savedState)
	{
		if (savedState is object[] array)
		{
			if (array[0] != null)
			{
				viewstate.LoadViewState(array[0]);
			}
			if (array[1] != null)
			{
				FooterStyle.LoadViewState(array[1]);
			}
			if (array[2] != null)
			{
				HeaderStyle.LoadViewState(array[2]);
			}
			if (array[3] != null)
			{
				ItemStyle.LoadViewState(array[3]);
			}
		}
	}

	protected virtual object SaveViewState()
	{
		object[] array = new object[4]
		{
			viewstate.SaveViewState(),
			null,
			null,
			null
		};
		if (footer_style != null)
		{
			array[1] = footer_style.SaveViewState();
		}
		if (header_style != null)
		{
			array[2] = header_style.SaveViewState();
		}
		if (item_style != null)
		{
			array[3] = item_style.SaveViewState();
		}
		return array;
	}

	protected virtual void TrackViewState()
	{
		tracking_viewstate = true;
		viewstate.TrackViewState();
		if (footer_style != null)
		{
			footer_style.TrackViewState();
		}
		if (header_style != null)
		{
			header_style.TrackViewState();
		}
		if (item_style != null)
		{
			item_style.TrackViewState();
		}
	}
}
