using System.Reflection;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class ConsumerConnectionPoint : ConnectionPoint
{
	public ConsumerConnectionPoint(MethodInfo callbackMethod, Type interfaceType, Type controlType, string displayName, string id, bool allowsMultipleConnections)
		: base(callbackMethod, interfaceType, controlType, displayName, id, allowsMultipleConnections)
	{
	}

	[MonoTODO("Not implemented")]
	public virtual void SetObject(Control control, object data)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public virtual bool SupportsConnection(Control control, TypeCollection interfaces)
	{
		throw new NotImplementedException();
	}

	public virtual bool SupportsConnection(Control control, ConnectionInterfaceCollection secondaryInterfaces)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
