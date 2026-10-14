using System.Collections;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class AdCreatedEventArgs : EventArgs
{
	private IDictionary properties;

	private string alt_text;

	private string img_url;

	private string nav_url;

	public IDictionary AdProperties => properties;

	public string AlternateText
	{
		get
		{
			return alt_text;
		}
		set
		{
			alt_text = value;
		}
	}

	public string ImageUrl
	{
		get
		{
			return img_url;
		}
		set
		{
			img_url = value;
		}
	}

	public string NavigateUrl
	{
		get
		{
			return nav_url;
		}
		set
		{
			nav_url = value;
		}
	}

	public AdCreatedEventArgs(IDictionary adProperties)
	{
		properties = adProperties;
		if (properties != null)
		{
			alt_text = (string)properties["AlternateText"];
			img_url = (string)properties["ImageUrl"];
			nav_url = (string)properties["NavigateUrl"];
		}
	}
}
