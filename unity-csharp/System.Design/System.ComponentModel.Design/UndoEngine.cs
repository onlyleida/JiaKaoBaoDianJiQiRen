using System.Collections.Generic;
using System.ComponentModel.Design.Serialization;

namespace System.ComponentModel.Design;

public abstract class UndoEngine : IDisposable
{
	protected class UndoUnit
	{
		private class Action
		{
			public virtual void Undo(UndoEngine engine)
			{
			}
		}

		private class ComponentRenameAction : Action
		{
			private string _oldName;

			private string _currentName;

			public ComponentRenameAction(string currentName, string oldName)
			{
				_currentName = currentName;
				_oldName = oldName;
			}

			public override void Undo(UndoEngine engine)
			{
				(engine.GetRequiredService(typeof(IDesignerHost)) as IDesignerHost).Container.Components[_currentName].Site.Name = _oldName;
				string currentName = _currentName;
				_currentName = _oldName;
				_oldName = currentName;
			}
		}

		private class ComponentAddRemoveAction : Action
		{
			private string _componentName;

			private SerializationStore _serializedComponent;

			private bool _added;

			public ComponentAddRemoveAction(UndoEngine engine, IComponent component, bool added)
			{
				if (component == null)
				{
					throw new ArgumentNullException("component");
				}
				ComponentSerializationService componentSerializationService = engine.GetRequiredService(typeof(ComponentSerializationService)) as ComponentSerializationService;
				_serializedComponent = componentSerializationService.CreateStore();
				componentSerializationService.Serialize(_serializedComponent, component);
				_serializedComponent.Close();
				_added = added;
				_componentName = component.Site.Name;
			}

			public override void Undo(UndoEngine engine)
			{
				IDesignerHost designerHost = engine.GetRequiredService(typeof(IDesignerHost)) as IDesignerHost;
				if (_added)
				{
					IComponent component = designerHost.Container.Components[_componentName];
					if (component != null)
					{
						designerHost.DestroyComponent(component);
					}
					_added = false;
				}
				else
				{
					(engine.GetRequiredService(typeof(ComponentSerializationService)) as ComponentSerializationService).DeserializeTo(_serializedComponent, designerHost.Container);
					_added = true;
				}
			}
		}

		private class ComponentChangeAction : Action
		{
			private string _componentName;

			private MemberDescriptor _member;

			private IComponent _component;

			private SerializationStore _afterChange;

			private SerializationStore _beforeChange;

			public bool IsComplete
			{
				get
				{
					if (_beforeChange != null)
					{
						return _afterChange != null;
					}
					return false;
				}
			}

			public string ComponentName => _componentName;

			public IComponent Component => _component;

			public MemberDescriptor Member => _member;

			public void SetOriginalState(UndoEngine engine, IComponent component, MemberDescriptor member)
			{
				_member = member;
				_component = component;
				_componentName = ((component.Site != null) ? component.Site.Name : null);
				ComponentSerializationService componentSerializationService = engine.GetRequiredService(typeof(ComponentSerializationService)) as ComponentSerializationService;
				_beforeChange = componentSerializationService.CreateStore();
				componentSerializationService.SerializeMemberAbsolute(_beforeChange, component, member);
				_beforeChange.Close();
			}

			public void SetModifiedState(UndoEngine engine, IComponent component, MemberDescriptor member)
			{
				ComponentSerializationService componentSerializationService = engine.GetRequiredService(typeof(ComponentSerializationService)) as ComponentSerializationService;
				_afterChange = componentSerializationService.CreateStore();
				componentSerializationService.SerializeMemberAbsolute(_afterChange, component, member);
				_afterChange.Close();
			}

			public override void Undo(UndoEngine engine)
			{
				if (_beforeChange != null)
				{
					IDesignerHost designerHost = (IDesignerHost)engine.GetRequiredService(typeof(IDesignerHost));
					_component = designerHost.Container.Components[_componentName];
					(engine.GetRequiredService(typeof(ComponentSerializationService)) as ComponentSerializationService).DeserializeTo(_beforeChange, designerHost.Container);
					SerializationStore beforeChange = _beforeChange;
					_beforeChange = _afterChange;
					_afterChange = beforeChange;
				}
			}
		}

		private UndoEngine _engine;

		private string _name;

		private bool _closed;

		private List<Action> _actions;

		protected UndoEngine UndoEngine => _engine;

		public virtual bool IsEmpty => _actions.Count == 0;

		public virtual string Name => _name;

		public UndoUnit(UndoEngine engine, string name)
		{
			if (engine == null)
			{
				throw new ArgumentNullException("engine");
			}
			if (name == null)
			{
				throw new ArgumentNullException("name");
			}
			_engine = engine;
			_name = name;
			_actions = new List<Action>();
		}

		public void Undo()
		{
			_engine.OnUndoing(EventArgs.Empty);
			UndoCore();
			_engine.OnUndone(EventArgs.Empty);
		}

		protected virtual void UndoCore()
		{
			for (int num = _actions.Count - 1; num >= 0; num--)
			{
				_actions[num].Undo(_engine);
			}
			_actions.Reverse();
		}

		public virtual void Close()
		{
			_closed = true;
		}

		public virtual void ComponentAdded(ComponentEventArgs e)
		{
			if (!_closed)
			{
				_actions.Add(new ComponentAddRemoveAction(_engine, e.Component, added: true));
			}
		}

		public virtual void ComponentAdding(ComponentEventArgs e)
		{
		}

		public virtual void ComponentChanged(ComponentChangedEventArgs e)
		{
			if (_closed)
			{
				return;
			}
			ComponentChangeAction componentChangeAction = null;
			for (int i = 0; i < _actions.Count; i++)
			{
				if (_actions[i] is ComponentChangeAction { IsComplete: false } componentChangeAction2 && componentChangeAction2.Component == e.Component && componentChangeAction2.Member.Equals(e.Member))
				{
					componentChangeAction2.SetModifiedState(_engine, (IComponent)e.Component, e.Member);
					break;
				}
			}
		}

		public virtual void ComponentChanging(ComponentChangingEventArgs e)
		{
			if (!_closed)
			{
				ComponentChangeAction componentChangeAction = new ComponentChangeAction();
				componentChangeAction.SetOriginalState(_engine, (IComponent)e.Component, e.Member);
				_actions.Add(componentChangeAction);
			}
		}

		public virtual void ComponentRemoved(ComponentEventArgs e)
		{
		}

		public virtual void ComponentRemoving(ComponentEventArgs e)
		{
			if (!_closed)
			{
				_actions.Add(new ComponentAddRemoveAction(_engine, e.Component, added: false));
			}
		}

		public virtual void ComponentRename(ComponentRenameEventArgs e)
		{
			if (!_closed)
			{
				_actions.Add(new ComponentRenameAction(e.NewName, e.OldName));
			}
		}

		protected object GetService(Type serviceType)
		{
			return _engine.GetService(serviceType);
		}

		public override string ToString()
		{
			return _name;
		}
	}

	private bool _undoing;

	private UndoUnit _currentUnit;

	private IServiceProvider _provider;

	private bool _enabled;

	public bool Enabled
	{
		get
		{
			return _enabled;
		}
		set
		{
			if (value)
			{
				Enable();
			}
			else
			{
				Disable();
			}
		}
	}

	public bool UndoInProgress => _undoing;

	public event EventHandler Undoing;

	public event EventHandler Undone;

	protected UndoEngine(IServiceProvider provider)
	{
		if (provider == null)
		{
			throw new ArgumentNullException("provider");
		}
		_provider = provider;
		_currentUnit = null;
		Enable();
	}

	private void Enable()
	{
		if (!_enabled)
		{
			IComponentChangeService obj = GetRequiredService(typeof(IComponentChangeService)) as IComponentChangeService;
			obj.ComponentAdding += OnComponentAdding;
			obj.ComponentAdded += OnComponentAdded;
			obj.ComponentRemoving += OnComponentRemoving;
			obj.ComponentRemoved += OnComponentRemoved;
			obj.ComponentChanging += OnComponentChanging;
			obj.ComponentChanged += OnComponentChanged;
			obj.ComponentRename += OnComponentRename;
			IDesignerHost obj2 = GetRequiredService(typeof(IDesignerHost)) as IDesignerHost;
			obj2.TransactionClosed += OnTransactionClosed;
			obj2.TransactionOpened += OnTransactionOpened;
			_enabled = true;
		}
	}

	private void Disable()
	{
		if (_enabled)
		{
			IComponentChangeService obj = GetRequiredService(typeof(IComponentChangeService)) as IComponentChangeService;
			obj.ComponentAdding -= OnComponentAdding;
			obj.ComponentAdded -= OnComponentAdded;
			obj.ComponentRemoving -= OnComponentRemoving;
			obj.ComponentRemoved -= OnComponentRemoved;
			obj.ComponentChanging -= OnComponentChanging;
			obj.ComponentChanged -= OnComponentChanged;
			obj.ComponentRename -= OnComponentRename;
			IDesignerHost obj2 = GetRequiredService(typeof(IDesignerHost)) as IDesignerHost;
			obj2.TransactionClosed -= OnTransactionClosed;
			obj2.TransactionOpened -= OnTransactionOpened;
			_enabled = false;
		}
	}

	private void OnTransactionOpened(object sender, EventArgs args)
	{
		if (_currentUnit == null)
		{
			IDesignerHost designerHost = GetRequiredService(typeof(IDesignerHost)) as IDesignerHost;
			_currentUnit = CreateUndoUnit(designerHost.TransactionDescription, primary: true);
		}
	}

	private void OnTransactionClosed(object sender, DesignerTransactionCloseEventArgs args)
	{
		if (!(GetRequiredService(typeof(IDesignerHost)) as IDesignerHost).InTransaction)
		{
			_currentUnit.Close();
			if (args.TransactionCommitted)
			{
				AddUndoUnit(_currentUnit);
			}
			else
			{
				_currentUnit.Undo();
				DiscardUndoUnit(_currentUnit);
			}
			_currentUnit = null;
		}
	}

	private void OnComponentAdding(object sender, ComponentEventArgs args)
	{
		if (_currentUnit == null)
		{
			_currentUnit = CreateUndoUnit("Add " + args.Component.GetType().Name, primary: true);
		}
		_currentUnit.ComponentAdding(args);
	}

	private void OnComponentAdded(object sender, ComponentEventArgs args)
	{
		if (_currentUnit == null)
		{
			_currentUnit = CreateUndoUnit("Add " + args.Component.Site.Name, primary: true);
		}
		_currentUnit.ComponentAdded(args);
		if (!(GetRequiredService(typeof(IDesignerHost)) as IDesignerHost).InTransaction)
		{
			_currentUnit.Close();
			AddUndoUnit(_currentUnit);
			_currentUnit = null;
		}
	}

	private void OnComponentRemoving(object sender, ComponentEventArgs args)
	{
		if (_currentUnit == null)
		{
			_currentUnit = CreateUndoUnit("Remove " + args.Component.Site.Name, primary: true);
		}
		_currentUnit.ComponentRemoving(args);
	}

	private void OnComponentRemoved(object sender, ComponentEventArgs args)
	{
		if (_currentUnit == null)
		{
			_currentUnit = CreateUndoUnit("Remove " + args.Component.GetType().Name, primary: true);
		}
		_currentUnit.ComponentRemoved(args);
		if (!(GetRequiredService(typeof(IDesignerHost)) as IDesignerHost).InTransaction)
		{
			_currentUnit.Close();
			AddUndoUnit(_currentUnit);
			_currentUnit = null;
		}
	}

	private void OnComponentChanging(object sender, ComponentChangingEventArgs args)
	{
		if (_currentUnit == null)
		{
			_currentUnit = CreateUndoUnit("Modify " + ((IComponent)args.Component).Site.Name + ((args.Member != null) ? ("." + args.Member.Name) : ""), primary: true);
		}
		_currentUnit.ComponentChanging(args);
	}

	private void OnComponentChanged(object sender, ComponentChangedEventArgs args)
	{
		if (_currentUnit == null)
		{
			_currentUnit = CreateUndoUnit("Modify " + ((IComponent)args.Component).Site.Name + "." + ((args.Member != null) ? ("." + args.Member.Name) : ""), primary: true);
		}
		_currentUnit.ComponentChanged(args);
		if (!(GetRequiredService(typeof(IDesignerHost)) as IDesignerHost).InTransaction)
		{
			_currentUnit.Close();
			AddUndoUnit(_currentUnit);
			_currentUnit = null;
		}
	}

	private void OnComponentRename(object sender, ComponentRenameEventArgs args)
	{
		if (_currentUnit == null)
		{
			_currentUnit = CreateUndoUnit("Rename " + ((IComponent)args.Component).Site.Name, primary: true);
		}
		_currentUnit.ComponentRename(args);
		if (!(GetRequiredService(typeof(IDesignerHost)) as IDesignerHost).InTransaction)
		{
			_currentUnit.Close();
			AddUndoUnit(_currentUnit);
			_currentUnit = null;
		}
	}

	protected virtual UndoUnit CreateUndoUnit(string name, bool primary)
	{
		return new UndoUnit(this, name);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (disposing && _currentUnit != null)
		{
			_currentUnit.Close();
			_currentUnit = null;
		}
	}

	protected object GetRequiredService(Type serviceType)
	{
		return GetService(serviceType) ?? throw new NotSupportedException("Service '" + serviceType.Name + "' missing");
	}

	protected object GetService(Type serviceType)
	{
		if (serviceType == null)
		{
			throw new ArgumentNullException("serviceType");
		}
		if (_provider != null)
		{
			return _provider.GetService(serviceType);
		}
		return null;
	}

	protected virtual void OnUndoing(EventArgs e)
	{
		Disable();
		_undoing = true;
		if (Undoing != null)
		{
			Undoing(this, e);
		}
	}

	protected virtual void OnUndone(EventArgs e)
	{
		Enable();
		_undoing = false;
		if (Undone != null)
		{
			Undone(this, e);
		}
	}

	protected abstract void AddUndoUnit(UndoUnit unit);

	protected virtual void DiscardUndoUnit(UndoUnit unit)
	{
	}
}
