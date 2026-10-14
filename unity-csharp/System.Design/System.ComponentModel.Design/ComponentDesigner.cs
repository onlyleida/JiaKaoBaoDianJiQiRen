using System.Collections;

namespace System.ComponentModel.Design;

public class ComponentDesigner : ITreeDesigner, IDesigner, IDisposable, IDesignerFilter, IComponentInitializer
{
	protected sealed class ShadowPropertyCollection
	{
		private Hashtable _properties;

		private IComponent _component;

		public object this[string propertyName]
		{
			get
			{
				if (propertyName == null)
				{
					throw new ArgumentNullException("propertyName");
				}
				if (_properties != null && _properties.ContainsKey(propertyName))
				{
					return _properties[propertyName];
				}
				PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(_component.GetType())[propertyName];
				if (propertyDescriptor != null)
				{
					return propertyDescriptor.GetValue(_component);
				}
				throw new Exception("Propery not found!");
			}
			set
			{
				if (_properties == null)
				{
					_properties = new Hashtable();
				}
				_properties[propertyName] = value;
			}
		}

		internal ShadowPropertyCollection(IComponent component)
		{
			_component = component;
		}

		public bool Contains(string propertyName)
		{
			if (_properties != null)
			{
				return _properties.ContainsKey(propertyName);
			}
			return false;
		}
	}

	private IComponent _component;

	private DesignerVerbCollection _verbs;

	private ShadowPropertyCollection _shadowPropertyCollection;

	private DesignerActionListCollection _designerActionList;

	public virtual ICollection AssociatedComponents => new IComponent[0];

	public IComponent Component => _component;

	public virtual DesignerVerbCollection Verbs
	{
		get
		{
			if (_verbs == null)
			{
				_verbs = new DesignerVerbCollection();
			}
			return _verbs;
		}
	}

	protected virtual InheritanceAttribute InheritanceAttribute
	{
		get
		{
			IInheritanceService inheritanceService = (IInheritanceService)GetService(typeof(IInheritanceService));
			if (inheritanceService != null)
			{
				return inheritanceService.GetInheritanceAttribute(_component);
			}
			return InheritanceAttribute.Default;
		}
	}

	protected bool Inherited => !InheritanceAttribute.Equals(InheritanceAttribute.NotInherited);

	protected ShadowPropertyCollection ShadowProperties
	{
		get
		{
			if (_shadowPropertyCollection == null)
			{
				_shadowPropertyCollection = new ShadowPropertyCollection(_component);
			}
			return _shadowPropertyCollection;
		}
	}

	public virtual DesignerActionListCollection ActionLists
	{
		get
		{
			if (_designerActionList == null)
			{
				_designerActionList = new DesignerActionListCollection();
			}
			return _designerActionList;
		}
	}

	protected virtual IComponent ParentComponent
	{
		get
		{
			if (GetService(typeof(IDesignerHost)) is IDesignerHost { RootComponent: var rootComponent } && rootComponent != _component)
			{
				return rootComponent;
			}
			return null;
		}
	}

	ICollection ITreeDesigner.Children
	{
		get
		{
			ICollection associatedComponents = AssociatedComponents;
			if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				ArrayList arrayList = new ArrayList();
				foreach (IComponent item in associatedComponents)
				{
					IDesigner designer = designerHost.GetDesigner(item);
					if (designer != null)
					{
						arrayList.Add(designer);
					}
				}
				IDesigner[] array = new IDesigner[arrayList.Count];
				arrayList.CopyTo(array);
				return array;
			}
			return new IDesigner[0];
		}
	}

	IDesigner ITreeDesigner.Parent
	{
		get
		{
			if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && ParentComponent != null)
			{
				return designerHost.GetDesigner(ParentComponent);
			}
			return null;
		}
	}

	public virtual void InitializeNewComponent(IDictionary defaultValues)
	{
		OnSetComponentDefaults();
	}

	public virtual void InitializeExistingComponent(IDictionary defaultValues)
	{
		InitializeNonDefault();
	}

	public virtual void Initialize(IComponent component)
	{
		if (component == null)
		{
			throw new ArgumentNullException("component");
		}
		_component = component;
	}

	[Obsolete("This method has been deprecated. Use InitializeExistingComponent instead.")]
	public virtual void InitializeNonDefault()
	{
	}

	public virtual void DoDefaultAction()
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		DesignerTransaction designerTransaction = null;
		if (designerHost != null)
		{
			designerTransaction = designerHost.CreateTransaction("ComponentDesigner_AddEvent");
		}
		IEventBindingService eventBindingService = GetService(typeof(IEventBindingService)) as IEventBindingService;
		EventDescriptor eventDescriptor = null;
		if (eventBindingService == null)
		{
			return;
		}
		ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
		try
		{
			if (selectionService != null)
			{
				foreach (IComponent selectedComponent in selectionService.GetSelectedComponents())
				{
					EventDescriptor defaultEvent = TypeDescriptor.GetDefaultEvent(selectedComponent);
					if (defaultEvent == null)
					{
						continue;
					}
					PropertyDescriptor eventProperty = eventBindingService.GetEventProperty(defaultEvent);
					if (eventProperty == null || eventProperty.IsReadOnly)
					{
						continue;
					}
					string text = eventProperty.GetValue(selectedComponent) as string;
					bool flag = true;
					if (text != null || text != string.Empty)
					{
						foreach (string compatibleMethod in eventBindingService.GetCompatibleMethods(defaultEvent))
						{
							if (compatibleMethod == text)
							{
								flag = false;
								break;
							}
						}
					}
					if (flag)
					{
						if (text == null)
						{
							text = eventBindingService.CreateUniqueMethodName(selectedComponent, defaultEvent);
						}
						eventProperty.SetValue(selectedComponent, text);
					}
					if (selectedComponent == _component)
					{
						eventDescriptor = defaultEvent;
					}
				}
			}
		}
		catch
		{
			if (designerTransaction != null)
			{
				designerTransaction.Cancel();
				designerTransaction = null;
			}
		}
		finally
		{
			designerTransaction?.Commit();
		}
		if (eventDescriptor != null)
		{
			eventBindingService.ShowCode(_component, eventDescriptor);
		}
	}

	[Obsolete("This method has been deprecated. Use InitializeNewComponent instead.")]
	public virtual void OnSetComponentDefaults()
	{
		if (_component == null || _component.Site == null)
		{
			return;
		}
		PropertyDescriptor defaultProperty = TypeDescriptor.GetDefaultProperty(_component);
		if (defaultProperty != null && defaultProperty.PropertyType.Equals(typeof(string)))
		{
			string text = (string)defaultProperty.GetValue(_component);
			if (text != null && text.Length != 0)
			{
				defaultProperty.SetValue(_component, _component.Site.Name);
			}
		}
	}

	protected InheritanceAttribute InvokeGetInheritanceAttribute(ComponentDesigner toInvoke)
	{
		return toInvoke.InheritanceAttribute;
	}

	protected virtual void PostFilterAttributes(IDictionary attributes)
	{
	}

	protected virtual void PostFilterEvents(IDictionary events)
	{
	}

	protected virtual void PostFilterProperties(IDictionary properties)
	{
	}

	protected virtual void PreFilterAttributes(IDictionary attributes)
	{
	}

	protected virtual void PreFilterEvents(IDictionary events)
	{
	}

	protected virtual void PreFilterProperties(IDictionary properties)
	{
	}

	protected void RaiseComponentChanged(MemberDescriptor member, object oldValue, object newValue)
	{
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.OnComponentChanged(_component, member, oldValue, newValue);
		}
	}

	protected void RaiseComponentChanging(MemberDescriptor member)
	{
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.OnComponentChanging(_component, member);
		}
	}

	void IDesignerFilter.PostFilterAttributes(IDictionary attributes)
	{
		PostFilterAttributes(attributes);
	}

	void IDesignerFilter.PostFilterEvents(IDictionary events)
	{
		PostFilterEvents(events);
	}

	void IDesignerFilter.PostFilterProperties(IDictionary properties)
	{
		PostFilterProperties(properties);
	}

	void IDesignerFilter.PreFilterAttributes(IDictionary attributes)
	{
		PreFilterAttributes(attributes);
	}

	void IDesignerFilter.PreFilterEvents(IDictionary events)
	{
		PreFilterEvents(events);
	}

	void IDesignerFilter.PreFilterProperties(IDictionary properties)
	{
		PreFilterProperties(properties);
	}

	protected virtual object GetService(Type serviceType)
	{
		if (_component != null && _component.Site != null)
		{
			return _component.Site.GetService(serviceType);
		}
		return null;
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (disposing)
		{
			_component = null;
		}
	}

	~ComponentDesigner()
	{
		Dispose(disposing: false);
	}
}
