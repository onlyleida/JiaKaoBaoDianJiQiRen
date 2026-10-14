using System.Reflection;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class ConnectionPoint
{
	private bool allowMultiConn;

	private string name;

	private string id;

	private Type interfaceType;

	private Type controlType;

	private MethodInfo callBackMethod;

	public const string DefaultID = "default";

	internal MethodInfo CallbackMethod => callBackMethod;

	public bool AllowsMultipleConnections => allowMultiConn;

	public Type ControlType => controlType;

	public string ID => id;

	public Type InterfaceType => interfaceType;

	public string Name => name;

	public string DisplayName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	internal ConnectionPoint(MethodInfo callBack, Type interFace, Type control, string name, string id, bool allowsMultiConnections)
	{
		this.name = string.Empty;
		this.id = "default";
		base._002Ector();
		allowMultiConn = allowsMultiConnections;
		interfaceType = interFace;
		controlType = control;
		this.name = name;
		this.id = id;
		callBackMethod = callBack;
	}

	[MonoTODO("Not implemented")]
	public virtual bool GetEnabled(Control control)
	{
		throw new NotImplementedException();
	}

	internal ConnectionPoint()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
