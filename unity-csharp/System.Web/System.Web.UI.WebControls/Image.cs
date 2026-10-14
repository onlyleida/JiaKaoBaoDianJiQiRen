using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[DefaultProperty("ImageUrl")]
[Designer("System.Web.UI.Design.WebControls.PreviewControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Image : WebControl
{
	[WebSysDescription("")]
	[Localizable(true)]
	[WebCategory("Appearance")]
	[Bindable(true)]
	[DefaultValue("")]
	public virtual string AlternateText
	{
		get
		{
			string text = (string)ViewState["AlternateText"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("AlternateText");
			}
			else
			{
				ViewState["AlternateText"] = value;
			}
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool Enabled
	{
		get
		{
			return base.Enabled;
		}
		set
		{
			base.Enabled = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override FontInfo Font => base.Font;

	[WebCategory("Layout")]
	[WebSysDescription("")]
	[DefaultValue(ImageAlign.NotSet)]
	public virtual ImageAlign ImageAlign
	{
		get
		{
			object obj = ViewState["ImageAlign"];
			if (obj != null)
			{
				return (ImageAlign)obj;
			}
			return ImageAlign.NotSet;
		}
		set
		{
			if (value < ImageAlign.NotSet || value > ImageAlign.TextTop)
			{
				throw new ArgumentOutOfRangeException(Locale.GetText("Invalid ImageAlign value."));
			}
			ViewState["ImageAlign"] = value;
		}
	}

	[WebCategory("Appearance")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	[Bindable(true)]
	[WebSysDescription("")]
	public virtual string ImageUrl
	{
		get
		{
			string text = (string)ViewState["ImageUrl"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("ImageUrl");
			}
			else
			{
				ViewState["ImageUrl"] = value;
			}
		}
	}

	[WebCategory("Accessibility")]
	[WebSysDescription("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string DescriptionUrl
	{
		get
		{
			string text = (string)ViewState["DescriptionUrl"];
			if (text != null)
			{
				return text;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("DescriptionUrl");
			}
			else
			{
				ViewState["DescriptionUrl"] = value;
			}
		}
	}

	[WebCategory("Accessibility")]
	[WebSysDescription("")]
	[DefaultValue(false)]
	public virtual bool GenerateEmptyAlternateText
	{
		get
		{
			object obj = ViewState["GenerateEmptyAlternateText"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return false;
		}
		set
		{
			ViewState["GenerateEmptyAlternateText"] = value;
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	public Image()
		: base(HtmlTextWriterTag.Img)
	{
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		writer.AddAttribute(HtmlTextWriterAttribute.Src, ResolveClientUrl(ImageUrl));
		string alternateText = AlternateText;
		if (alternateText.Length > 0 || GenerateEmptyAlternateText)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Alt, alternateText);
		}
		alternateText = DescriptionUrl;
		if (alternateText.Length > 0)
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Longdesc, ResolveClientUrl(alternateText));
		}
		switch (ImageAlign)
		{
		case ImageAlign.Left:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "left", fEncode: false);
			break;
		case ImageAlign.Right:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "right", fEncode: false);
			break;
		case ImageAlign.Baseline:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "baseline", fEncode: false);
			break;
		case ImageAlign.Top:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "top", fEncode: false);
			break;
		case ImageAlign.Middle:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "middle", fEncode: false);
			break;
		case ImageAlign.Bottom:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "bottom", fEncode: false);
			break;
		case ImageAlign.AbsBottom:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "absbottom", fEncode: false);
			break;
		case ImageAlign.AbsMiddle:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "absmiddle", fEncode: false);
			break;
		case ImageAlign.TextTop:
			writer.AddAttribute(HtmlTextWriterAttribute.Align, "texttop", fEncode: false);
			break;
		}
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		base.RenderContents(writer);
	}
}
