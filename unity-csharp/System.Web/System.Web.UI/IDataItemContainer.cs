namespace System.Web.UI;

public interface IDataItemContainer : INamingContainer
{
	object DataItem { get; }

	int DataItemIndex { get; }

	int DisplayIndex { get; }
}
