using System.ComponentModel;
using System.Security.Permissions;
using System.Web.Util;
using Unity;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.BulletedListDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultEvent("Click")]
[DefaultProperty("BulletStyle")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class BulletedList : ListControl, IPostBackEventHandler
{
	private static readonly object ClickEvent = new object();

	private PostBackOptions postBackOptions;

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override bool AutoPostBack
	{
		get
		{
			return base.AutoPostBack;
		}
		set
		{
			throw new NotSupportedException($"This property is not supported in {GetType()}");
		}
	}

	[Bindable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override int SelectedIndex
	{
		get
		{
			return -1;
		}
		set
		{
			throw new NotSupportedException($"This property is not supported in {GetType()}");
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override ListItem SelectedItem => null;

	[Bindable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string SelectedValue
	{
		get
		{
			return string.Empty;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string BulletImageUrl
	{
		get
		{
			return ViewState.GetString("BulletImageUrl", string.Empty);
		}
		set
		{
			ViewState["BulletImageUrl"] = value;
		}
	}

	[DefaultValue(BulletStyle.NotSet)]
	public virtual BulletStyle BulletStyle
	{
		get
		{
			return (BulletStyle)ViewState.GetInt("BulletStyle", 0);
		}
		set
		{
			if (value < BulletStyle.NotSet || value > BulletStyle.CustomImage)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["BulletStyle"] = value;
		}
	}

	public override ControlCollection Controls => new EmptyControlCollection(this);

	[DefaultValue(BulletedListDisplayMode.Text)]
	public virtual BulletedListDisplayMode DisplayMode
	{
		get
		{
			return (BulletedListDisplayMode)ViewState.GetInt("DisplayMode", 0);
		}
		set
		{
			if (value < BulletedListDisplayMode.Text || value > BulletedListDisplayMode.LinkButton)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			ViewState["DisplayMode"] = value;
		}
	}

	[DefaultValue(1)]
	public virtual int FirstBulletNumber
	{
		get
		{
			return ViewState.GetInt("FirstBulletNumber", 1);
		}
		set
		{
			ViewState["FirstBulletNumber"] = value;
		}
	}

	protected override HtmlTextWriterTag TagKey
	{
		get
		{
			switch (BulletStyle)
			{
			case BulletStyle.Numbered:
			case BulletStyle.LowerAlpha:
			case BulletStyle.UpperAlpha:
			case BulletStyle.LowerRoman:
			case BulletStyle.UpperRoman:
				return HtmlTextWriterTag.Ol;
			default:
				return HtmlTextWriterTag.Ul;
			}
		}
	}

	[TypeConverter(typeof(TargetConverter))]
	[DefaultValue("")]
	public virtual string Target
	{
		get
		{
			return ViewState.GetString("Target", string.Empty);
		}
		set
		{
			ViewState["Target"] = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override string Text
	{
		get
		{
			return string.Empty;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	public virtual bool RenderWhenDataEmpty
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event BulletedListEventHandler Click
	{
		add
		{
			Events.AddHandler(ClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ClickEvent, value);
		}
	}

	[MonoTODO("we are missing a new style enum, we should be using it")]
	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		bool flag = false;
		switch (BulletStyle)
		{
		case BulletStyle.Numbered:
			writer.AddStyleAttribute("list-style-type", "decimal");
			flag = true;
			break;
		case BulletStyle.LowerAlpha:
			writer.AddStyleAttribute("list-style-type", "lower-alpha");
			flag = true;
			break;
		case BulletStyle.UpperAlpha:
			writer.AddStyleAttribute("list-style-type", "upper-alpha");
			flag = true;
			break;
		case BulletStyle.LowerRoman:
			writer.AddStyleAttribute("list-style-type", "lower-roman");
			flag = true;
			break;
		case BulletStyle.UpperRoman:
			writer.AddStyleAttribute("list-style-type", "upper-roman");
			flag = true;
			break;
		case BulletStyle.Disc:
			writer.AddStyleAttribute("list-style-type", "disc");
			break;
		case BulletStyle.Circle:
			writer.AddStyleAttribute("list-style-type", "circle");
			break;
		case BulletStyle.Square:
			writer.AddStyleAttribute("list-style-type", "square");
			break;
		case BulletStyle.CustomImage:
			writer.AddStyleAttribute("list-style-image", "url(" + ResolveClientUrl(BulletImageUrl) + ")");
			break;
		}
		if (flag && FirstBulletNumber != 1)
		{
			writer.AddAttribute("start", FirstBulletNumber.ToString());
		}
		base.AddAttributesToRender(writer);
	}

	protected virtual void RenderBulletText(ListItem item, int index, HtmlTextWriter writer)
	{
		string value = HttpUtility.HtmlEncode(item.Text);
		switch (DisplayMode)
		{
		case BulletedListDisplayMode.Text:
			if (!item.Enabled)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Disabled, "disabled", fEncode: false);
				writer.RenderBeginTag(HtmlTextWriterTag.Span);
			}
			writer.Write(value);
			if (!item.Enabled)
			{
				writer.RenderEndTag();
			}
			break;
		case BulletedListDisplayMode.HyperLink:
			if (IsEnabled && item.Enabled)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Href, item.Value);
				if (Target.Length > 0)
				{
					writer.AddAttribute(HtmlTextWriterAttribute.Target, Target);
				}
			}
			else
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Disabled, "disabled", fEncode: false);
			}
			writer.RenderBeginTag(HtmlTextWriterTag.A);
			writer.Write(value);
			writer.RenderEndTag();
			break;
		case BulletedListDisplayMode.LinkButton:
			if (IsEnabled && item.Enabled)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Href, Page.ClientScript.GetPostBackEventReference(GetPostBackOptions(index.ToString(Helpers.InvariantCulture)), registerForEventValidation: true));
			}
			else
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Disabled, "disabled", fEncode: false);
			}
			writer.RenderBeginTag(HtmlTextWriterTag.A);
			writer.Write(value);
			writer.RenderEndTag();
			break;
		}
	}

	private PostBackOptions GetPostBackOptions(string argument)
	{
		if (postBackOptions == null)
		{
			postBackOptions = new PostBackOptions(this);
			postBackOptions.ActionUrl = null;
			postBackOptions.ValidationGroup = null;
			postBackOptions.RequiresJavaScriptProtocol = true;
			postBackOptions.ClientSubmit = true;
			postBackOptions.PerformValidation = CausesValidation && Page != null && Page.AreValidatorsUplevel(ValidationGroup);
			if (postBackOptions.PerformValidation)
			{
				postBackOptions.ValidationGroup = ValidationGroup;
			}
		}
		postBackOptions.Argument = argument;
		return postBackOptions;
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		int num = 0;
		Page page = Page;
		ClientScriptManager clientScriptManager = page?.ClientScript;
		foreach (ListItem item in Items)
		{
			if (page != null)
			{
				clientScriptManager.RegisterForEventValidation(UniqueID, item.Value);
			}
			if (item.HasAttributes)
			{
				item.Attributes.AddAttributes(writer);
			}
			writer.RenderBeginTag(HtmlTextWriterTag.Li);
			RenderBulletText(item, num++, writer);
			writer.RenderEndTag();
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		base.Render(writer);
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}

	protected virtual void RaisePostBackEvent(string eventArgument)
	{
		ValidateEvent(UniqueID, eventArgument);
		if (CausesValidation)
		{
			Page.Validate(ValidationGroup);
		}
		OnClick(new BulletedListEventArgs(int.Parse(eventArgument, Helpers.InvariantCulture)));
	}

	protected virtual void OnClick(BulletedListEventArgs e)
	{
		if (Events != null)
		{
			((BulletedListEventHandler)Events[ClickEvent])?.Invoke(this, e);
		}
	}
}
