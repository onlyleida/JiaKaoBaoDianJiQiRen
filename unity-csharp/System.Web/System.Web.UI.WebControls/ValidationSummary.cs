using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using Unity;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.PreviewControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ValidationSummary : WebControl
{
	private bool pre_render_called;

	private bool has_errors;

	[WebSysDescription("")]
	[DefaultValue(ValidationSummaryDisplayMode.BulletList)]
	[WebCategory("Appearance")]
	public ValidationSummaryDisplayMode DisplayMode
	{
		get
		{
			object obj = ViewState["DisplayMode"];
			if (obj != null)
			{
				return (ValidationSummaryDisplayMode)obj;
			}
			return ValidationSummaryDisplayMode.BulletList;
		}
		set
		{
			ViewState["DisplayMode"] = value;
		}
	}

	[DefaultValue(true)]
	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[Themeable(false)]
	public bool EnableClientScript
	{
		get
		{
			return ViewState.GetBool("EnableClientScript", def: true);
		}
		set
		{
			ViewState["EnableClientScript"] = value;
		}
	}

	[DefaultValue(typeof(Color), "Red")]
	public override Color ForeColor
	{
		get
		{
			return base.ForeColor;
		}
		set
		{
			base.ForeColor = value;
		}
	}

	[WebCategory("Appearance")]
	[Localizable(true)]
	[DefaultValue("")]
	[WebSysDescription("")]
	public string HeaderText
	{
		get
		{
			return ViewState.GetString("HeaderText", string.Empty);
		}
		set
		{
			ViewState["HeaderText"] = value;
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(false)]
	public bool ShowMessageBox
	{
		get
		{
			return ViewState.GetBool("ShowMessageBox", def: false);
		}
		set
		{
			ViewState["ShowMessageBox"] = value;
		}
	}

	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[DefaultValue(true)]
	public bool ShowSummary
	{
		get
		{
			return ViewState.GetBool("ShowSummary", def: true);
		}
		set
		{
			ViewState["ShowSummary"] = value;
		}
	}

	[Themeable(false)]
	[DefaultValue("")]
	public virtual string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", string.Empty);
		}
		set
		{
			ViewState["ValidationGroup"] = value;
		}
	}

	public override bool SupportsDisabledAttribute => RenderingCompatibilityLessThan40;

	public bool ShowModelStateErrors
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

	public bool ShowValidationErrors
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

	public ValidationSummary()
		: base(HtmlTextWriterTag.Div)
	{
		ForeColor = Color.Red;
	}

	[MonoTODO]
	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		base.AddAttributesToRender(writer);
		if (EnableClientScript && pre_render_called && Page.AreValidatorsUplevel(ValidationGroup))
		{
			if (ID == null)
			{
				writer.AddAttribute(HtmlTextWriterAttribute.Id, ClientID);
			}
			if (ValidationGroup != string.Empty)
			{
				RegisterExpandoAttribute(ClientID, "validationGroup", ValidationGroup);
			}
			if (HeaderText.Length > 0)
			{
				RegisterExpandoAttribute(ClientID, "headertext", HeaderText);
			}
			if (ShowMessageBox)
			{
				RegisterExpandoAttribute(ClientID, "showmessagebox", "True");
			}
			if (!ShowSummary)
			{
				RegisterExpandoAttribute(ClientID, "showsummary", "False");
			}
			if (DisplayMode != ValidationSummaryDisplayMode.BulletList)
			{
				RegisterExpandoAttribute(ClientID, "displaymode", DisplayMode.ToString());
			}
			if (!has_errors)
			{
				writer.AddStyleAttribute("display", "none");
			}
		}
	}

	internal void RegisterExpandoAttribute(string controlId, string attributeName, string attributeValue)
	{
		RegisterExpandoAttribute(controlId, attributeName, attributeValue, encode: false);
	}

	internal void RegisterExpandoAttribute(string controlId, string attributeName, string attributeValue, bool encode)
	{
		if (Page.ScriptManager != null)
		{
			Page.ScriptManager.RegisterExpandoAttributeExternal(this, controlId, attributeName, attributeValue, encode);
		}
		else
		{
			Page.ClientScript.RegisterExpandoAttribute(controlId, attributeName, attributeValue, encode);
		}
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		if (RenderingCompatibilityLessThan40 && ForeColor == Color.Empty)
		{
			ForeColor = Color.Red;
		}
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		pre_render_called = true;
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (!IsEnabled)
		{
			return;
		}
		ValidatorCollection validators = Page.GetValidators(ValidationGroup);
		ArrayList arrayList = new ArrayList(validators.Count);
		for (int i = 0; i < validators.Count; i++)
		{
			if (!validators[i].IsValid)
			{
				arrayList.Add(validators[i].ErrorMessage);
			}
		}
		has_errors = arrayList.Count > 0;
		if (EnableClientScript && pre_render_called && Page.AreValidatorsUplevel(ValidationGroup))
		{
			if (Page.ScriptManager != null)
			{
				Page.ScriptManager.RegisterArrayDeclarationExternal(this, "Page_ValidationSummaries", "document.getElementById ('" + ClientID + "')");
				Page.ScriptManager.RegisterStartupScriptExternal(this, typeof(BaseValidator), ClientID + "DisposeScript", "\ndocument.getElementById('" + ClientID + "').dispose = function() {\n\tArray.remove(Page_ValidationSummaries, document.getElementById('" + ClientID + "'));\n}\n", addScriptTags: true);
			}
			else
			{
				Page.ClientScript.RegisterArrayDeclaration("Page_ValidationSummaries", "document.getElementById ('" + ClientID + "')");
			}
		}
		if ((ShowSummary && has_errors) || (EnableClientScript && pre_render_called))
		{
			base.RenderBeginTag(writer);
		}
		if (ShowSummary && has_errors)
		{
			switch (DisplayMode)
			{
			case ValidationSummaryDisplayMode.BulletList:
			{
				if (HeaderText.Length > 0)
				{
					writer.Write(HeaderText);
				}
				writer.Write("<ul>");
				for (int k = 0; k < arrayList.Count; k++)
				{
					writer.Write("<li>");
					writer.Write(arrayList[k]);
					writer.Write("</li>");
				}
				writer.Write("</ul>");
				break;
			}
			case ValidationSummaryDisplayMode.List:
			{
				if (HeaderText.Length > 0)
				{
					writer.Write(HeaderText);
					writer.Write("<br />");
				}
				for (int l = 0; l < arrayList.Count; l++)
				{
					writer.Write(arrayList[l]);
					writer.Write("<br />");
				}
				break;
			}
			case ValidationSummaryDisplayMode.SingleParagraph:
			{
				if (HeaderText.Length > 0)
				{
					writer.Write(HeaderText);
					writer.Write(" ");
				}
				for (int j = 0; j < arrayList.Count; j++)
				{
					writer.Write(arrayList[j]);
					writer.Write(" ");
				}
				writer.Write("<br />");
				break;
			}
			}
		}
		if ((ShowSummary && has_errors) || (EnableClientScript && pre_render_called))
		{
			base.RenderEndTag(writer);
		}
	}
}
