using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[ValidationProperty("SelectedItem")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class RadioButtonList : ListControl, IRepeatInfoUser, INamingContainer, IPostBackDataHandler
{
	private short tabIndex;

	[DefaultValue(-1)]
	[WebCategory("Layout")]
	[WebSysDescription("")]
	public virtual int CellPadding
	{
		get
		{
			if (!ControlStyleCreated)
			{
				return -1;
			}
			return ((TableStyle)ControlStyle).CellPadding;
		}
		set
		{
			((TableStyle)ControlStyle).CellPadding = value;
		}
	}

	[WebCategory("Layout")]
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
			return ((TableStyle)ControlStyle).CellSpacing;
		}
		set
		{
			((TableStyle)ControlStyle).CellSpacing = value;
		}
	}

	[DefaultValue(0)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual int RepeatColumns
	{
		get
		{
			return ViewState.GetInt("RepeatColumns", 0);
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException("The number of columns is set to a negative value.");
			}
			ViewState["RepeatColumns"] = value;
		}
	}

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DefaultValue(RepeatDirection.Vertical)]
	public virtual RepeatDirection RepeatDirection
	{
		get
		{
			return (RepeatDirection)ViewState.GetInt("RepeatDirection", 1);
		}
		set
		{
			if (value != RepeatDirection.Horizontal && value != RepeatDirection.Vertical)
			{
				throw new ArgumentOutOfRangeException("he display direction of the list is not one of the RepeatDirection values.");
			}
			ViewState["RepeatDirection"] = value;
		}
	}

	[DefaultValue(RepeatLayout.Table)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual RepeatLayout RepeatLayout
	{
		get
		{
			return (RepeatLayout)ViewState.GetInt("RepeatLayout", 0);
		}
		set
		{
			if (value < RepeatLayout.Table || value > RepeatLayout.OrderedList)
			{
				throw new ArgumentOutOfRangeException("The radio buttons layout is not one of the RepeatLayout values.");
			}
			ViewState["RepeatLayout"] = value;
		}
	}

	[WebCategory("Appearance")]
	[WebSysDescription("")]
	[DefaultValue(TextAlign.Right)]
	public virtual TextAlign TextAlign
	{
		get
		{
			return (TextAlign)ViewState.GetInt("TextAlign", 2);
		}
		set
		{
			if (value != TextAlign.Left && value != TextAlign.Right)
			{
				throw new ArgumentOutOfRangeException("The label text alignment associated with the radio buttons is not one of the TextAlign values.");
			}
			ViewState["TextAlign"] = value;
		}
	}

	protected virtual bool HasFooter => false;

	protected virtual bool HasHeader => false;

	protected virtual bool HasSeparators => false;

	protected virtual int RepeatedItemCount => Items.Count;

	bool IRepeatInfoUser.HasFooter => HasFooter;

	bool IRepeatInfoUser.HasHeader => HasHeader;

	bool IRepeatInfoUser.HasSeparators => HasSeparators;

	int IRepeatInfoUser.RepeatedItemCount => RepeatedItemCount;

	public virtual bool RenderWhenDataEmpty
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

	protected override Style CreateControlStyle()
	{
		return new TableStyle(ViewState);
	}

	protected override Control FindControl(string id, int pathOffset)
	{
		return this;
	}

	protected virtual Style GetItemStyle(ListItemType itemType, int repeatIndex)
	{
		return null;
	}

	protected virtual void RenderItem(ListItemType itemType, int repeatIndex, RepeatInfo repeatInfo, HtmlTextWriter writer)
	{
		ListItem listItem = Items[repeatIndex];
		RadioButton radioButton = new RadioButton();
		radioButton.Text = listItem.Text;
		radioButton.ID = ClientID + "_" + repeatIndex;
		radioButton.TextAlign = TextAlign;
		radioButton.GroupName = UniqueID;
		radioButton.Page = Page;
		radioButton.Checked = listItem.Selected;
		radioButton.ValueAttribute = listItem.Value;
		radioButton.AutoPostBack = AutoPostBack;
		radioButton.Enabled = IsEnabled;
		radioButton.TabIndex = tabIndex;
		radioButton.ValidationGroup = ValidationGroup;
		radioButton.CausesValidation = CausesValidation;
		if (radioButton.HasAttributes)
		{
			radioButton.Attributes.Clear();
		}
		if (listItem.HasAttributes)
		{
			radioButton.Attributes.CopyFrom(listItem.Attributes);
		}
		radioButton.RenderControl(writer);
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		EnsureDataBound();
		string text = postCollection[postDataKey];
		ListItemCollection listItemCollection = Items;
		int count = listItemCollection.Count;
		int selectedIndex = SelectedIndex;
		for (int i = 0; i < count; i++)
		{
			ListItem listItem = listItemCollection[i];
			if (listItem != null && !(text != listItem.Value) && i != selectedIndex)
			{
				SelectedIndex = i;
				return true;
			}
		}
		return false;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		ValidateEvent(UniqueID, string.Empty);
		Page page = Page;
		if (CausesValidation)
		{
			page?.Validate(ValidationGroup);
		}
		OnSelectedIndexChanged(EventArgs.Empty);
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
	}

	Style IRepeatInfoUser.GetItemStyle(ListItemType itemType, int repeatIndex)
	{
		return GetItemStyle(itemType, repeatIndex);
	}

	void IRepeatInfoUser.RenderItem(ListItemType itemType, int repeatIndex, RepeatInfo repeatInfo, HtmlTextWriter writer)
	{
		RenderItem(itemType, repeatIndex, repeatInfo, writer);
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		Page?.ClientScript.RegisterForEventValidation(UniqueID);
		if (Items.Count != 0)
		{
			RepeatInfo repeatInfo = new RepeatInfo
			{
				RepeatColumns = RepeatColumns,
				RepeatDirection = RepeatDirection,
				RepeatLayout = RepeatLayout
			};
			tabIndex = TabIndex;
			TabIndex = 0;
			repeatInfo.RenderRepeater(writer, this, ControlStyle, this);
			TabIndex = tabIndex;
		}
	}
}
