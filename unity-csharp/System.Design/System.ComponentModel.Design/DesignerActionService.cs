namespace System.ComponentModel.Design;

public class DesignerActionService : IDisposable
{
	public event DesignerActionListsChangedEventHandler DesignerActionListsChanged;

	[System.MonoTODO]
	public DesignerActionService(IServiceProvider serviceProvider)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Add(IComponent comp, DesignerActionList actionList)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Add(IComponent comp, DesignerActionListCollection designerActionListCollection)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Clear()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public bool Contains(IComponent comp)
	{
		throw new NotImplementedException();
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	[System.MonoTODO]
	protected virtual void Dispose(bool disposing)
	{
	}

	[System.MonoTODO]
	public DesignerActionListCollection GetComponentActions(IComponent component)
	{
		return GetComponentActions(component, ComponentActionsType.All);
	}

	[System.MonoTODO]
	public virtual DesignerActionListCollection GetComponentActions(IComponent component, ComponentActionsType type)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void GetComponentDesignerActions(IComponent component, DesignerActionListCollection actionLists)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void GetComponentServiceActions(IComponent component, DesignerActionListCollection actionLists)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Remove(DesignerActionList actionList)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Remove(IComponent comp)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Remove(IComponent comp, DesignerActionList actionList)
	{
		throw new NotImplementedException();
	}
}
