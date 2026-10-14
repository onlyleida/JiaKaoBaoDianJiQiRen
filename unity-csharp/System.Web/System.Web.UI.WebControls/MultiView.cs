using System.ComponentModel;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.MultiViewDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultEvent("ActiveViewChanged")]
[ParseChildren(typeof(View))]
[ControlBuilder(typeof(MultiViewControlBuilder))]
[ToolboxData("<{0}:MultiView runat=\"server\"></{0}:MultiView>")]
public class MultiView : Control
{
	public static readonly string NextViewCommandName = "NextView";

	public static readonly string PreviousViewCommandName = "PrevView";

	public static readonly string SwitchViewByIDCommandName = "SwitchViewByID";

	public static readonly string SwitchViewByIndexCommandName = "SwitchViewByIndex";

	private static readonly object ActiveViewChangedEvent = new object();

	private int viewIndex = -1;

	private int initialIndex = -1;

	[DefaultValue(-1)]
	public virtual int ActiveViewIndex
	{
		get
		{
			if (Controls.Count == 0)
			{
				return initialIndex;
			}
			return viewIndex;
		}
		set
		{
			if (Controls.Count == 0)
			{
				initialIndex = value;
				return;
			}
			if (value < -1 || value >= Controls.Count)
			{
				throw new ArgumentOutOfRangeException();
			}
			if (viewIndex != -1)
			{
				((View)Controls[viewIndex]).NotifyActivation(activated: false);
			}
			viewIndex = value;
			if (viewIndex != -1)
			{
				((View)Controls[viewIndex]).NotifyActivation(activated: true);
			}
			UpdateViewVisibility();
			OnActiveViewChanged(EventArgs.Empty);
		}
	}

	[Browsable(true)]
	public new virtual bool EnableTheming
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

	[PersistenceMode(PersistenceMode.InnerDefaultProperty)]
	[Browsable(false)]
	public virtual ViewCollection Views => Controls as ViewCollection;

	public event EventHandler ActiveViewChanged
	{
		add
		{
			Events.AddHandler(ActiveViewChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ActiveViewChangedEvent, value);
		}
	}

	protected override void AddParsedSubObject(object obj)
	{
		if (obj is View)
		{
			Controls.Add(obj as View);
		}
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new ViewCollection(this);
	}

	public View GetActiveView()
	{
		if (viewIndex < 0 || viewIndex >= Controls.Count)
		{
			throw new HttpException("The ActiveViewIndex is not set to a valid View control");
		}
		return Controls[viewIndex] as View;
	}

	public void SetActiveView(View view)
	{
		int num = Controls.IndexOf(view);
		if (num == -1)
		{
			throw new HttpException("The provided view is not contained in the MultiView control.");
		}
		ActiveViewIndex = num;
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (e is CommandEventArgs e2)
		{
			switch (e2.CommandName)
			{
			case "NextView":
				if (viewIndex < Controls.Count - 1 && Controls.Count > 0)
				{
					ActiveViewIndex = viewIndex + 1;
				}
				break;
			case "PrevView":
				if (viewIndex > 0)
				{
					ActiveViewIndex = viewIndex - 1;
				}
				break;
			case "SwitchViewByID":
				foreach (View control in Controls)
				{
					if (control.ID == (string)e2.CommandArgument)
					{
						SetActiveView(control);
						break;
					}
				}
				break;
			case "SwitchViewByIndex":
			{
				int activeViewIndex = (int)Convert.ChangeType(e2.CommandArgument, typeof(int));
				ActiveViewIndex = activeViewIndex;
				break;
			}
			}
		}
		return false;
	}

	protected internal override void OnInit(EventArgs e)
	{
		Page.RegisterRequiresControlState(this);
		if (initialIndex != -1)
		{
			ActiveViewIndex = initialIndex;
			initialIndex = -1;
		}
		base.OnInit(e);
	}

	private void UpdateViewVisibility()
	{
		for (int i = 0; i < Views.Count; i++)
		{
			Views[i].VisibleInternal = i == viewIndex;
		}
	}

	protected internal override void RemovedControl(Control ctl)
	{
		if (viewIndex >= Controls.Count)
		{
			viewIndex = Controls.Count - 1;
			UpdateViewVisibility();
		}
		base.RemovedControl(ctl);
	}

	protected internal override void LoadControlState(object state)
	{
		if (state != null)
		{
			viewIndex = (int)state;
			UpdateViewVisibility();
		}
		else
		{
			viewIndex = -1;
		}
	}

	protected internal override object SaveControlState()
	{
		if (viewIndex != -1)
		{
			return viewIndex;
		}
		return null;
	}

	protected virtual void OnActiveViewChanged(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[ActiveViewChangedEvent])?.Invoke(this, e);
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (Controls.Count == 0 && initialIndex != -1)
		{
			viewIndex = initialIndex;
		}
		if (viewIndex != -1)
		{
			GetActiveView().Render(writer);
		}
	}
}
