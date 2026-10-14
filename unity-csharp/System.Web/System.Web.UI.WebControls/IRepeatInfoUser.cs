namespace System.Web.UI.WebControls;

public interface IRepeatInfoUser
{
	bool HasHeader { get; }

	bool HasFooter { get; }

	bool HasSeparators { get; }

	int RepeatedItemCount { get; }

	Style GetItemStyle(ListItemType itemType, int repeatIndex);

	void RenderItem(ListItemType itemType, int repeatIndex, RepeatInfo repeatInfo, HtmlTextWriter writer);
}
