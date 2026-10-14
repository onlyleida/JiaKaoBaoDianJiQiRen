namespace System.ComponentModel.Design;

public sealed class DesignerActionUIService : IDisposable
{
	public event DesignerActionUIStateChangeEventHandler DesignerActionUIStateChange;

	internal DesignerActionUIService()
	{
	}

	[System.MonoTODO]
	public void Dispose()
	{
	}

	[System.MonoTODO]
	public void ShowUI(IComponent component)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void HideUI(IComponent component)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Refresh(IComponent component)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public bool ShouldAutoShow(IComponent component)
	{
		throw new NotImplementedException();
	}
}
