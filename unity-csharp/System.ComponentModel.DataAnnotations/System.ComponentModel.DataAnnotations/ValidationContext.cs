using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Globalization;

namespace System.ComponentModel.DataAnnotations;

public sealed class ValidationContext : IServiceProvider
{
	private class ValidationContextServiceContainer : IServiceContainer, IServiceProvider
	{
		private IServiceContainer _parentContainer;

		private Dictionary<Type, object> _services = new Dictionary<Type, object>();

		private readonly object _lock = new object();

		internal ValidationContextServiceContainer()
		{
		}

		internal ValidationContextServiceContainer(IServiceContainer parentContainer)
		{
			_parentContainer = parentContainer;
		}

		public void AddService(Type serviceType, ServiceCreatorCallback callback, bool promote)
		{
			if (promote && _parentContainer != null)
			{
				_parentContainer.AddService(serviceType, callback, promote);
				return;
			}
			lock (_lock)
			{
				if (_services.ContainsKey(serviceType))
				{
					throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "A service of type '{0}' already exists in the container.", serviceType), "serviceType");
				}
				_services.Add(serviceType, callback);
			}
		}

		public void AddService(Type serviceType, ServiceCreatorCallback callback)
		{
			AddService(serviceType, callback, promote: true);
		}

		public void AddService(Type serviceType, object serviceInstance, bool promote)
		{
			if (promote && _parentContainer != null)
			{
				_parentContainer.AddService(serviceType, serviceInstance, promote);
				return;
			}
			lock (_lock)
			{
				if (_services.ContainsKey(serviceType))
				{
					throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "A service of type '{0}' already exists in the container.", serviceType), "serviceType");
				}
				_services.Add(serviceType, serviceInstance);
			}
		}

		public void AddService(Type serviceType, object serviceInstance)
		{
			AddService(serviceType, serviceInstance, promote: true);
		}

		public void RemoveService(Type serviceType, bool promote)
		{
			lock (_lock)
			{
				if (_services.ContainsKey(serviceType))
				{
					_services.Remove(serviceType);
				}
			}
			if (promote && _parentContainer != null)
			{
				_parentContainer.RemoveService(serviceType);
			}
		}

		public void RemoveService(Type serviceType)
		{
			RemoveService(serviceType, promote: true);
		}

		public object GetService(Type serviceType)
		{
			if (serviceType == null)
			{
				throw new ArgumentNullException("serviceType");
			}
			object value = null;
			_services.TryGetValue(serviceType, out value);
			if (value == null && _parentContainer != null)
			{
				value = _parentContainer.GetService(serviceType);
			}
			if (value is ServiceCreatorCallback serviceCreatorCallback)
			{
				value = serviceCreatorCallback(this, serviceType);
			}
			return value;
		}
	}

	private Func<Type, object> _serviceProvider;

	private object _objectInstance;

	private string _memberName;

	private string _displayName;

	private Dictionary<object, object> _items;

	private IServiceContainer _serviceContainer;

	public object ObjectInstance => _objectInstance;

	public Type ObjectType => ObjectInstance.GetType();

	public string DisplayName
	{
		get
		{
			if (string.IsNullOrEmpty(_displayName))
			{
				_displayName = GetDisplayName();
				if (string.IsNullOrEmpty(_displayName))
				{
					_displayName = MemberName;
					if (string.IsNullOrEmpty(_displayName))
					{
						_displayName = ObjectType.Name;
					}
				}
			}
			return _displayName;
		}
		set
		{
			if (string.IsNullOrEmpty(value))
			{
				throw new ArgumentNullException("value");
			}
			_displayName = value;
		}
	}

	public string MemberName
	{
		get
		{
			return _memberName;
		}
		set
		{
			_memberName = value;
		}
	}

	public IDictionary<object, object> Items => _items;

	public IServiceContainer ServiceContainer
	{
		get
		{
			if (_serviceContainer == null)
			{
				_serviceContainer = new ValidationContextServiceContainer();
			}
			return _serviceContainer;
		}
	}

	public ValidationContext(object instance)
		: this(instance, null, null)
	{
	}

	public ValidationContext(object instance, IDictionary<object, object> items)
		: this(instance, null, items)
	{
	}

	public ValidationContext(object instance, IServiceProvider serviceProvider, IDictionary<object, object> items)
	{
		if (instance == null)
		{
			throw new ArgumentNullException("instance");
		}
		if (serviceProvider != null)
		{
			InitializeServiceProvider((Type serviceType) => serviceProvider.GetService(serviceType));
		}
		if (serviceProvider is IServiceContainer parentContainer)
		{
			_serviceContainer = new ValidationContextServiceContainer(parentContainer);
		}
		else
		{
			_serviceContainer = new ValidationContextServiceContainer();
		}
		if (items != null)
		{
			_items = new Dictionary<object, object>(items);
		}
		else
		{
			_items = new Dictionary<object, object>();
		}
		_objectInstance = instance;
	}

	private string GetDisplayName()
	{
		string text = null;
		ValidationAttributeStore instance = ValidationAttributeStore.Instance;
		DisplayAttribute displayAttribute = null;
		if (string.IsNullOrEmpty(_memberName))
		{
			displayAttribute = instance.GetTypeDisplayAttribute(this);
		}
		else if (instance.IsPropertyContext(this))
		{
			displayAttribute = instance.GetPropertyDisplayAttribute(this);
		}
		if (displayAttribute != null)
		{
			text = displayAttribute.GetName();
		}
		return text ?? MemberName;
	}

	public void InitializeServiceProvider(Func<Type, object> serviceProvider)
	{
		_serviceProvider = serviceProvider;
	}

	public object GetService(Type serviceType)
	{
		object obj = null;
		if (_serviceContainer != null)
		{
			obj = _serviceContainer.GetService(serviceType);
		}
		if (obj == null && _serviceProvider != null)
		{
			obj = _serviceProvider(serviceType);
		}
		return obj;
	}
}
