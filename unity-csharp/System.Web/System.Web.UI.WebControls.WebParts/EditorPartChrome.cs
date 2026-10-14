using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class EditorPartChrome
{
	protected EditorZoneBase Zone
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public EditorPartChrome(EditorZoneBase zone)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual Style CreateEditorPartChromeStyle(EditorPart editorPart, PartChromeType chromeType)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual void PerformPreRender()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void RenderEditorPart(HtmlTextWriter writer, EditorPart editorPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderPartContents(HtmlTextWriter writer, EditorPart editorPart)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
