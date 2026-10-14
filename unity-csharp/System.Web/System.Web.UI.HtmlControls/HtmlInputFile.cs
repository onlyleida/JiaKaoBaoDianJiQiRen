using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.HtmlControls;

[ValidationProperty("Value")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class HtmlInputFile : HtmlInputControl, IPostBackDataHandler
{
	private HttpPostedFile posted_file;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	[DefaultValue("")]
	public string Accept
	{
		get
		{
			string text = Attributes["accept"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			if (value == null)
			{
				Attributes.Remove("accept");
			}
			else
			{
				Attributes["accept"] = value;
			}
		}
	}

	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public int MaxLength
	{
		get
		{
			string text = Attributes["maxlength"];
			if (text == null)
			{
				return -1;
			}
			return Convert.ToInt32(text);
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("maxlength");
			}
			else
			{
				Attributes["maxlength"] = value.ToString();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	public HttpPostedFile PostedFile => posted_file;

	[DefaultValue("-1")]
	[WebCategory("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[WebSysDescription("")]
	public int Size
	{
		get
		{
			string text = Attributes["size"];
			if (text == null)
			{
				return -1;
			}
			return Convert.ToInt32(text);
		}
		set
		{
			if (value == -1)
			{
				Attributes.Remove("size");
			}
			else
			{
				Attributes["size"] = value.ToString();
			}
		}
	}

	[Browsable(false)]
	public override string Value
	{
		get
		{
			HttpPostedFile postedFile = PostedFile;
			if (postedFile == null)
			{
				return string.Empty;
			}
			return postedFile.FileName;
		}
		set
		{
			throw new NotSupportedException("The value property on HtmlInputFile is not settable.");
		}
	}

	public HtmlInputFile()
		: base("file")
	{
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page page = Page;
		if (page != null && !Disabled)
		{
			page.RegisterRequiresPostBack(this);
			page.RegisterEnabledControl(this);
		}
		HtmlForm htmlForm = (HtmlForm)SearchParentByType(typeof(HtmlForm));
		if (htmlForm != null && htmlForm.Enctype == string.Empty)
		{
			htmlForm.Enctype = "multipart/form-data";
		}
	}

	private Control SearchParentByType(Type type)
	{
		for (Control parent = Parent; parent != null; parent = parent.Parent)
		{
			if (type.IsAssignableFrom(parent.GetType()))
			{
				return parent;
			}
		}
		return null;
	}

	private bool LoadPostDataInternal(string postDataKey, NameValueCollection postCollection)
	{
		Page page = Page;
		if (page != null)
		{
			posted_file = page.Request.Files[postDataKey];
		}
		return false;
	}

	private void RaisePostDataChangedEventInternal()
	{
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostDataInternal(postDataKey, postCollection);
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEventInternal();
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}

	void IPostBackDataHandler.RaisePostDataChangedEvent()
	{
		RaisePostDataChangedEvent();
	}
}
