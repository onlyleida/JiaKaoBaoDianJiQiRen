namespace System.Web.UI.WebControls.WebParts;

public abstract class Part : Panel, INamingContainer, ICompositeControlDesignerAccessor
{
	private string description;

	private string title;

	private PartChromeState chrome_state;

	private PartChromeType chrome_type;

	private ControlCollection controls;

	public virtual PartChromeState ChromeState
	{
		get
		{
			return chrome_state;
		}
		set
		{
			chrome_state = value;
		}
	}

	public virtual PartChromeType ChromeType
	{
		get
		{
			return chrome_type;
		}
		set
		{
			chrome_type = value;
		}
	}

	public new virtual ControlCollection Controls
	{
		get
		{
			if (controls == null)
			{
				controls = new ControlCollection(this);
			}
			return controls;
		}
	}

	public virtual string Description
	{
		get
		{
			return description;
		}
		set
		{
			description = value;
		}
	}

	public virtual string Title
	{
		get
		{
			return title;
		}
		set
		{
			title = value;
		}
	}

	internal Part()
	{
		description = "";
		title = "";
		chrome_state = PartChromeState.Normal;
		chrome_type = PartChromeType.Default;
	}

	[MonoTODO("Not implemented")]
	public override void DataBind()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("not sure exactly what this one does..")]
	void ICompositeControlDesignerAccessor.RecreateChildControls()
	{
		CreateChildControls();
	}
}
