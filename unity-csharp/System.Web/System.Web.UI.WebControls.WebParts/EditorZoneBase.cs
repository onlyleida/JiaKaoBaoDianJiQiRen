using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class EditorZoneBase : ToolZone
{
	public virtual WebPartVerb ApplyVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual WebPartVerb CancelVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected override bool Display
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public EditorPartChrome EditorPartChrome
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public EditorPartCollection EditorParts
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public override string EmptyZoneText
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

	public virtual string ErrorText
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

	public override string HeaderText
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

	public override string InstructionText
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

	public virtual WebPartVerb OKVerb
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected WebPart WebPartToEdit
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected EditorZoneBase()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void Close()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual EditorPartChrome CreateEditorPartChrome()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected abstract EditorPartCollection CreateEditorParts();

	protected void InvalidateEditorParts()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void OnDisplayModeChanged(object sender, WebPartDisplayModeEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void OnSelectedWebPartChanged(object sender, WebPartEventArgs e)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RaisePostBackEvent(string eventArgument)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderBody(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void RenderVerbs(HtmlTextWriter writer)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
