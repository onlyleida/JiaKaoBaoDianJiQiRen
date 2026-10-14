using System.ComponentModel;

namespace System.Web.UI;

public sealed class PostBackOptions
{
	private Control control;

	private string argument;

	private string actionUrl;

	private bool autoPostBack;

	private bool requiresJavaScriptProtocol;

	private bool trackFocus;

	private bool clientSubmit;

	private bool performValidation;

	private string validationGroup;

	[DefaultValue("")]
	public string ActionUrl
	{
		get
		{
			return actionUrl;
		}
		set
		{
			actionUrl = value;
		}
	}

	[DefaultValue("")]
	public string Argument
	{
		get
		{
			return argument;
		}
		set
		{
			argument = value;
		}
	}

	[MonoTODO("Implement support for this in Page")]
	[DefaultValue(false)]
	public bool AutoPostBack
	{
		get
		{
			return autoPostBack;
		}
		set
		{
			autoPostBack = value;
		}
	}

	[DefaultValue(true)]
	public bool ClientSubmit
	{
		get
		{
			return clientSubmit;
		}
		set
		{
			clientSubmit = value;
		}
	}

	[DefaultValue(false)]
	public bool PerformValidation
	{
		get
		{
			return performValidation;
		}
		set
		{
			performValidation = value;
		}
	}

	[DefaultValue(true)]
	public bool RequiresJavaScriptProtocol
	{
		get
		{
			return requiresJavaScriptProtocol;
		}
		set
		{
			requiresJavaScriptProtocol = value;
		}
	}

	[DefaultValue(null)]
	public Control TargetControl => control;

	[MonoTODO("Implement support for this in Page")]
	[DefaultValue(false)]
	public bool TrackFocus
	{
		get
		{
			return trackFocus;
		}
		set
		{
			trackFocus = value;
		}
	}

	[DefaultValue("")]
	[MonoTODO("Implement support for this in Page")]
	public string ValidationGroup
	{
		get
		{
			return validationGroup;
		}
		set
		{
			validationGroup = value;
		}
	}

	internal bool RequiresSpecialPostBack
	{
		get
		{
			if (actionUrl == null && validationGroup == null && !trackFocus && !autoPostBack)
			{
				return argument != null;
			}
			return true;
		}
	}

	public PostBackOptions(Control targetControl)
		: this(targetControl, null, null, autoPostBack: false, requiresJavaScriptProtocol: false, trackFocus: false, clientSubmit: true, performValidation: false, null)
	{
	}

	public PostBackOptions(Control targetControl, string argument)
		: this(targetControl, argument, null, autoPostBack: false, requiresJavaScriptProtocol: false, trackFocus: false, clientSubmit: true, performValidation: false, null)
	{
	}

	public PostBackOptions(Control targetControl, string argument, string actionUrl, bool autoPostBack, bool requiresJavaScriptProtocol, bool trackFocus, bool clientSubmit, bool performValidation, string validationGroup)
	{
		if (targetControl == null)
		{
			throw new ArgumentNullException("targetControl");
		}
		control = targetControl;
		this.argument = argument;
		this.actionUrl = actionUrl;
		this.autoPostBack = autoPostBack;
		this.requiresJavaScriptProtocol = requiresJavaScriptProtocol;
		this.trackFocus = trackFocus;
		this.clientSubmit = clientSubmit;
		this.performValidation = performValidation;
		this.validationGroup = validationGroup;
	}
}
