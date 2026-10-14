using System.Reflection;
using System.Runtime.InteropServices;
using System.Runtime.Remoting.Contexts;

namespace System.Runtime.Remoting;

[ComVisible(true)]
public class ActivatedServiceTypeEntry : TypeEntry
{
	private Type obj_type;

	public IContextAttribute[] ContextAttributes
	{
		get
		{
			return null;
		}
		set
		{
		}
	}

	public Type ObjectType => obj_type;

	public ActivatedServiceTypeEntry(Type type)
	{
		AssemblyName = type.Assembly.FullName;
		TypeName = type.FullName;
		obj_type = type;
	}

	public ActivatedServiceTypeEntry(string typeName, string assemblyName)
	{
		AssemblyName = assemblyName;
		TypeName = typeName;
		Assembly assembly = Assembly.Load(assemblyName);
		obj_type = assembly.GetType(typeName);
		if (obj_type == null)
		{
			throw new RemotingException("Type not found: " + typeName + ", " + assemblyName);
		}
	}

	public override string ToString()
	{
		return AssemblyName + TypeName;
	}
}
