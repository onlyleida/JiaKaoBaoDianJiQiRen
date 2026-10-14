using System.Collections;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class ToolZone : WebZone, IPostBackEventHandler
{
	public WebPartDisplayModeCollection AssociatedDisplayModes
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected virtual bool Display
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public Style EditUIStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual WebPartVerb HeaderCloseVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Style HeaderVerbStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual string InstructionText
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public Style InstructionTextStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public Style LabelStyle
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected ToolZone(ICollection associatedDisplayModes)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected ToolZone(WebPartDisplayMode associatedDisplayMode)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected abstract void Close();

	protected virtual void OnDisplayModeChanged(object sender, WebPartDisplayModeEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void OnSelectedWebPartChanged(object sender, WebPartEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderFooter(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderHeader(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderVerb(HtmlTextWriter writer, WebPartVerb verb)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual void RenderVerbs(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
