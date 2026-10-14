using System.Collections;
using System.Windows.Forms;

namespace System.ComponentModel.Design.Serialization;

public abstract class BasicDesignerLoader : DesignerLoader, IDesignerLoaderService
{
	[Flags]
	protected enum ReloadOptions
	{
		Default = 0,
		Force = 1,
		ModifyOnError = 2,
		NoFlush = Force | ModifyOnError
	}

	private bool _loaded;

	private bool _loading;

	private IDesignerLoaderHost _host;

	private int _dependenciesCount;

	private bool _notificationsEnabled;

	private bool _modified;

	private string _baseComponentClassName;

	private DesignerSerializationManager _serializationMananger;

	private bool _flushing;

	private bool _reloadScheduled;

	private ReloadOptions _reloadOptions;

	public override bool Loading => _loading;

	protected IDesignerLoaderHost LoaderHost => _host;

	protected virtual bool Modified
	{
		get
		{
			return _modified;
		}
		set
		{
			_modified = value;
		}
	}

	protected object PropertyProvider
	{
		get
		{
			if (!_loaded)
			{
				throw new InvalidOperationException("host not initialized");
			}
			return _serializationMananger.PropertyProvider;
		}
		set
		{
			if (!_loaded)
			{
				throw new InvalidOperationException("host not initialized");
			}
			_serializationMananger.PropertyProvider = value;
		}
	}

	protected bool ReloadPending => _reloadScheduled;

	protected BasicDesignerLoader()
	{
		_loading = (_loaded = (_flushing = (_reloadScheduled = false)));
		_host = null;
		_notificationsEnabled = false;
		_modified = false;
		_dependenciesCount = 0;
	}

	protected virtual void Initialize()
	{
		_serializationMananger = new DesignerSerializationManager(_host);
		if (_host.GetService(typeof(IServiceContainer)) is DesignSurfaceServiceContainer designSurfaceServiceContainer)
		{
			designSurfaceServiceContainer.AddService(typeof(IDesignerLoaderService), this);
			designSurfaceServiceContainer.AddNonReplaceableService(typeof(IDesignerSerializationManager), _serializationMananger);
		}
	}

	public override void BeginLoad(IDesignerLoaderHost host)
	{
		if (host == null)
		{
			throw new ArgumentNullException("host");
		}
		if (_loaded)
		{
			throw new InvalidOperationException("Already loaded.");
		}
		if (_host != null && _host != host)
		{
			throw new InvalidOperationException("Trying to load with a different host");
		}
		if (_host == null)
		{
			_host = host;
			Initialize();
		}
		IDisposable disposable = _serializationMananger.CreateSession();
		IDesignerLoaderService designerLoaderService = _host.GetService(typeof(IDesignerLoaderService)) as IDesignerLoaderService;
		if (designerLoaderService != null)
		{
			_dependenciesCount = -1;
			designerLoaderService.AddLoadDependency();
		}
		else
		{
			OnBeginLoad();
		}
		bool successful = true;
		try
		{
			PerformLoad(_serializationMananger);
		}
		catch (Exception value)
		{
			successful = false;
			_serializationMananger.Errors.Add(value);
		}
		if (designerLoaderService != null)
		{
			designerLoaderService.DependentLoadComplete(successful, _serializationMananger.Errors);
		}
		else
		{
			OnEndLoad(successful, _serializationMananger.Errors);
		}
		disposable.Dispose();
	}

	protected abstract void PerformLoad(IDesignerSerializationManager serializationManager);

	protected virtual void OnBeginLoad()
	{
		_loading = true;
	}

	protected virtual void OnEndLoad(bool successful, ICollection errors)
	{
		_host.EndLoad(_baseComponentClassName, successful, errors);
		if (successful)
		{
			_loaded = true;
			EnableComponentNotification(enable: true);
		}
		else if (_reloadScheduled && (_reloadOptions & ReloadOptions.ModifyOnError) == ReloadOptions.ModifyOnError)
		{
			OnModifying();
			Modified = true;
		}
		_loading = false;
	}

	protected virtual bool EnableComponentNotification(bool enable)
	{
		if (!_loaded)
		{
			throw new InvalidOperationException("host not initialized");
		}
		if (_host.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService && _notificationsEnabled != enable)
		{
			if (enable)
			{
				componentChangeService.ComponentAdding += OnComponentAdding;
				componentChangeService.ComponentAdded += OnComponentAdded;
				componentChangeService.ComponentRemoving += OnComponentRemoving;
				componentChangeService.ComponentRemoved += OnComponentRemoved;
				componentChangeService.ComponentChanging += OnComponentChanging;
				componentChangeService.ComponentChanged += OnComponentChanged;
				componentChangeService.ComponentRename += OnComponentRename;
			}
			else
			{
				componentChangeService.ComponentAdding -= OnComponentAdding;
				componentChangeService.ComponentAdded -= OnComponentAdded;
				componentChangeService.ComponentRemoving -= OnComponentRemoving;
				componentChangeService.ComponentRemoved -= OnComponentRemoved;
				componentChangeService.ComponentChanging -= OnComponentChanging;
				componentChangeService.ComponentChanged -= OnComponentChanged;
				componentChangeService.ComponentRename -= OnComponentRename;
			}
		}
		if (!_notificationsEnabled)
		{
			return false;
		}
		return true;
	}

	private void OnComponentAdded(object sender, ComponentEventArgs args)
	{
		if (!_loading && _loaded)
		{
			Modified = true;
		}
	}

	private void OnComponentRemoved(object sender, ComponentEventArgs args)
	{
		if (!_loading && _loaded)
		{
			Modified = true;
		}
	}

	private void OnComponentAdding(object sender, ComponentEventArgs args)
	{
		if (!_loading && _loaded)
		{
			OnModifying();
		}
	}

	private void OnComponentRemoving(object sender, ComponentEventArgs args)
	{
		if (!_loading && _loaded)
		{
			OnModifying();
		}
	}

	private void OnComponentChanged(object sender, ComponentChangedEventArgs args)
	{
		if (!_loading && _loaded)
		{
			Modified = true;
		}
	}

	private void OnComponentChanging(object sender, ComponentChangingEventArgs args)
	{
		if (!_loading && _loaded)
		{
			OnModifying();
		}
	}

	private void OnComponentRename(object sender, ComponentRenameEventArgs args)
	{
		if (!_loading && _loaded)
		{
			OnModifying();
			Modified = true;
		}
	}

	public override void Flush()
	{
		if (!_loaded)
		{
			throw new InvalidOperationException("host not initialized");
		}
		if (_flushing || !Modified)
		{
			return;
		}
		_flushing = true;
		using (_serializationMananger.CreateSession())
		{
			try
			{
				PerformFlush(_serializationMananger);
			}
			catch (Exception value)
			{
				_serializationMananger.Errors.Add(value);
				ReportFlushErrors(_serializationMananger.Errors);
			}
		}
		_flushing = false;
	}

	protected abstract void PerformFlush(IDesignerSerializationManager serializationManager);

	protected virtual bool IsReloadNeeded()
	{
		return true;
	}

	protected virtual void OnBeginUnload()
	{
	}

	protected virtual void OnModifying()
	{
	}

	protected void Reload(ReloadOptions flags)
	{
		if (!_reloadScheduled)
		{
			_reloadScheduled = true;
			_reloadOptions = flags;
			if ((flags & ReloadOptions.Force) == ReloadOptions.Force)
			{
				ReloadCore();
			}
			else
			{
				Application.Idle += OnIdle;
			}
		}
	}

	private void OnIdle(object sender, EventArgs args)
	{
		Application.Idle -= OnIdle;
		ReloadCore();
	}

	private void ReloadCore()
	{
		if ((_reloadOptions & ReloadOptions.NoFlush) != ReloadOptions.NoFlush)
		{
			Flush();
		}
		Unload();
		_host.Reload();
		BeginLoad(_host);
		_reloadScheduled = false;
	}

	private void Unload()
	{
		if (_loaded)
		{
			OnBeginUnload();
			EnableComponentNotification(enable: false);
			_loaded = false;
			_baseComponentClassName = null;
		}
	}

	protected virtual void ReportFlushErrors(ICollection errors)
	{
		object obj = null;
		foreach (object error in errors)
		{
			obj = error;
		}
		throw (Exception)obj;
	}

	protected void SetBaseComponentClassName(string name)
	{
		if (name == null)
		{
			throw new ArgumentNullException("name");
		}
		_baseComponentClassName = name;
	}

	void IDesignerLoaderService.AddLoadDependency()
	{
		_dependenciesCount++;
		if (_dependenciesCount == 0)
		{
			_dependenciesCount = 1;
			OnBeginLoad();
		}
	}

	void IDesignerLoaderService.DependentLoadComplete(bool successful, ICollection errorCollection)
	{
		if (_dependenciesCount == 0)
		{
			throw new InvalidOperationException("dependencies == 0");
		}
		_dependenciesCount--;
		if (_dependenciesCount == 0)
		{
			OnEndLoad(successful, errorCollection);
		}
	}

	bool IDesignerLoaderService.Reload()
	{
		if (_dependenciesCount == 0)
		{
			Reload(ReloadOptions.Force);
			return true;
		}
		return false;
	}

	protected object GetService(Type serviceType)
	{
		if (_host != null)
		{
			return _host.GetService(serviceType);
		}
		return null;
	}

	public override void Dispose()
	{
		LoaderHost.RemoveService(typeof(IDesignerLoaderService));
		Unload();
	}
}
