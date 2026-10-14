using System.ComponentModel;
using System.Security.Permissions;
using System.Security.Principal;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class RoleGroup
{
	private ITemplate contentTemplate;

	private string[] roles;

	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(LoginView))]
	public ITemplate ContentTemplate
	{
		get
		{
			return contentTemplate;
		}
		set
		{
			contentTemplate = value;
		}
	}

	[TypeConverter(typeof(StringArrayConverter))]
	public string[] Roles
	{
		get
		{
			if (roles == null)
			{
				roles = new string[0];
			}
			return roles;
		}
		set
		{
			roles = value;
		}
	}

	public bool ContainsUser(IPrincipal user)
	{
		if (user == null)
		{
			throw new ArgumentNullException("user");
		}
		if (roles != null)
		{
			string[] array = roles;
			foreach (string role in array)
			{
				if (user.IsInRole(role))
				{
					return true;
				}
			}
		}
		return false;
	}

	public override string ToString()
	{
		if (roles == null || roles.Length == 0)
		{
			return string.Empty;
		}
		if (roles.Length == 1)
		{
			return roles[0];
		}
		return string.Join(",", roles);
	}
}
