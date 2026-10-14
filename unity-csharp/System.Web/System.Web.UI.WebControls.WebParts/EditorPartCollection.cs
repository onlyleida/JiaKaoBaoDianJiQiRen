using System.Collections;

namespace System.Web.UI.WebControls.WebParts;

public sealed class EditorPartCollection : ReadOnlyCollectionBase
{
	public static readonly EditorPartCollection Empty = new EditorPartCollection();

	public EditorPart this[int index] => (EditorPart)InnerList[index];

	public EditorPartCollection()
	{
	}

	public EditorPartCollection(ICollection editorParts)
	{
		foreach (object editorPart in editorParts)
		{
			InnerList.Add(editorPart);
		}
	}

	public EditorPartCollection(EditorPartCollection existingEditorParts, ICollection editorParts)
	{
		foreach (object existingEditorPart in existingEditorParts)
		{
			InnerList.Add(existingEditorPart);
		}
		foreach (object editorPart in editorParts)
		{
			InnerList.Add(editorPart);
		}
	}

	public bool Contains(EditorPart editorPart)
	{
		return InnerList.Contains(editorPart);
	}

	public void CopyTo(EditorPart[] array, int index)
	{
		((ICollection)this).CopyTo((Array)array, index);
	}

	public int IndexOf(EditorPart editorPart)
	{
		return InnerList.IndexOf(editorPart);
	}
}
