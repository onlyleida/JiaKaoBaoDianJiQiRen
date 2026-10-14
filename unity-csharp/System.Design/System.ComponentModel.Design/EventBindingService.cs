using System.Collections;
using System.Collections.Generic;

namespace System.ComponentModel.Design;

public abstract class EventBindingService : IEventBindingService
{
	private IServiceProvider _provider;

	protected EventBindingService(IServiceProvider provider)
	{
		if (provider == null)
		{
			throw new ArgumentNullException("provider");
		}
		_provider = provider;
	}

	protected abstract bool ShowCode(IComponent component, EventDescriptor e, string methodName);

	protected abstract bool ShowCode(int lineNumber);

	protected abstract bool ShowCode();

	protected abstract string CreateUniqueMethodName(IComponent component, EventDescriptor e);

	protected abstract ICollection GetCompatibleMethods(EventDescriptor e);

	protected virtual void FreeMethod(IComponent component, EventDescriptor e, string methodName)
	{
	}

	protected virtual void UseMethod(IComponent component, EventDescriptor e, string methodName)
	{
	}

	protected virtual void ValidateMethodName(string methodName)
	{
	}

	protected object GetService(Type serviceType)
	{
		if (_provider != null)
		{
			return _provider.GetService(serviceType);
		}
		return null;
	}

	string IEventBindingService.CreateUniqueMethodName(IComponent component, EventDescriptor eventDescriptor)
	{
		if (eventDescriptor == null)
		{
			throw new ArgumentNullException("eventDescriptor");
		}
		if (component == null)
		{
			throw new ArgumentNullException("component");
		}
		return CreateUniqueMethodName(component, eventDescriptor);
	}

	ICollection IEventBindingService.GetCompatibleMethods(EventDescriptor eventDescriptor)
	{
		if (eventDescriptor == null)
		{
			throw new ArgumentNullException("eventDescriptor");
		}
		return GetCompatibleMethods(eventDescriptor);
	}

	EventDescriptor IEventBindingService.GetEvent(PropertyDescriptor property)
	{
		if (property == null)
		{
			throw new ArgumentNullException("property");
		}
		if (!(property is EventPropertyDescriptor eventPropertyDescriptor))
		{
			return null;
		}
		return eventPropertyDescriptor.InternalEventDescriptor;
	}

	PropertyDescriptorCollection IEventBindingService.GetEventProperties(EventDescriptorCollection events)
	{
		if (events == null)
		{
			throw new ArgumentNullException("events");
		}
		List<PropertyDescriptor> list = new List<PropertyDescriptor>();
		foreach (EventDescriptor @event in events)
		{
			list.Add(((IEventBindingService)this).GetEventProperty(@event));
		}
		return new PropertyDescriptorCollection(list.ToArray());
	}

	PropertyDescriptor IEventBindingService.GetEventProperty(EventDescriptor eventDescriptor)
	{
		if (eventDescriptor == null)
		{
			throw new ArgumentNullException("eventDescriptor");
		}
		return new EventPropertyDescriptor(eventDescriptor);
	}

	bool IEventBindingService.ShowCode(IComponent component, EventDescriptor eventDescriptor)
	{
		if (component == null)
		{
			throw new ArgumentNullException("component");
		}
		if (eventDescriptor == null)
		{
			throw new ArgumentNullException("eventDescriptor");
		}
		return ShowCode(component, eventDescriptor, (string)((IEventBindingService)this).GetEventProperty(eventDescriptor).GetValue(component));
	}

	bool IEventBindingService.ShowCode(int lineNumber)
	{
		return ShowCode(lineNumber);
	}

	bool IEventBindingService.ShowCode()
	{
		return ShowCode();
	}
}
