using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Globalization;

namespace System.Web.UI.Design;

public abstract class WebFormsRootDesigner : IRootDesigner, IDesigner, IDisposable, IDesignerFilter
{
	public abstract string DocumentUrl { get; }

	public abstract bool IsDesignerViewLocked { get; }

	public abstract bool IsLoading { get; }

	public abstract WebFormsReferenceManager ReferenceManager { get; }

	[System.MonoTODO]
	public virtual IComponent Component
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public CultureInfo CurrentCulture
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected ViewTechnology[] SupportedTechnologies
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected DesignerVerbCollection Verbs
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	DesignerVerbCollection IDesigner.Verbs => Verbs;

	[System.MonoTODO]
	ViewTechnology[] IRootDesigner.SupportedTechnologies => SupportedTechnologies;

	public event EventHandler LoadComplete;

	~WebFormsRootDesigner()
	{
	}

	public abstract void AddClientScriptToDocument(ClientScriptItem scriptItem);

	public abstract string AddControlToDocument(Control newControl, Control referenceControl, ControlLocation location);

	public abstract ClientScriptItemCollection GetClientScriptsInDocument();

	protected internal abstract void GetControlViewAndTag(Control control, out IControlDesignerView view, out IControlDesignerTag tag);

	public abstract void RemoveClientScriptFromDocument(string clientScriptId);

	public abstract void RemoveControlFromDocument(Control control);

	[System.MonoTODO]
	protected virtual DesignerActionService CreateDesignerActionService(IServiceProvider serviceProvider)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual IUrlResolutionService CreateUrlResolutionService()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual string GenerateEmptyDesignTimeHtml(Control control)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual string GenerateErrorDesignTimeHtml(Control control, Exception e, string errorMessage)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected internal virtual object GetService(Type serviceType)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected object GetView(ViewTechnology viewTechnology)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void Initialize(IComponent component)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void OnLoadComplete(EventArgs e)
	{
		if (LoadComplete != null)
		{
			LoadComplete(this, e);
		}
	}

	[System.MonoTODO]
	protected virtual void PostFilterAttributes(IDictionary attributes)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void PostFilterEvents(IDictionary events)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void PostFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void PreFilterAttributes(IDictionary attributes)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void PreFilterEvents(IDictionary events)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public string ResolveUrl(string relativeUrl)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public virtual void SetControlID(Control control, string id)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	void IDesigner.DoDefaultAction()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	void IDesignerFilter.PostFilterAttributes(IDictionary attributes)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	void IDesignerFilter.PostFilterEvents(IDictionary events)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	void IDesignerFilter.PostFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	void IDesignerFilter.PreFilterAttributes(IDictionary attributes)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	void IDesignerFilter.PreFilterEvents(IDictionary events)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	void IDesignerFilter.PreFilterProperties(IDictionary properties)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	object IRootDesigner.GetView(ViewTechnology viewTechnology)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	void IDisposable.Dispose()
	{
		Dispose(disposing: true);
	}
}
