using System.ComponentModel.Design;
using System.Drawing;

namespace System.Windows.Forms.Design.Behavior;

public abstract class Behavior
{
	[System.MonoTODO]
	public virtual Cursor Cursor
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public virtual bool DisableAllCommands
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected Behavior()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected Behavior(bool callParentBehavior, BehaviorService behaviorService)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual MenuCommand FindCommand(CommandID commandId)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnDragDrop(Glyph g, DragEventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnDragEnter(Glyph g, DragEventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnDragLeave(Glyph g, EventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnDragOver(Glyph g, DragEventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnGiveFeedback(Glyph g, GiveFeedbackEventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnLoseCapture(Glyph g, EventArgs e)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual bool OnMouseDoubleClick(Glyph g, MouseButtons button, Point mouseLoc)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual bool OnMouseDown(Glyph g, MouseButtons button, Point mouseLoc)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual bool OnMouseEnter(Glyph g)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual bool OnMouseHover(Glyph g, Point mouseLoc)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual bool OnMouseLeave(Glyph g)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual bool OnMouseMove(Glyph g, MouseButtons button, Point mouseLoc)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual bool OnMouseUp(Glyph g, MouseButtons button)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void OnQueryContinueDrag(Glyph g, QueryContinueDragEventArgs e)
	{
		throw new NotImplementedException();
	}
}
