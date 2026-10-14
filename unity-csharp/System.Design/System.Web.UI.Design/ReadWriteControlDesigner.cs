using System.ComponentModel.Design;

namespace System.Web.UI.Design;

[Obsolete("Use ContainerControlDesigner instead")]
[System.MonoTODO]
public class ReadWriteControlDesigner : ControlDesigner
{
	[System.MonoTODO]
	public ReadWriteControlDesigner()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void MapPropertyToStyle(string propName, object varPropValue)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	[Obsolete("Use ControlDesigner.Tag instead")]
	protected override void OnBehaviorAttached()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void OnComponentChanged(object sender, ComponentChangedEventArgs ce)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override string GetDesignTimeHtml()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void UpdateDesignTimeHtml()
	{
		throw new NotImplementedException();
	}
}
