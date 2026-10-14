using System.Collections;
using System.ComponentModel.Design.Serialization;
using System.Runtime.CompilerServices;
using Unity;

namespace System.ComponentModel.Design;

public class DesignSurface : IServiceProvider, IDisposable
{
	internal class DefaultDesignerLoader : DesignerLoader
	{
		private Type _componentType;

		private bool _loading;

		public override bool Loading => _loading;

		public DefaultDesignerLoader(Type componentType)
		{
			if (componentType == null)
			{
				throw new ArgumentNullException("componentType");
			}
			_componentType = componentType;
		}

		public override void BeginLoad(IDesignerLoaderHost loaderHost)
		{
			_loading = true;
			loaderHost.CreateComponent(_componentType);
			loaderHost.EndLoad(_componentType.FullName, successful: true, null);
			_loading = false;
		}

		public override void Dispose()
		{
			_componentType = null;
		}
	}

	private DesignerHost _designerHost;

	private DesignSurfaceServiceContainer _serviceContainer;

	private ICollection _loadErrors;

	private bool _isLoaded;

	private DesignerLoader _designerLoader;

	protected ServiceContainer ServiceContainer
	{
		get
		{
			if (_designerHost == null)
			{
				throw new ObjectDisposedException("DesignSurface");
			}
			return _serviceContainer;
		}
	}

	public IContainer ComponentContainer
	{
		get
		{
			if (_designerHost == null)
			{
				throw new ObjectDisposedException("DesignSurface");
			}
			return _designerHost.Container;
		}
	}

	public bool IsLoaded => _isLoaded;

	public ICollection LoadErrors
	{
		get
		{
			if (_loadErrors == null)
			{
				_loadErrors = new object[0];
			}
			return _loadErrors;
		}
	}

	public object View
	{
		get
		{
			if (_designerHost == null)
			{
				throw new ObjectDisposedException("DesignSurface");
			}
			if (_designerHost.RootComponent == null || LoadErrors.Count > 0)
			{
				throw new InvalidOperationException("The DesignSurface isn't loaded.");
			}
			if (!(_designerHost.GetDesigner(_designerHost.RootComponent) is IRootDesigner { SupportedTechnologies: var supportedTechnologies } rootDesigner))
			{
				throw new InvalidOperationException("The DesignSurface isn't loaded.");
			}
			for (int i = 0; i < supportedTechnologies.Length; i++)
			{
				try
				{
					return rootDesigner.GetView(supportedTechnologies[i]);
				}
				catch
				{
				}
			}
			throw new NotSupportedException("No supported View Technology found.");
		}
	}

	public bool DtelLoading
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event EventHandler Disposed;

	public event EventHandler Flushed;

	public event LoadedEventHandler Loaded;

	public event EventHandler Loading;

	public event EventHandler Unloaded;

	public event EventHandler Unloading;

	public event EventHandler ViewActivated;

	public DesignSurface()
		: this((IServiceProvider)null)
	{
	}

	public DesignSurface(Type rootComponentType)
		: this(null, rootComponentType)
	{
	}

	public DesignSurface(IServiceProvider parentProvider, Type rootComponentType)
		: this(parentProvider)
	{
		if (rootComponentType == null)
		{
			throw new ArgumentNullException("rootComponentType");
		}
		BeginLoad(rootComponentType);
	}

	public DesignSurface(IServiceProvider parentProvider)
	{
		_serviceContainer = new DesignSurfaceServiceContainer(parentProvider);
		_serviceContainer.AddNonReplaceableService(typeof(IServiceContainer), _serviceContainer);
		_designerHost = new DesignerHost(_serviceContainer);
		_designerHost.DesignerLoaderHostLoaded += OnDesignerHost_Loaded;
		_designerHost.DesignerLoaderHostLoading += OnDesignerHost_Loading;
		_designerHost.DesignerLoaderHostUnloading += OnDesignerHost_Unloading;
		_designerHost.DesignerLoaderHostUnloaded += OnDesignerHost_Unloaded;
		_designerHost.Activated += OnDesignerHost_Activated;
		_serviceContainer.AddNonReplaceableService(typeof(IComponentChangeService), _designerHost);
		_serviceContainer.AddNonReplaceableService(typeof(IDesignerHost), _designerHost);
		_serviceContainer.AddNonReplaceableService(typeof(IContainer), _designerHost);
		_serviceContainer.AddService(typeof(ITypeDescriptorFilterService), new TypeDescriptorFilterService(_serviceContainer));
		ExtenderService serviceInstance = new ExtenderService();
		_serviceContainer.AddService(typeof(IExtenderProviderService), serviceInstance);
		_serviceContainer.AddService(typeof(IExtenderListService), serviceInstance);
		_serviceContainer.AddService(typeof(DesignSurface), this);
		SelectionService serviceInstance2 = new SelectionService(_serviceContainer);
		_serviceContainer.AddService(typeof(ISelectionService), serviceInstance2);
	}

	public void BeginLoad(Type rootComponentType)
	{
		if (rootComponentType == null)
		{
			throw new ArgumentNullException("rootComponentType");
		}
		if (_designerHost == null)
		{
			throw new ObjectDisposedException("DesignSurface");
		}
		BeginLoad(new DefaultDesignerLoader(rootComponentType));
	}

	public void BeginLoad(DesignerLoader loader)
	{
		if (loader == null)
		{
			throw new ArgumentNullException("loader");
		}
		if (_designerHost == null)
		{
			throw new ObjectDisposedException("DesignSurface");
		}
		if (!_isLoaded)
		{
			_loadErrors = null;
			_designerLoader = loader;
			OnLoading(EventArgs.Empty);
			_designerLoader.BeginLoad(_designerHost);
		}
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (_designerLoader != null)
		{
			_designerLoader.Dispose();
			_designerLoader = null;
		}
		if (_designerHost != null)
		{
			_designerHost.Dispose();
			_designerHost.DesignerLoaderHostLoaded -= OnDesignerHost_Loaded;
			_designerHost.DesignerLoaderHostLoading -= OnDesignerHost_Loading;
			_designerHost.DesignerLoaderHostUnloading -= OnDesignerHost_Unloading;
			_designerHost.DesignerLoaderHostUnloaded -= OnDesignerHost_Unloaded;
			_designerHost.Activated -= OnDesignerHost_Activated;
			_designerHost = null;
		}
		if (_serviceContainer != null)
		{
			_serviceContainer.Dispose();
			_serviceContainer = null;
		}
		if (Disposed != null)
		{
			Disposed(this, EventArgs.Empty);
		}
	}

	public void Flush()
	{
		if (_designerLoader != null)
		{
			_designerLoader.Flush();
		}
		if (Flushed != null)
		{
			Flushed(this, EventArgs.Empty);
		}
	}

	private void OnDesignerHost_Loaded(object sender, LoadedEventArgs e)
	{
		OnLoaded(e);
	}

	private void OnDesignerHost_Loading(object sender, EventArgs e)
	{
		OnLoading(EventArgs.Empty);
	}

	private void OnDesignerHost_Unloading(object sender, EventArgs e)
	{
		OnUnloading(EventArgs.Empty);
	}

	private void OnDesignerHost_Unloaded(object sender, EventArgs e)
	{
		OnUnloaded(EventArgs.Empty);
	}

	protected virtual void OnLoaded(LoadedEventArgs e)
	{
		_loadErrors = e.Errors;
		_isLoaded = e.HasSucceeded;
		if (Loaded != null)
		{
			Loaded(this, e);
		}
	}

	protected virtual void OnLoading(EventArgs e)
	{
		if (Loading != null)
		{
			Loading(this, e);
		}
	}

	protected virtual void OnUnloaded(EventArgs e)
	{
		if (Unloaded != null)
		{
			Unloaded(this, e);
		}
	}

	protected virtual void OnUnloading(EventArgs e)
	{
		if (Unloading != null)
		{
			Unloading(this, e);
		}
	}

	internal void OnDesignerHost_Activated(object sender, EventArgs args)
	{
		OnViewActivate(EventArgs.Empty);
	}

	protected virtual void OnViewActivate(EventArgs e)
	{
		if (ViewActivated != null)
		{
			ViewActivated(this, e);
		}
	}

	[Obsolete("CreateComponent has been replaced by CreateInstance")]
	protected internal virtual IComponent CreateComponent(Type componentType)
	{
		return CreateInstance(componentType) as IComponent;
	}

	protected internal virtual object CreateInstance(Type type)
	{
		if (type == null)
		{
			throw new ArgumentNullException("type");
		}
		return _designerHost.CreateComponent(type);
	}

	protected internal virtual IDesigner CreateDesigner(IComponent component, bool rootDesigner)
	{
		if (component == null)
		{
			throw new ArgumentNullException("component");
		}
		if (_designerHost == null)
		{
			throw new ObjectDisposedException("DesignerSurface");
		}
		return _designerHost.CreateDesigner(component, rootDesigner);
	}

	public INestedContainer CreateNestedContainer(IComponent owningComponent)
	{
		return CreateNestedContainer(owningComponent, null);
	}

	public INestedContainer CreateNestedContainer(IComponent owningComponent, string containerName)
	{
		if (_designerHost == null)
		{
			throw new ObjectDisposedException("DesignSurface");
		}
		return new DesignModeNestedContainer(owningComponent, containerName);
	}

	public object GetService(Type serviceType)
	{
		if (typeof(IServiceContainer) == serviceType)
		{
			return _serviceContainer;
		}
		return _serviceContainer.GetService(serviceType);
	}
}
