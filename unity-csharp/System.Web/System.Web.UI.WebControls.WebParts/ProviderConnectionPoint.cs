using System.Reflection;

namespace System.Web.UI.WebControls.WebParts;

public class ProviderConnectionPoint : ConnectionPoint
{
	public ProviderConnectionPoint(MethodInfo callbackMethod, Type interfaceType, Type controlType, string displayName, string id, bool allowsMultipleConnections)
		: base(callbackMethod, interfaceType, controlType, displayName, id, allowsMultipleConnections)
	{
	}

	[MonoTODO("Not implemented")]
	public virtual object GetObject(Control control)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public virtual ConnectionInterfaceCollection GetSecondaryInterfaces(Control control)
	{
		throw new NotImplementedException();
	}
}
