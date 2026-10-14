namespace System.Web.UI;

public abstract class PageStatePersister
{
	private object control_state;

	private object view_state;

	private Page page;

	private IStateFormatter state_formatter;

	public object ControlState
	{
		get
		{
			return control_state;
		}
		set
		{
			control_state = value;
		}
	}

	public object ViewState
	{
		get
		{
			return view_state;
		}
		set
		{
			view_state = value;
		}
	}

	protected Page Page
	{
		get
		{
			return page;
		}
		set
		{
			page = value;
		}
	}

	protected IStateFormatter StateFormatter
	{
		get
		{
			if (state_formatter == null)
			{
				state_formatter = page.GetFormatter();
			}
			return state_formatter;
		}
	}

	protected PageStatePersister(Page page)
	{
		if (page == null)
		{
			throw new ArgumentNullException("page");
		}
		this.page = page;
	}

	public abstract void Load();

	public abstract void Save();
}
