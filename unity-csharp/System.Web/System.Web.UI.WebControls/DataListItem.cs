using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ToolboxItem("")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class DataListItem : WebControl, INamingContainer, IDataItemContainer
{
	private int index;

	private ListItemType type;

	private object item;

	public virtual object DataItem
	{
		get
		{
			return item;
		}
		set
		{
			item = value;
		}
	}

	public virtual int ItemIndex => index;

	public virtual ListItemType ItemType => type;

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	object IDataItemContainer.DataItem => item;

	int IDataItemContainer.DataItemIndex => index;

	int IDataItemContainer.DisplayIndex => index;

	public DataListItem(int itemIndex, ListItemType itemType)
	{
		index = itemIndex;
		type = itemType;
	}

	protected override Style CreateControlStyle()
	{
		return new TableItemStyle(ViewState);
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (e is CommandEventArgs originalArgs)
		{
			RaiseBubbleEvent(this, new DataListCommandEventArgs(this, source, originalArgs));
			return true;
		}
		return false;
	}

	public virtual void RenderItem(HtmlTextWriter writer, bool extractRows, bool tableLayout)
	{
		bool flag = !extractRows && !tableLayout;
		if (flag)
		{
			writer.RenderBeginTag(TagKey);
		}
		if (HasControls())
		{
			if (extractRows)
			{
				bool flag2 = false;
				foreach (Control control in Controls)
				{
					if (!(control is Table table))
					{
						continue;
					}
					flag2 = true;
					foreach (TableRow row in table.Rows)
					{
						if (ControlStyleCreated && !ControlStyle.IsEmpty)
						{
							row.ControlStyle.MergeWith(ControlStyle);
						}
						row.RenderControl(writer);
					}
					break;
				}
				if (!flag2)
				{
					throw new HttpException("No Table found in DataList template.");
				}
			}
			else
			{
				RenderContents(writer);
			}
		}
		if (flag)
		{
			writer.RenderEndTag();
		}
	}

	protected virtual void SetItemType(ListItemType itemType)
	{
		type = itemType;
	}
}
