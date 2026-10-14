using System.Collections;
using System.Collections.Generic;

namespace System.ComponentModel.Design;

public class MenuCommandService : IMenuCommandService, IDisposable
{
	private IServiceProvider _serviceProvider;

	private DesignerVerbCollection _globalVerbs;

	private DesignerVerbCollection _verbs;

	private Dictionary<CommandID, MenuCommand> _commands;

	public virtual DesignerVerbCollection Verbs
	{
		get
		{
			EnsureVerbs();
			return _verbs;
		}
	}

	public event MenuCommandsChangedEventHandler MenuCommandsChanged;

	public MenuCommandService(IServiceProvider serviceProvider)
	{
		if (serviceProvider == null)
		{
			throw new ArgumentNullException("serviceProvider");
		}
		_serviceProvider = serviceProvider;
		if (_serviceProvider.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SelectionChanged += OnSelectionChanged;
		}
	}

	private void OnSelectionChanged(object sender, EventArgs arg)
	{
		OnCommandsChanged(new MenuCommandsChangedEventArgs(MenuCommandsChangedType.CommandChanged, null));
	}

	public virtual void AddCommand(MenuCommand command)
	{
		if (command == null)
		{
			throw new ArgumentNullException("command");
		}
		if (_commands == null)
		{
			_commands = new Dictionary<CommandID, MenuCommand>();
		}
		_commands.Add(command.CommandID, command);
		OnCommandsChanged(new MenuCommandsChangedEventArgs(MenuCommandsChangedType.CommandAdded, command));
	}

	public virtual void AddVerb(DesignerVerb verb)
	{
		if (verb == null)
		{
			throw new ArgumentNullException("verb");
		}
		EnsureVerbs();
		if (!_verbs.Contains(verb))
		{
			if (_globalVerbs == null)
			{
				_globalVerbs = new DesignerVerbCollection();
			}
			_globalVerbs.Add(verb);
		}
		OnCommandsChanged(new MenuCommandsChangedEventArgs(MenuCommandsChangedType.CommandAdded, verb));
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (!disposing)
		{
			return;
		}
		if (_globalVerbs != null)
		{
			_globalVerbs.Clear();
			_globalVerbs = null;
		}
		if (_verbs != null)
		{
			_verbs.Clear();
			_verbs = null;
		}
		if (_commands != null)
		{
			_commands.Clear();
			_commands = null;
		}
		if (_serviceProvider != null)
		{
			if (_serviceProvider.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
			{
				selectionService.SelectionChanged -= OnSelectionChanged;
			}
			_serviceProvider = null;
		}
	}

	protected void EnsureVerbs()
	{
		DesignerVerbCollection designerVerbCollection = null;
		ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		if (selectionService != null && designerHost != null && selectionService.SelectionCount == 1 && selectionService.PrimarySelection is IComponent component)
		{
			IDesigner designer = designerHost.GetDesigner(component);
			if (designer != null)
			{
				designerVerbCollection = designer.Verbs;
			}
		}
		Dictionary<string, DesignerVerb> dictionary = new Dictionary<string, DesignerVerb>();
		if (_globalVerbs != null)
		{
			foreach (DesignerVerb globalVerb in _globalVerbs)
			{
				dictionary[globalVerb.Text] = globalVerb;
			}
		}
		if (designerVerbCollection != null)
		{
			foreach (DesignerVerb item in designerVerbCollection)
			{
				dictionary[item.Text] = item;
			}
		}
		if (_verbs == null)
		{
			_verbs = new DesignerVerbCollection();
		}
		else
		{
			_verbs.Clear();
		}
		foreach (DesignerVerb value in dictionary.Values)
		{
			_verbs.Add(value);
		}
	}

	protected MenuCommand FindCommand(Guid guid, int id)
	{
		return FindCommand(new CommandID(guid, id));
	}

	public MenuCommand FindCommand(CommandID commandID)
	{
		if (commandID == null)
		{
			throw new ArgumentNullException("commandID");
		}
		MenuCommand value = null;
		if (_commands != null)
		{
			_commands.TryGetValue(commandID, out value);
		}
		if (value == null)
		{
			EnsureVerbs();
			foreach (DesignerVerb verb in _verbs)
			{
				if (verb.CommandID.Equals(commandID))
				{
					value = verb;
					break;
				}
			}
		}
		return value;
	}

	protected ICollection GetCommandList(Guid guid)
	{
		List<MenuCommand> list = new List<MenuCommand>();
		if (_commands != null)
		{
			foreach (MenuCommand value in _commands.Values)
			{
				if (value.CommandID.Guid == guid)
				{
					list.Add(value);
				}
			}
		}
		return list;
	}

	public virtual bool GlobalInvoke(CommandID commandID)
	{
		if (commandID == null)
		{
			throw new ArgumentNullException("commandID");
		}
		MenuCommand menuCommand = FindCommand(commandID);
		if (menuCommand != null)
		{
			menuCommand.Invoke();
			return true;
		}
		return false;
	}

	public virtual bool GlobalInvoke(CommandID commandId, object arg)
	{
		if (commandId == null)
		{
			throw new ArgumentNullException("commandId");
		}
		MenuCommand menuCommand = FindCommand(commandId);
		if (menuCommand != null)
		{
			menuCommand.Invoke(arg);
			return true;
		}
		return false;
	}

	protected virtual void OnCommandsChanged(MenuCommandsChangedEventArgs e)
	{
		if (MenuCommandsChanged != null)
		{
			MenuCommandsChanged(this, e);
		}
	}

	public virtual void RemoveCommand(MenuCommand command)
	{
		if (command == null)
		{
			throw new ArgumentNullException("command");
		}
		if (_commands != null)
		{
			_commands.Remove(command.CommandID);
		}
		OnCommandsChanged(new MenuCommandsChangedEventArgs(MenuCommandsChangedType.CommandRemoved, null));
	}

	public virtual void RemoveVerb(DesignerVerb verb)
	{
		if (verb == null)
		{
			throw new ArgumentNullException("verb");
		}
		if (_globalVerbs.Contains(verb))
		{
			_globalVerbs.Remove(verb);
		}
		OnCommandsChanged(new MenuCommandsChangedEventArgs(MenuCommandsChangedType.CommandRemoved, verb));
	}

	public virtual void ShowContextMenu(CommandID menuID, int x, int y)
	{
	}

	protected object GetService(Type serviceType)
	{
		if (_serviceProvider != null)
		{
			return _serviceProvider.GetService(serviceType);
		}
		return null;
	}
}
