using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class ButtonFieldBase : DataControlField
{
	[DefaultValue(ButtonType.Link)]
	[WebSysDescription("")]
	[WebCategory("Appearance")]
	public virtual ButtonType ButtonType
	{
		get
		{
			return (ButtonType)ViewState.GetInt("ButtonType", 2);
		}
		set
		{
			ViewState["ButtonType"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual bool CausesValidation
	{
		get
		{
			return ViewState.GetBool("CausesValidation", def: false);
		}
		set
		{
			ViewState["CausesValidation"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue(false)]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public override bool ShowHeader
	{
		get
		{
			return ViewState.GetBool("showHeader", def: false);
		}
		set
		{
			ViewState["showHeader"] = value;
			OnFieldChanged();
		}
	}

	[DefaultValue("")]
	[WebSysDescription("")]
	[WebCategory("Behavior")]
	public virtual string ValidationGroup
	{
		get
		{
			return ViewState.GetString("ValidationGroup", string.Empty);
		}
		set
		{
			ViewState["ValidationGroup"] = value;
			OnFieldChanged();
		}
	}

	protected override void CopyProperties(DataControlField newField)
	{
		base.CopyProperties(newField);
		ButtonFieldBase buttonFieldBase = (ButtonFieldBase)newField;
		buttonFieldBase.ButtonType = ButtonType;
		buttonFieldBase.CausesValidation = CausesValidation;
		buttonFieldBase.ShowHeader = ShowHeader;
		buttonFieldBase.ValidationGroup = ValidationGroup;
	}
}
