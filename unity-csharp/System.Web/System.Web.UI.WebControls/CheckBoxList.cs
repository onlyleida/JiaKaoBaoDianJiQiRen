using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;
using Unity;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class CheckBoxList : ListControl, IRepeatInfoUser, INamingContainer, IPostBackDataHandler
{
	private CheckBox check_box;

	[WebSysDescription("")]
	[WebCategory("Layout")]
	[DefaultValue(-1)]
	public virtual int CellPadding
	{
		get
		{
			return TableStyle.CellPadding;
		}
		set
		{
			TableStyle.CellPadding = value;
		}
	}

	[DefaultValue(-1)]
	[WebSysDescription("")]
	[WebCategory("Layout")]
	public virtual int CellSpacing
	{
		get
		{
			return TableStyle.CellSpacing;
		}
		set
		{
			TableStyle.CellSpacing = value;
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
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["RepeatColumns"] = value;
		}
	}

	[WebCategory("Layout")]
	[DefaultValue(RepeatDirection.Vertical)]
	[WebSysDescription("")]
	public virtual RepeatDirection RepeatDirection
	{
		get
		{
			return (RepeatDirection)ViewState.GetInt("RepeatDirection", 1);
		}
		set
		{
			if (value < RepeatDirection.Horizontal || value > RepeatDirection.Vertical)
			{
				throw new ArgumentOutOfRangeException("value");
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
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["RepeatLayout"] = value;
		}
	}

	[DefaultValue(TextAlign.Right)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual TextAlign TextAlign
	{
		get
		{
			return (TextAlign)ViewState.GetInt("TextAlign", 2);
		}
		set
		{
			if (value < TextAlign.Left || value > TextAlign.Right)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["TextAlign"] = value;
		}
	}

	private TableStyle TableStyle => (TableStyle)ControlStyle;

	protected virtual bool HasFooter => false;

	bool IRepeatInfoUser.HasFooter => HasFooter;

	protected virtual bool HasHeader => false;

	bool IRepeatInfoUser.HasHeader => HasHeader;

	protected virtual bool HasSeparators => false;

	bool IRepeatInfoUser.HasSeparators => HasSeparators;

	protected virtual int RepeatedItemCount => Items.Count;

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

	public CheckBoxList()
	{
		check_box = new CheckBox();
		Controls.Add(check_box);
	}

	protected override Style CreateControlStyle()
	{
		return new TableStyle(ViewState);
	}

	protected override Control FindControl(string id, int pathOffset)
	{
		return this;
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page page = Page;
		for (int i = 0; i < Items.Count; i++)
		{
			if (Items[i].Selected)
			{
				check_box.ID = i.ToString(Helpers.InvariantCulture);
				page?.RegisterRequiresPostBack(check_box);
			}
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (Items.Count != 0)
		{
			RepeatInfo repeatInfo = new RepeatInfo
			{
				RepeatColumns = RepeatColumns,
				RepeatDirection = RepeatDirection,
				RepeatLayout = RepeatLayout
			};
			short num = 0;
			if (TabIndex != 0)
			{
				check_box.TabIndex = TabIndex;
				num = TabIndex;
				TabIndex = 0;
			}
			string accessKey = AccessKey;
			check_box.AccessKey = accessKey;
			AccessKey = null;
			repeatInfo.RenderRepeater(writer, this, TableStyle, this);
			if (num != 0)
			{
				TabIndex = num;
			}
			AccessKey = accessKey;
		}
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		if (!IsEnabled)
		{
			return false;
		}
		EnsureDataBound();
		int num = -1;
		try
		{
			string text = postDataKey.Substring(ClientID.Length + 1);
			if (char.IsDigit(text[0]))
			{
				num = int.Parse(text, Helpers.InvariantCulture);
			}
		}
		catch
		{
			return false;
		}
		if (num == -1)
		{
			return false;
		}
		bool flag = postCollection[postDataKey] == "on";
		ListItem listItem = Items[num];
		if (listItem.Enabled)
		{
			if (flag && !listItem.Selected)
			{
				listItem.Selected = true;
				return true;
			}
			if (!flag && listItem.Selected)
			{
				listItem.Selected = false;
				return true;
			}
		}
		return false;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		if (CausesValidation)
		{
			Page?.Validate(ValidationGroup);
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

	protected virtual Style GetItemStyle(ListItemType itemType, int repeatIndex)
	{
		return null;
	}

	Style IRepeatInfoUser.GetItemStyle(ListItemType itemType, int repeatIndex)
	{
		return GetItemStyle(itemType, repeatIndex);
	}

	protected virtual void RenderItem(ListItemType itemType, int repeatIndex, RepeatInfo repeatInfo, HtmlTextWriter writer)
	{
		ListItem listItem = Items[repeatIndex];
		if (!string.IsNullOrEmpty(check_box.CssClass))
		{
			check_box.CssClass = string.Empty;
		}
		check_box.ID = repeatIndex.ToString(Helpers.InvariantCulture);
		check_box.Text = listItem.Text;
		check_box.AutoPostBack = AutoPostBack;
		check_box.Checked = listItem.Selected;
		check_box.TextAlign = TextAlign;
		if (!IsEnabled)
		{
			check_box.Enabled = false;
		}
		else
		{
			check_box.Enabled = listItem.Enabled;
		}
		check_box.ValidationGroup = ValidationGroup;
		check_box.CausesValidation = CausesValidation;
		if (check_box.HasAttributes)
		{
			check_box.Attributes.Clear();
		}
		if (listItem.HasAttributes)
		{
			check_box.Attributes.CopyFrom(listItem.Attributes);
		}
		if (!RenderingCompatibilityLessThan40)
		{
			AttributeCollection inputAttributes = check_box.InputAttributes;
			inputAttributes.Clear();
			inputAttributes.Add("value", listItem.Value);
		}
		check_box.RenderControl(writer);
	}

	void IRepeatInfoUser.RenderItem(ListItemType itemType, int repeatIndex, RepeatInfo repeatInfo, HtmlTextWriter writer)
	{
		RenderItem(itemType, repeatIndex, repeatInfo, writer);
	}

	internal override bool MultiSelectOk()
	{
		return true;
	}
}
