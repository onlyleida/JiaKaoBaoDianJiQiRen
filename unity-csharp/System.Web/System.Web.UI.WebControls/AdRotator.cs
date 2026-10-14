using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Security.Permissions;
using System.Web.Util;
using System.Xml;

namespace System.Web.UI.WebControls;

[DefaultProperty("AdvertisementFile")]
[Designer("System.Web.UI.Design.WebControls.AdRotatorDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultEvent("AdCreated")]
[ToolboxData("<{0}:AdRotator runat=\"server\"></{0}:AdRotator>")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class AdRotator : DataBoundControl
{
	private AdCreatedEventArgs createdargs;

	private ArrayList ads = new ArrayList();

	private string ad_file = string.Empty;

	private static readonly object AdCreatedEvent = new object();

	[WebCategory("Behavior")]
	[Editor("System.Web.UI.Design.XmlUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[DefaultValue("")]
	[WebSysDescription("")]
	[UrlProperty]
	[Bindable(true)]
	public string AdvertisementFile
	{
		get
		{
			return ad_file;
		}
		set
		{
			ad_file = value;
		}
	}

	[DefaultValue("AlternateText")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[MonoTODO("Not implemented")]
	public string AlternateTextField
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override FontInfo Font => base.Font;

	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DefaultValue("ImageUrl")]
	[MonoTODO("Not implemented")]
	public string ImageUrlField
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[Bindable(true)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	[DefaultValue("")]
	public string KeywordFilter
	{
		get
		{
			return ViewState.GetString("KeywordFilter", string.Empty);
		}
		set
		{
			ViewState["KeywordFilter"] = value;
		}
	}

	[DefaultValue("NavigateUrl")]
	[MonoTODO("Not implemented")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public string NavigateUrlField
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[WebCategory("Behavior")]
	[Bindable(true)]
	[DefaultValue("_top")]
	[TypeConverter(typeof(TargetConverter))]
	[WebSysDescription("")]
	public string Target
	{
		get
		{
			return ViewState.GetString("Target", "_top");
		}
		set
		{
			ViewState["Target"] = value;
		}
	}

	public override string UniqueID => base.UniqueID;

	protected override HtmlTextWriterTag TagKey => base.TagKey;

	[WebSysDescription("")]
	[WebCategory("Action")]
	public event AdCreatedEventHandler AdCreated
	{
		add
		{
			Events.AddHandler(AdCreatedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(AdCreatedEvent, value);
		}
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		Hashtable adProperties = null;
		if (!string.IsNullOrEmpty(ad_file))
		{
			ReadAdsFromFile(GetPhysicalFilePath(ad_file));
			adProperties = ChooseAd();
		}
		AdCreatedEventArgs e2 = new AdCreatedEventArgs(adProperties);
		OnAdCreated(e2);
		createdargs = e2;
	}

	[MonoTODO("Not implemented")]
	protected internal override void PerformDataBinding(IEnumerable data)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	protected override void PerformSelect()
	{
		throw new NotImplementedException();
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		AdCreatedEventArgs e = createdargs;
		base.AddAttributesToRender(writer);
		if (e.NavigateUrl != null && e.NavigateUrl.Length > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Href, ResolveAdUrl(e.NavigateUrl));
		}
		if (Target != null && Target.Length > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Target, Target);
		}
		writer.RenderBeginTag(HtmlTextWriterTag.A);
		if (e.ImageUrl != null && e.ImageUrl.Length > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Src, ResolveAdUrl(e.ImageUrl));
		}
		writer.AddAttribute(HtmlTextWriterAttribute.Alt, (e.AlternateText == null) ? string.Empty : e.AlternateText);
		writer.AddAttribute(HtmlTextWriterAttribute.Border, "0", fEncode: false);
		writer.RenderBeginTag(HtmlTextWriterTag.Img);
		writer.RenderEndTag();
		writer.RenderEndTag();
	}

	private string ResolveAdUrl(string url)
	{
		if (AdvertisementFile != null && AdvertisementFile.Length > 0 && url[0] != '/' && url[0] != '~')
		{
			try
			{
				new Uri(url);
			}
			catch
			{
				return UrlUtils.Combine(UrlUtils.GetDirectory(ResolveUrl(AdvertisementFile)), url);
			}
		}
		return ResolveUrl(url);
	}

	private Hashtable ChooseAd()
	{
		string keywordFilter = KeywordFilter;
		int num = 0;
		int num2 = 0;
		bool flag = keywordFilter.Length == 0;
		foreach (Hashtable ad in ads)
		{
			if (flag || keywordFilter == (string)ad["Keyword"])
			{
				num += ((ad["Impressions"] == null) ? 1 : int.Parse((string)ad["Impressions"]));
			}
		}
		int num3 = new Random().Next(num);
		foreach (Hashtable ad2 in ads)
		{
			if (flag || !(keywordFilter != (string)ad2["Keyword"]))
			{
				num2 += ((ad2["Impressions"] == null) ? 1 : int.Parse((string)ad2["Impressions"]));
				if (num2 > num3)
				{
					return ad2;
				}
			}
		}
		if (num != 0)
		{
			throw new Exception("I should only get here if no ads matched");
		}
		return null;
	}

	private void ReadAdsFromFile(string s)
	{
		XmlDocument xmlDocument = new XmlDocument();
		try
		{
			xmlDocument.Load(s);
		}
		catch (Exception innerException)
		{
			throw new HttpException("AdRotator could not parse the xml file", innerException);
		}
		ads.Clear();
		foreach (XmlNode childNode in xmlDocument.DocumentElement.ChildNodes)
		{
			Hashtable hashtable = new Hashtable();
			foreach (XmlNode childNode2 in childNode.ChildNodes)
			{
				hashtable.Add(childNode2.Name, childNode2.InnerText);
			}
			ads.Add(hashtable);
		}
	}

	protected virtual void OnAdCreated(AdCreatedEventArgs e)
	{
		((AdCreatedEventHandler)Events[AdCreatedEvent])?.Invoke(this, e);
	}
}
