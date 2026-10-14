using System.Collections;
using System.ComponentModel.Design;
using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DesignTimeParseData
{
	private EventHandler db_handler;

	private string text;

	private IDesignerHost host;

	private string durl;

	private string filter;

	private bool theme;

	private ICollection collection;

	public EventHandler DataBindingHandler
	{
		get
		{
			return db_handler;
		}
		set
		{
			db_handler = value;
		}
	}

	public IDesignerHost DesignerHost => host;

	public string DocumentUrl
	{
		get
		{
			return durl;
		}
		set
		{
			durl = value;
		}
	}

	public string ParseText => text;

	public string Filter => filter;

	public bool ShouldApplyTheme
	{
		get
		{
			return theme;
		}
		set
		{
			theme = value;
		}
	}

	public ICollection UserControlRegisterEntries => collection;

	public DesignTimeParseData(IDesignerHost designerHost, string parseText)
	{
		host = designerHost;
		text = parseText;
	}

	public DesignTimeParseData(IDesignerHost designerHost, string parseText, string filter)
		: this(designerHost, parseText)
	{
		this.filter = filter;
	}

	internal void SetCollection(ICollection collection)
	{
		this.collection = collection;
	}
}
