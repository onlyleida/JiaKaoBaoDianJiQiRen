using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[TypeConverter(typeof(ExpandableObjectConverter))]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class PagerSettings : IStateManager
{
	private static readonly object propertyChangedEvent = new object();

	private StateBag ViewState = new StateBag();

	private Control ctrl;

	private EventHandlerList events = new EventHandlerList();

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[NotifyParentProperty(true)]
	[WebCategory("Appearance")]
	[UrlProperty]
	public string FirstPageImageUrl
	{
		get
		{
			object obj = ViewState["FirstPageImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["FirstPageImageUrl"] = value;
			RaisePropertyChanged();
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue("&lt;&lt;")]
	[WebCategory("Appearance")]
	public string FirstPageText
	{
		get
		{
			object obj = ViewState["FirstPageText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "&lt;&lt;";
		}
		set
		{
			ViewState["FirstPageText"] = value;
			RaisePropertyChanged();
		}
	}

	[NotifyParentProperty(true)]
	[WebCategory("Appearance")]
	[UrlProperty]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string LastPageImageUrl
	{
		get
		{
			object obj = ViewState["LastPageImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["LastPageImageUrl"] = value;
			RaisePropertyChanged();
		}
	}

	[DefaultValue("&gt;&gt;")]
	[WebCategory("Appearance")]
	[NotifyParentProperty(true)]
	public string LastPageText
	{
		get
		{
			object obj = ViewState["LastPageText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "&gt;&gt;";
		}
		set
		{
			ViewState["LastPageText"] = value;
			RaisePropertyChanged();
		}
	}

	[NotifyParentProperty(true)]
	[WebCategory("Appearance")]
	[DefaultValue(PagerButtons.Numeric)]
	public PagerButtons Mode
	{
		get
		{
			object obj = ViewState["Mode"];
			if (obj != null)
			{
				return (PagerButtons)obj;
			}
			return PagerButtons.Numeric;
		}
		set
		{
			ViewState["Mode"] = value;
			RaisePropertyChanged();
		}
	}

	[NotifyParentProperty(true)]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	[WebCategory("Appearance")]
	public string NextPageImageUrl
	{
		get
		{
			object obj = ViewState["NextPageImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["NextPageImageUrl"] = value;
			RaisePropertyChanged();
		}
	}

	[DefaultValue("&gt;")]
	[WebCategory("Appearance")]
	[NotifyParentProperty(true)]
	public string NextPageText
	{
		get
		{
			object obj = ViewState["NextPageText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "&gt;";
		}
		set
		{
			ViewState["NextPageText"] = value;
			RaisePropertyChanged();
		}
	}

	[WebCategory("Behavior")]
	[NotifyParentProperty(true)]
	[DefaultValue(10)]
	public int PageButtonCount
	{
		get
		{
			object obj = ViewState["PageButtonCount"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 10;
		}
		set
		{
			ViewState["PageButtonCount"] = value;
			RaisePropertyChanged();
		}
	}

	[WebCategory("Layout")]
	[DefaultValue(PagerPosition.Bottom)]
	[NotifyParentProperty(true)]
	public PagerPosition Position
	{
		get
		{
			object obj = ViewState["Position"];
			if (obj != null)
			{
				return (PagerPosition)obj;
			}
			return PagerPosition.Bottom;
		}
		set
		{
			ViewState["Position"] = value;
		}
	}

	[WebCategory("Appearance")]
	[NotifyParentProperty(true)]
	[UrlProperty]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string PreviousPageImageUrl
	{
		get
		{
			object obj = ViewState["PreviousPageImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["PreviousPageImageUrl"] = value;
			RaisePropertyChanged();
		}
	}

	[DefaultValue("&lt;")]
	[NotifyParentProperty(true)]
	[WebCategory("Appearance")]
	public string PreviousPageText
	{
		get
		{
			object obj = ViewState["PreviousPageText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "&lt;";
		}
		set
		{
			ViewState["PreviousPageText"] = value;
			RaisePropertyChanged();
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(true)]
	[WebCategory("Appearance")]
	public bool Visible
	{
		get
		{
			object obj = ViewState["Visible"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["Visible"] = value;
		}
	}

	bool IStateManager.IsTrackingViewState => ViewState.IsTrackingViewState;

	[Browsable(false)]
	public event EventHandler PropertyChanged
	{
		add
		{
			events.AddHandler(propertyChangedEvent, value);
		}
		remove
		{
			events.RemoveHandler(propertyChangedEvent, value);
		}
	}

	public PagerSettings()
	{
	}

	internal PagerSettings(Control ctrl)
	{
		this.ctrl = ctrl;
	}

	private void RaisePropertyChanged()
	{
		if (events[propertyChangedEvent] is EventHandler eventHandler)
		{
			eventHandler(this, EventArgs.Empty);
		}
	}

	public override string ToString()
	{
		return string.Empty;
	}

	void IStateManager.LoadViewState(object savedState)
	{
		ViewState.LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return ViewState.SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		ViewState.TrackViewState();
	}

	internal Table CreatePagerControl(int currentPage, int pageCount)
	{
		Table table = new Table();
		TableRow tableRow = new TableRow();
		table.Rows.Add(tableRow);
		int num = ((Mode != PagerButtons.Numeric && Mode != PagerButtons.NumericFirstLast) ? 1 : PageButtonCount);
		int num2 = num * (currentPage / num);
		int num3 = num2 + num;
		if (num3 > pageCount)
		{
			num3 = pageCount;
			if (num3 - num2 < num)
			{
				num2 = num3 - num;
			}
			if (num2 < 0)
			{
				num2 = 0;
			}
		}
		if ((Mode == PagerButtons.NumericFirstLast || Mode == PagerButtons.NextPreviousFirstLast) && num2 > 0)
		{
			tableRow.Cells.Add(CreateCell(FirstPageText, FirstPageImageUrl, "Page", "First"));
		}
		if ((Mode == PagerButtons.NextPrevious || Mode == PagerButtons.NextPreviousFirstLast) && num2 > 0)
		{
			tableRow.Cells.Add(CreateCell(PreviousPageText, PreviousPageImageUrl, "Page", "Prev"));
		}
		if (Mode == PagerButtons.Numeric || Mode == PagerButtons.NumericFirstLast)
		{
			if (num2 > 0)
			{
				tableRow.Cells.Add(CreateCell("...", string.Empty, "Page", num2.ToString()));
			}
			for (int i = num2; i < num3; i++)
			{
				tableRow.Cells.Add(CreateCell((i + 1).ToString(), string.Empty, (i != currentPage) ? "Page" : "", (i != currentPage) ? (i + 1).ToString() : ""));
			}
			if (num3 < pageCount)
			{
				tableRow.Cells.Add(CreateCell("...", string.Empty, "Page", (num3 + 1).ToString()));
			}
		}
		if ((Mode == PagerButtons.NextPrevious || Mode == PagerButtons.NextPreviousFirstLast) && num3 < pageCount)
		{
			tableRow.Cells.Add(CreateCell(NextPageText, NextPageImageUrl, "Page", "Next"));
		}
		if ((Mode == PagerButtons.NumericFirstLast || Mode == PagerButtons.NextPreviousFirstLast) && num3 < pageCount)
		{
			tableRow.Cells.Add(CreateCell(LastPageText, LastPageImageUrl, "Page", "Last"));
		}
		return table;
	}

	private TableCell CreateCell(string text, string image, string command, string argument)
	{
		TableCell tableCell = new TableCell();
		Control child = ((!string.IsNullOrEmpty(command)) ? ((Control)DataControlButton.CreateButton((!string.IsNullOrEmpty(image)) ? ButtonType.Image : ButtonType.Link, ctrl, text, image, command, argument, allowCallback: true)) : new Label
		{
			Text = text
		});
		tableCell.Controls.Add(child);
		return tableCell;
	}
}
