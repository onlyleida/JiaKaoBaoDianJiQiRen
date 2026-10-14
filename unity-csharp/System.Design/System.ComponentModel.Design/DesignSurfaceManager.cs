namespace System.ComponentModel.Design;

public class DesignSurfaceManager : IServiceProvider, IDisposable
{
	private class MergedServiceProvider : IServiceProvider
	{
		private IServiceProvider _primaryProvider;

		private IServiceProvider _secondaryProvider;

		public MergedServiceProvider(IServiceProvider primary, IServiceProvider secondary)
		{
			if (primary == null)
			{
				throw new ArgumentNullException("primary");
			}
			if (secondary == null)
			{
				throw new ArgumentNullException("secondary");
			}
			_primaryProvider = primary;
			_secondaryProvider = secondary;
		}

		public object GetService(Type service)
		{
			object service2 = _primaryProvider.GetService(service);
			if (service2 == null)
			{
				service2 = _secondaryProvider.GetService(service);
			}
			return service2;
		}
	}

	private IServiceProvider _parentProvider;

	private ServiceContainer _serviceContainer;

	public virtual DesignSurface ActiveDesignSurface
	{
		get
		{
			if (GetService(typeof(IDesignerEventService)) is DesignerEventService { ActiveDesigner: { } activeDesigner })
			{
				return activeDesigner.GetService(typeof(DesignSurface)) as DesignSurface;
			}
			return null;
		}
		set
		{
			if (value == null)
			{
				return;
			}
			DesignSurface designSurface = null;
			DesignerEventService designerEventService = GetService(typeof(IDesignerEventService)) as DesignerEventService;
			if (designerEventService != null)
			{
				IDesignerHost activeDesigner = designerEventService.ActiveDesigner;
				if (activeDesigner != null)
				{
					designSurface = activeDesigner.GetService(typeof(DesignSurface)) as DesignSurface;
				}
			}
			ISelectionService selectionService = null;
			if (designSurface != value)
			{
				if (designSurface != null && designSurface.GetService(typeof(ISelectionService)) is ISelectionService selectionService2)
				{
					selectionService2.SelectionChanged -= OnSelectionChanged;
				}
				if (value.GetService(typeof(ISelectionService)) is ISelectionService selectionService3)
				{
					selectionService3.SelectionChanged += OnSelectionChanged;
				}
				designerEventService.ActiveDesigner = value.GetService(typeof(IDesignerHost)) as IDesignerHost;
				if (ActiveDesignSurfaceChanged != null)
				{
					ActiveDesignSurfaceChanged(this, new ActiveDesignSurfaceChangedEventArgs(designSurface, value));
				}
			}
		}
	}

	public DesignSurfaceCollection DesignSurfaces
	{
		get
		{
			if (GetService(typeof(IDesignerEventService)) is DesignerEventService designerEventService)
			{
				return new DesignSurfaceCollection(designerEventService.Designers);
			}
			return new DesignSurfaceCollection(null);
		}
	}

	protected ServiceContainer ServiceContainer
	{
		get
		{
			if (_serviceContainer == null)
			{
				_serviceContainer = new ServiceContainer(_parentProvider);
			}
			return _serviceContainer;
		}
	}

	public event EventHandler SelectionChanged;

	public event DesignSurfaceEventHandler DesignSurfaceDisposed;

	public event DesignSurfaceEventHandler DesignSurfaceCreated;

	public event ActiveDesignSurfaceChangedEventHandler ActiveDesignSurfaceChanged;

	public DesignSurfaceManager()
		: this(null)
	{
	}

	public DesignSurfaceManager(IServiceProvider parentProvider)
	{
		_parentProvider = parentProvider;
		ServiceContainer.AddService(typeof(IDesignerEventService), new DesignerEventService());
	}

	protected virtual DesignSurface CreateDesignSurfaceCore(IServiceProvider parentProvider)
	{
		DesignSurface designSurface = new DesignSurface(parentProvider);
		OnDesignSurfaceCreated(designSurface);
		return designSurface;
	}

	public DesignSurface CreateDesignSurface()
	{
		return CreateDesignSurfaceCore(this);
	}

	public DesignSurface CreateDesignSurface(IServiceProvider parentProvider)
	{
		if (parentProvider == null)
		{
			throw new ArgumentNullException("parentProvider");
		}
		return CreateDesignSurfaceCore(new MergedServiceProvider(parentProvider, this));
	}

	private void OnSelectionChanged(object sender, EventArgs args)
	{
		if (SelectionChanged != null)
		{
			SelectionChanged(this, EventArgs.Empty);
		}
		if (GetService(typeof(IDesignerEventService)) is DesignerEventService designerEventService)
		{
			designerEventService.RaiseSelectionChanged();
		}
	}

	private void OnDesignSurfaceCreated(DesignSurface surface)
	{
		if (DesignSurfaceCreated != null)
		{
			DesignSurfaceCreated(this, new DesignSurfaceEventArgs(surface));
		}
		surface.Disposed += OnDesignSurfaceDisposed;
		if (GetService(typeof(IDesignerEventService)) is DesignerEventService designerEventService)
		{
			designerEventService.RaiseDesignerCreated(surface.GetService(typeof(IDesignerHost)) as IDesignerHost);
		}
	}

	private void OnDesignSurfaceDisposed(object sender, EventArgs args)
	{
		DesignSurface designSurface = (DesignSurface)sender;
		designSurface.Disposed -= OnDesignSurfaceDisposed;
		if (DesignSurfaceDisposed != null)
		{
			DesignSurfaceDisposed(this, new DesignSurfaceEventArgs(designSurface));
		}
		if (GetService(typeof(IDesignerEventService)) is DesignerEventService designerEventService)
		{
			designerEventService.RaiseDesignerDisposed(designSurface.GetService(typeof(IDesignerHost)) as IDesignerHost);
		}
	}

	public object GetService(Type serviceType)
	{
		if (_serviceContainer != null)
		{
			return _serviceContainer.GetService(serviceType);
		}
		return null;
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (disposing && _serviceContainer != null)
		{
			_serviceContainer.Dispose();
			_serviceContainer = null;
		}
	}
}
