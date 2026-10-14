using System.Collections;
using System.ComponentModel;
using System.Security.Permissions;
using System.Security.Principal;
using System.Web.Security;

namespace System.Web.UI.WebControls;

[Bindable(true)]
[DefaultEvent("ViewChanged")]
[DefaultProperty("CurrentView")]
[Designer("System.Web.UI.Design.WebControls.LoginViewDesigner,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[ParseChildren(true)]
[PersistChildren(false)]
[Themeable(true)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class LoginView : Control, INamingContainer
{
	private static readonly object viewChangedEvent = new object();

	private static readonly object viewChangingEvent = new object();

	private ITemplate anonymousTemplate;

	private ITemplate loggedInTemplate;

	private bool isAuthenticated;

	private bool theming;

	private RoleGroupCollection coll;

	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(LoginView))]
	[Browsable(false)]
	public virtual ITemplate AnonymousTemplate
	{
		get
		{
			return anonymousTemplate;
		}
		set
		{
			anonymousTemplate = value;
		}
	}

	public override ControlCollection Controls
	{
		get
		{
			EnsureChildControls();
			return base.Controls;
		}
	}

	[Browsable(true)]
	public override bool EnableTheming
	{
		get
		{
			return theming;
		}
		set
		{
			theming = value;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(LoginView))]
	public virtual ITemplate LoggedInTemplate
	{
		get
		{
			return loggedInTemplate;
		}
		set
		{
			loggedInTemplate = value;
		}
	}

	[Themeable(false)]
	[Filterable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[MergableProperty(false)]
	public RoleGroupCollection RoleGroups
	{
		get
		{
			if (coll == null)
			{
				coll = new RoleGroupCollection();
			}
			return coll;
		}
	}

	[Browsable(true)]
	public override string SkinID
	{
		get
		{
			return base.SkinID;
		}
		set
		{
			base.SkinID = value;
		}
	}

	private bool IsAuthenticated
	{
		get
		{
			return isAuthenticated;
		}
		set
		{
			if (value != isAuthenticated)
			{
				isAuthenticated = value;
				OnViewChanging(EventArgs.Empty);
				ChildControlsCreated = false;
				OnViewChanged(EventArgs.Empty);
			}
		}
	}

	public event EventHandler ViewChanged
	{
		add
		{
			Events.AddHandler(viewChangedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(viewChangedEvent, value);
		}
	}

	public event EventHandler ViewChanging
	{
		add
		{
			Events.AddHandler(viewChangingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(viewChangingEvent, value);
		}
	}

	public LoginView()
	{
		theming = true;
	}

	private ITemplate GetTemplateFromRoleGroup(RoleGroup rg, IPrincipal user)
	{
		if (user == null)
		{
			return null;
		}
		string[] roles = rg.Roles;
		foreach (string role in roles)
		{
			if (user.IsInRole(role))
			{
				return rg.ContentTemplate;
			}
		}
		return null;
	}

	protected internal override void CreateChildControls()
	{
		Controls.Clear();
		Control control = new Control();
		ITemplate template = null;
		if (Page != null && Page.Request.IsAuthenticated)
		{
			isAuthenticated = true;
			IPrincipal user = HttpContext.Current?.User;
			RoleGroupCollection roleGroups;
			if (Roles.Enabled && (roleGroups = RoleGroups) != null && roleGroups.Count > 0)
			{
				foreach (RoleGroup item in roleGroups)
				{
					template = GetTemplateFromRoleGroup(item, user);
					if (template != null)
					{
						break;
					}
				}
			}
			if (template == null)
			{
				template = LoggedInTemplate;
			}
		}
		else
		{
			isAuthenticated = false;
			template = AnonymousTemplate;
		}
		template?.InstantiateIn(control);
		Controls.Add(control);
	}

	public override void DataBind()
	{
		EventArgs empty = EventArgs.Empty;
		OnDataBinding(empty);
		EnsureChildControls();
		DataBindChildren();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void Focus()
	{
		throw new NotSupportedException();
	}

	protected internal override void LoadControlState(object savedState)
	{
		if (savedState != null)
		{
			isAuthenticated = (bool)savedState;
		}
	}

	protected internal override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		if (Page != null)
		{
			Page.RegisterRequiresControlState(this);
		}
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		if (Page != null)
		{
			IsAuthenticated = Page.Request.IsAuthenticated;
		}
	}

	protected virtual void OnViewChanged(EventArgs e)
	{
		((EventHandler)Events[viewChangedEvent])?.Invoke(this, e);
	}

	protected virtual void OnViewChanging(EventArgs e)
	{
		((EventHandler)Events[viewChangingEvent])?.Invoke(this, e);
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		EnsureChildControls();
		base.Render(writer);
	}

	protected internal override object SaveControlState()
	{
		if (isAuthenticated)
		{
			return isAuthenticated;
		}
		return null;
	}

	[MonoTODO("for design-time usage - no more details available")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override void SetDesignModeState(IDictionary data)
	{
		base.SetDesignModeState(data);
	}
}
