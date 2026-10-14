using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[ValidationProperty("SelectedItem")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class DropDownList : ListControl, IPostBackDataHandler
{
	[Browsable(false)]
	public override Color BorderColor
	{
		get
		{
			return base.BorderColor;
		}
		set
		{
			base.BorderColor = value;
		}
	}

	[Browsable(false)]
	public override BorderStyle BorderStyle
	{
		get
		{
			return base.BorderStyle;
		}
		set
		{
			base.BorderStyle = value;
		}
	}

	[Browsable(false)]
	public override Unit BorderWidth
	{
		get
		{
			return base.BorderWidth;
		}
		set
		{
			base.BorderWidth = value;
		}
	}

	[DefaultValue(0)]
	[WebSysDescription("")]
	[WebCategory("Misc")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override int SelectedIndex
	{
		get
		{
			int selectedIndex = base.SelectedIndex;
			if (selectedIndex != -1 || Items.Count == 0)
			{
				return selectedIndex;
			}
			Items[0].Selected = true;
			return 0;
		}
		set
		{
			base.SelectedIndex = value;
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		Page page = Page;
		page?.VerifyRenderingInServerForm(this);
		if (writer != null)
		{
			if (!string.IsNullOrEmpty(UniqueID))
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Name, UniqueID, fEncode: true);
			}
			if (!IsEnabled && SelectedIndex == -1)
			{
				SelectedIndex = 1;
			}
			if (AutoPostBack)
			{
				string text = ((page != null) ? page.ClientScript.GetPostBackEventReference(GetPostBackOptions(), registerForEventValidation: true) : string.Empty);
				text = "setTimeout('" + text.Replace("\\", "\\\\").Replace("'", "\\'") + "', 0)";
				writer.AddAttribute(HtmlTextWriterAttribute.Onchange, BuildScriptAttribute("onchange", text));
			}
			base.AddAttributesToRender(writer);
		}
	}

	private PostBackOptions GetPostBackOptions()
	{
		PostBackOptions postBackOptions = new PostBackOptions(this);
		postBackOptions.ActionUrl = null;
		postBackOptions.ValidationGroup = null;
		postBackOptions.Argument = string.Empty;
		postBackOptions.RequiresJavaScriptProtocol = false;
		postBackOptions.ClientSubmit = true;
		Page page = Page;
		postBackOptions.PerformValidation = CausesValidation && page != null && page.AreValidatorsUplevel(ValidationGroup);
		if (postBackOptions.PerformValidation)
		{
			postBackOptions.ValidationGroup = ValidationGroup;
		}
		return postBackOptions;
	}

	protected override ControlCollection CreateControlCollection()
	{
		return base.CreateControlCollection();
	}

	protected internal override void VerifyMultiSelect()
	{
		throw new HttpException("DropDownList only may have a single selected item");
	}

	protected virtual bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		EnsureDataBound();
		int num = Items.IndexOf(postCollection[postDataKey]);
		ValidateEvent(postDataKey, postCollection[postDataKey]);
		if (num != SelectedIndex)
		{
			SelectedIndex = num;
			return true;
		}
		return false;
	}

	protected virtual void RaisePostDataChangedEvent()
	{
		if (CausesValidation)
		{
			Page?.Validate(ValidationGroup);
		}
		OnSelectedIndexChanged(EventArgs.Empty);
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
