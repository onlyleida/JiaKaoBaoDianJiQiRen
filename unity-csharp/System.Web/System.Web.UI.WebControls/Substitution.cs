using System.ComponentModel;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[DefaultProperty("MethodName")]
[ParseChildren(true)]
[Designer("System.Web.UI.Design.WebControls.SubstitutionDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[PersistChildren(false)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Substitution : Control
{
	[DefaultValue("")]
	[WebCategory("Behavior")]
	public virtual string MethodName
	{
		get
		{
			string text = ViewState["MethodName"] as string;
			if (string.IsNullOrEmpty(text))
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			ViewState["MethodName"] = value;
		}
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	[MonoTODO("Why override?")]
	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		string methodName = MethodName;
		if (methodName.Length != 0)
		{
			TemplateControl templateControl = TemplateControl;
			if (templateControl != null)
			{
				(Context?.Response)?.WriteSubstitution(CreateCallback(methodName, templateControl));
			}
		}
	}

	private HttpResponseSubstitutionCallback CreateCallback(string method, TemplateControl tc)
	{
		try
		{
			return Delegate.CreateDelegate(typeof(HttpResponseSubstitutionCallback), tc.GetType(), method, ignoreCase: true, throwOnBindFailure: true) as HttpResponseSubstitutionCallback;
		}
		catch (Exception innerException)
		{
			throw new HttpException("Cannot find static method '" + method + "' matching HttpResponseSubstitutionCallback", innerException);
		}
	}
}
