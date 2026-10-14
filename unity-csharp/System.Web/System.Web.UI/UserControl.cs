using System.ComponentModel;
using System.ComponentModel.Design;
using System.Security.Permissions;
using System.Web.Caching;
using System.Web.ModelBinding;
using System.Web.SessionState;
using Unity;

namespace System.Web.UI;

[ToolboxItem(false)]
[Designer("Microsoft.VisualStudio.Web.WebForms.WebFormDesigner, Microsoft.VisualStudio.Web, Version=0.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(IRootDesigner))]
[ParseChildren(true)]
[ControlBuilder(typeof(UserControlControlBuilder))]
[DefaultEvent("Load")]
[Designer("System.Web.UI.Design.UserControlDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(IDesigner))]
[DesignerCategory("ASPXCodeBehind")]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class UserControl : TemplateControl, IAttributeAccessor, IUserControlDesignerAccessor, INamingContainer, IFilterResolutionService, INonBindingContainer
{
	private ControlCachePolicy cachePolicy;

	private bool initialized;

	private AttributeCollection attributes;

	private StateBag attrBag;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public HttpApplicationState Application => Page?.Application;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public AttributeCollection Attributes
	{
		get
		{
			EnsureAttributes();
			return attributes;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Cache Cache => Page?.Cache;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ControlCachePolicy CachePolicy
	{
		get
		{
			if (Parent is BasePartialCachingControl basePartialCachingControl)
			{
				return basePartialCachingControl.CachePolicy;
			}
			if (cachePolicy == null)
			{
				cachePolicy = new ControlCachePolicy();
			}
			return cachePolicy;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsPostBack => Page?.IsPostBack ?? false;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpRequest Request => Page?.Request;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpResponse Response => Page?.Response;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpServerUtility Server => Page?.Server;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public HttpSessionState Session => Page?.Session;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TraceContext Trace => Page?.Trace;

	string IUserControlDesignerAccessor.InnerText
	{
		get
		{
			string text = (string)ViewState["!DesignTimeInnerText"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			ViewState["!DesignTimeInnerText"] = value;
		}
	}

	string IUserControlDesignerAccessor.TagName
	{
		get
		{
			string text = (string)ViewState["!DesignTimeTagName"];
			if (text == null)
			{
				return string.Empty;
			}
			return text;
		}
		set
		{
			ViewState["!DesignTimeTagName"] = value;
		}
	}

	private void EnsureAttributes()
	{
		if (attributes == null)
		{
			attrBag = new StateBag(ignoreCase: true);
			if (IsTrackingViewState)
			{
				attrBag.TrackViewState();
			}
			attributes = new AttributeCollection(attrBag);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void DesignerInitialize()
	{
		InitRecursive(null);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void InitializeAsUserControl(Page page)
	{
		if (!initialized)
		{
			Page = page;
			InitializeAsUserControlInternal();
		}
	}

	internal void InitializeAsUserControlInternal()
	{
		if (!initialized)
		{
			initialized = true;
			WireupAutomaticEvents();
			FrameworkInitialize();
		}
	}

	public string MapPath(string virtualPath)
	{
		return Request.MapPath(virtualPath, TemplateSourceDirectory, allowCrossAppMapping: true);
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			Pair pair = (Pair)savedState;
			base.LoadViewState(pair.First);
			if (pair.Second != null)
			{
				EnsureAttributes();
				attrBag.LoadViewState(pair.Second);
			}
		}
	}

	protected internal override void OnInit(EventArgs e)
	{
		InitializeAsUserControl(Page);
		base.OnInit(e);
	}

	protected override object SaveViewState()
	{
		object obj = base.SaveViewState();
		object obj2 = null;
		if (attributes != null)
		{
			obj2 = attrBag.SaveViewState();
		}
		if (obj == null && obj2 == null)
		{
			return null;
		}
		return new Pair(obj, obj2);
	}

	string IAttributeAccessor.GetAttribute(string name)
	{
		if (attributes == null)
		{
			return null;
		}
		return attributes[name];
	}

	void IAttributeAccessor.SetAttribute(string name, string value)
	{
		EnsureAttributes();
		Attributes[name] = value;
	}

	[MonoTODO("Not implemented")]
	int IFilterResolutionService.CompareFilters(string filter1, string filter2)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	bool IFilterResolutionService.EvaluateFilter(string filterName)
	{
		throw new NotImplementedException();
	}

	public virtual bool TryUpdateModel<TModel>(TModel model)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual bool TryUpdateModel<TModel>(TModel model, IValueProvider valueProvider)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual void UpdateModel<TModel>(TModel model)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public virtual void UpdateModel<TModel>(TModel model, IValueProvider valueProvider)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
