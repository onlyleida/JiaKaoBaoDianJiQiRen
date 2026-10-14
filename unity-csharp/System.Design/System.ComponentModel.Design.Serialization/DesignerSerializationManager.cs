using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using Unity;

namespace System.ComponentModel.Design.Serialization;

public class DesignerSerializationManager : IDesignerSerializationManager, IServiceProvider
{
	private class Session : IDisposable
	{
		private DesignerSerializationManager _manager;

		public Session(DesignerSerializationManager manager)
		{
			_manager = manager;
		}

		public void Dispose()
		{
			_manager.OnSessionDisposed(EventArgs.Empty);
		}
	}

	private IServiceProvider _serviceProvider;

	private bool _preserveNames;

	private bool _validateRecycledTypes;

	private bool _recycleInstances;

	private IContainer _designerContainer;

	private object _propertyProvider;

	private Session _session;

	private ArrayList _errors;

	private List<IDesignerSerializationProvider> _serializationProviders;

	private Dictionary<Type, object> _serializersCache;

	private Dictionary<string, object> _instancesByNameCache;

	private Dictionary<object, string> _instancesByValueCache;

	private ContextStack _contextStack;

	private EventHandler _serializationCompleteHandler;

	private ResolveNameEventHandler _resolveNameHandler;

	public bool RecycleInstances
	{
		get
		{
			return _recycleInstances;
		}
		set
		{
			VerifyNotInSession();
			_recycleInstances = value;
		}
	}

	public bool PreserveNames
	{
		get
		{
			return _preserveNames;
		}
		set
		{
			VerifyNotInSession();
			_preserveNames = value;
		}
	}

	public bool ValidateRecycledTypes
	{
		get
		{
			return _validateRecycledTypes;
		}
		set
		{
			VerifyNotInSession();
			_validateRecycledTypes = value;
		}
	}

	public IContainer Container
	{
		get
		{
			if (_designerContainer == null)
			{
				_designerContainer = (GetService(typeof(IDesignerHost)) as IDesignerHost).Container;
			}
			return _designerContainer;
		}
		set
		{
			VerifyNotInSession();
			_designerContainer = value;
		}
	}

	public object PropertyProvider
	{
		get
		{
			return _propertyProvider;
		}
		set
		{
			_propertyProvider = value;
		}
	}

	public IList Errors => _errors;

	ContextStack IDesignerSerializationManager.Context => _contextStack;

	PropertyDescriptorCollection IDesignerSerializationManager.Properties
	{
		get
		{
			PropertyDescriptorCollection result = new PropertyDescriptorCollection(new PropertyDescriptor[0]);
			object propertyProvider = PropertyProvider;
			if (propertyProvider != null)
			{
				result = TypeDescriptor.GetProperties(propertyProvider);
			}
			return result;
		}
	}

	public event EventHandler SessionDisposed;

	public event EventHandler SessionCreated;

	event EventHandler IDesignerSerializationManager.SerializationComplete
	{
		add
		{
			VerifyInSession();
			_serializationCompleteHandler = (EventHandler)Delegate.Combine(_serializationCompleteHandler, value);
		}
		remove
		{
			_serializationCompleteHandler = (EventHandler)Delegate.Remove(_serializationCompleteHandler, value);
		}
	}

	event ResolveNameEventHandler IDesignerSerializationManager.ResolveName
	{
		add
		{
			VerifyInSession();
			_resolveNameHandler = (ResolveNameEventHandler)Delegate.Combine(_resolveNameHandler, value);
		}
		remove
		{
			_resolveNameHandler = (ResolveNameEventHandler)Delegate.Remove(_resolveNameHandler, value);
		}
	}

	public DesignerSerializationManager()
		: this(null)
	{
	}

	public DesignerSerializationManager(IServiceProvider provider)
	{
		_serviceProvider = provider;
		_preserveNames = true;
		_validateRecycledTypes = true;
	}

	protected virtual void OnSessionCreated(EventArgs e)
	{
		if (SessionCreated != null)
		{
			SessionCreated(this, e);
		}
	}

	protected virtual object CreateInstance(Type type, ICollection arguments, string name, bool addToContainer)
	{
		VerifyInSession();
		object value = null;
		if (name != null && _recycleInstances)
		{
			_instancesByNameCache.TryGetValue(name, out value);
			if (value != null && _validateRecycledTypes && value.GetType() != type)
			{
				value = null;
			}
		}
		if (value == null || !_recycleInstances)
		{
			value = CreateInstance(type, arguments);
		}
		if (addToContainer && value != null && Container != null && typeof(IComponent).IsAssignableFrom(type))
		{
			if (_preserveNames)
			{
				Container.Add((IComponent)value, name);
			}
			else if (name != null && Container.Components[name] != null)
			{
				Container.Add((IComponent)value);
			}
			else
			{
				Container.Add((IComponent)value, name);
			}
			ISite site = ((IComponent)value).Site;
			if (site != null)
			{
				name = site.Name;
			}
		}
		if (value != null && name != null)
		{
			_instancesByNameCache[name] = value;
			_instancesByValueCache[value] = name;
		}
		return value;
	}

	private object CreateInstance(Type type, ICollection argsCollection)
	{
		object result = null;
		object[] array = null;
		Type[] array2 = new Type[0];
		if (argsCollection != null)
		{
			array = new object[argsCollection.Count];
			array2 = new Type[argsCollection.Count];
			argsCollection.CopyTo(array, 0);
			for (int i = 0; i < array.Length; i++)
			{
				if (array[i] == null)
				{
					array2[i] = null;
				}
				else
				{
					array2[i] = array[i].GetType();
				}
			}
		}
		ConstructorInfo constructor = type.GetConstructor(array2);
		if (constructor != null)
		{
			result = constructor.Invoke(array);
		}
		return result;
	}

	public object GetSerializer(Type objectType, Type serializerType)
	{
		VerifyInSession();
		if (serializerType == null)
		{
			throw new ArgumentNullException("serializerType");
		}
		object value = null;
		if (objectType != null)
		{
			_serializersCache.TryGetValue(objectType, out value);
			if (value != null && !serializerType.IsAssignableFrom(value.GetType()))
			{
				value = null;
			}
			if (TypeDescriptor.GetAttributes(objectType)[typeof(DefaultSerializationProviderAttribute)] is DefaultSerializationProviderAttribute defaultSerializationProviderAttribute && GetType(defaultSerializationProviderAttribute.ProviderTypeName) == serializerType)
			{
				object obj = Activator.CreateInstance(GetType(defaultSerializationProviderAttribute.ProviderTypeName), BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, null, null);
				((IDesignerSerializationManager)this).AddSerializationProvider((IDesignerSerializationProvider)obj);
			}
		}
		if (value == null && objectType != null)
		{
			if (TypeDescriptor.GetAttributes(objectType)[typeof(DesignerSerializerAttribute)] is DesignerSerializerAttribute designerSerializerAttribute && GetType(designerSerializerAttribute.SerializerBaseTypeName) == serializerType)
			{
				try
				{
					value = Activator.CreateInstance(GetType(designerSerializerAttribute.SerializerTypeName), BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.CreateInstance, null, null, null);
				}
				catch
				{
				}
			}
			if (value != null)
			{
				_serializersCache[objectType] = value;
			}
		}
		if (value == null && _serializationProviders != null)
		{
			foreach (IDesignerSerializationProvider serializationProvider in _serializationProviders)
			{
				value = serializationProvider.GetSerializer(this, null, objectType, serializerType);
				if (value != null)
				{
					break;
				}
			}
		}
		return value;
	}

	private void VerifyInSession()
	{
		if (_session == null)
		{
			throw new InvalidOperationException("Not in session.");
		}
	}

	private void VerifyNotInSession()
	{
		if (_session != null)
		{
			throw new InvalidOperationException("In session.");
		}
	}

	public IDisposable CreateSession()
	{
		VerifyNotInSession();
		_errors = new ArrayList();
		_session = new Session(this);
		_serializersCache = new Dictionary<Type, object>();
		_instancesByNameCache = new Dictionary<string, object>();
		_instancesByValueCache = new Dictionary<object, string>();
		_contextStack = new ContextStack();
		OnSessionCreated(EventArgs.Empty);
		return _session;
	}

	protected virtual void OnSessionDisposed(EventArgs e)
	{
		_errors.Clear();
		_errors = null;
		_serializersCache.Clear();
		_serializersCache = null;
		_instancesByNameCache.Clear();
		_instancesByNameCache = null;
		_instancesByValueCache.Clear();
		_instancesByValueCache = null;
		_session = null;
		_contextStack = null;
		_resolveNameHandler = null;
		_serializationCompleteHandler = null;
		if (SessionDisposed != null)
		{
			SessionDisposed(this, e);
		}
		if (_serializationCompleteHandler != null)
		{
			_serializationCompleteHandler(this, EventArgs.Empty);
		}
	}

	protected virtual Type GetType(string typeName)
	{
		if (typeName == null)
		{
			throw new ArgumentNullException("typeName");
		}
		VerifyInSession();
		Type type = null;
		if (GetService(typeof(ITypeResolutionService)) is ITypeResolutionService typeResolutionService)
		{
			type = typeResolutionService.GetType(typeName);
		}
		if (type == null)
		{
			type = Type.GetType(typeName);
		}
		return type;
	}

	protected virtual void OnResolveName(ResolveNameEventArgs e)
	{
		if (_resolveNameHandler != null)
		{
			_resolveNameHandler(this, e);
		}
	}

	void IDesignerSerializationManager.AddSerializationProvider(IDesignerSerializationProvider provider)
	{
		if (_serializationProviders == null)
		{
			_serializationProviders = new List<IDesignerSerializationProvider>();
		}
		if (!_serializationProviders.Contains(provider))
		{
			_serializationProviders.Add(provider);
		}
	}

	void IDesignerSerializationManager.RemoveSerializationProvider(IDesignerSerializationProvider provider)
	{
		if (_serializationProviders != null)
		{
			_serializationProviders.Remove(provider);
		}
	}

	object IDesignerSerializationManager.CreateInstance(Type type, ICollection arguments, string name, bool addToContainer)
	{
		return CreateInstance(type, arguments, name, addToContainer);
	}

	object IDesignerSerializationManager.GetInstance(string name)
	{
		if (name == null)
		{
			throw new ArgumentNullException("name");
		}
		VerifyInSession();
		object value = null;
		_instancesByNameCache.TryGetValue(name, out value);
		if (value == null && Container != null)
		{
			value = Container.Components[name];
		}
		if (value == null)
		{
			value = RequestInstance(name);
		}
		return value;
	}

	private object RequestInstance(string name)
	{
		ResolveNameEventArgs e = new ResolveNameEventArgs(name);
		OnResolveName(e);
		return e.Value;
	}

	Type IDesignerSerializationManager.GetType(string name)
	{
		return GetType(name);
	}

	object IDesignerSerializationManager.GetSerializer(Type type, Type serializerType)
	{
		return GetSerializer(type, serializerType);
	}

	string IDesignerSerializationManager.GetName(object instance)
	{
		if (instance == null)
		{
			throw new ArgumentNullException("instance");
		}
		VerifyInSession();
		string value = null;
		if (instance is IComponent)
		{
			ISite site = ((IComponent)instance).Site;
			if (site != null && site is INestedSite)
			{
				value = ((INestedSite)site).FullName;
			}
			else if (site != null)
			{
				value = site.Name;
			}
		}
		if (value == null)
		{
			_instancesByValueCache.TryGetValue(instance, out value);
		}
		return value;
	}

	void IDesignerSerializationManager.SetName(object instance, string name)
	{
		if (instance == null)
		{
			throw new ArgumentNullException("instance");
		}
		if (name == null)
		{
			throw new ArgumentNullException("name");
		}
		if (_instancesByNameCache.ContainsKey(name))
		{
			throw new ArgumentException("The object specified by instance already has a name, or name is already used by another named object.");
		}
		_instancesByNameCache.Add(name, instance);
		_instancesByValueCache.Add(instance, name);
	}

	void IDesignerSerializationManager.ReportError(object error)
	{
		VerifyInSession();
		_errors.Add(error);
	}

	object IServiceProvider.GetService(Type serviceType)
	{
		return GetService(serviceType);
	}

	protected virtual object GetService(Type serviceType)
	{
		object result = null;
		if (_serviceProvider != null)
		{
			result = _serviceProvider.GetService(serviceType);
		}
		return result;
	}

	public Type GetRuntimeType(string typeName)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
