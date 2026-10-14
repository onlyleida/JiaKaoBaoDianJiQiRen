using System.Collections;

namespace System.Web.UI.Design;

public abstract class DesignerObject : IServiceProvider
{
	[System.MonoNotSupported("")]
	public ControlDesigner Designer
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	public IDictionary Properties
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoNotSupported("")]
	protected DesignerObject(ControlDesigner designer, string name)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	protected object GetService(Type serviceType)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	object IServiceProvider.GetService(Type serviceType)
	{
		throw new NotImplementedException();
	}
}
