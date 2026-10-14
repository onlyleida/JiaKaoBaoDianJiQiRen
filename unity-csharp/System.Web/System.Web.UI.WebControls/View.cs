using System.ComponentModel;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.ViewDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[ToolboxData("<{0}:View runat=\"server\"></{0}:View>")]
[ParseChildren(false)]
public class View : Control
{
	private static readonly object ActivateEvent = new object();

	private static readonly object DeactivateEvent = new object();

	[Browsable(true)]
	public override bool EnableTheming
	{
		get
		{
			return base.EnableTheming;
		}
		set
		{
			base.EnableTheming = value;
		}
	}

	internal bool VisibleInternal
	{
		get
		{
			return base.Visible;
		}
		set
		{
			base.Visible = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			throw new InvalidOperationException("The Visible property of a View control can only be set by setting the active View of a MultiView.");
		}
	}

	public event EventHandler Activate
	{
		add
		{
			Events.AddHandler(ActivateEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ActivateEvent, value);
		}
	}

	public event EventHandler Deactivate
	{
		add
		{
			Events.AddHandler(DeactivateEvent, value);
		}
		remove
		{
			Events.RemoveHandler(DeactivateEvent, value);
		}
	}

	public View()
	{
		base.Visible = false;
	}

	internal void NotifyActivation(bool activated)
	{
		if (activated)
		{
			OnActivate(EventArgs.Empty);
		}
		else
		{
			OnDeactivate(EventArgs.Empty);
		}
	}

	protected virtual void OnActivate(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[ActivateEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnDeactivate(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[DeactivateEvent])?.Invoke(this, e);
		}
	}
}
