namespace System.Web.UI.Design;

[Obsolete("Use new WebFormsReferenceManager feature")]
public interface IWebFormsDocumentService
{
	string DocumentUrl { get; }

	bool IsLoading { get; }

	event EventHandler LoadComplete;

	object CreateDiscardableUndoUnit();

	void DiscardUndoUnit(object discardableUndoUnit);

	void EnableUndo(bool enable);

	void UpdateSelection();
}
