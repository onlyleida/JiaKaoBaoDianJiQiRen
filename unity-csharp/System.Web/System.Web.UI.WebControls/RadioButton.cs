using System.Collections.Specialized;
using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.CheckBoxDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[SupportsEventValidation]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class RadioButton : CheckBox, IPostBackDataHandler
{
	[WebCategory("Behavior")]
	[WebSysDescription("")]
	[Themeable(false)]
	[DefaultValue("")]
	public virtual string GroupName
	{
		get
		{
			return ViewState.GetString("GroupName", string.Empty);
		}
		set
		{
			ViewState["GroupName"] = value;
		}
	}

	internal override string NameAttribute
	{
		get
		{
			string text = UniqueID;
			string groupName = GroupName;
			if (groupName.Length == 0)
			{
				return text;
			}
			int num = -1;
			if (text != null)
			{
				num = text.LastIndexOf(IdSeparator);
			}
			if (num == -1)
			{
				return groupName;
			}
			return text.Substring(0, num + 1) + groupName;
		}
	}

	internal string ValueAttribute
	{
		get
		{
			string text = (string)ViewState["Value"];
			if (text != null)
			{
				return text;
			}
			string iD = ID;
			if (!string.IsNullOrEmpty(iD))
			{
				return iD;
			}
			return UniqueID;
		}
		set
		{
			ViewState["Value"] = value;
		}
	}

	public RadioButton()
		: base("radio")
	{
	}

	internal override void InternalAddAttributesToRender(HtmlTextWriter w, bool enabled)
	{
		Page?.ClientScript.RegisterForEventValidation(NameAttribute, ValueAttribute);
		base.InternalAddAttributesToRender(w, enabled);
		w.AddAttribute(HtmlTextWriterAttribute.Value, ValueAttribute);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected override bool LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		string text = postCollection[NameAttribute];
		bool flag = text == ValueAttribute;
		ValidateEvent(NameAttribute, text);
		if (Checked == flag)
		{
			return false;
		}
		Checked = flag;
		return flag;
	}

	protected override void RaisePostDataChangedEvent()
	{
		if (CausesValidation)
		{
			Page.Validate(ValidationGroup);
		}
		OnCheckedChanged(EventArgs.Empty);
	}

	bool IPostBackDataHandler.LoadPostData(string postDataKey, NameValueCollection postCollection)
	{
		return LoadPostData(postDataKey, postCollection);
	}
}
