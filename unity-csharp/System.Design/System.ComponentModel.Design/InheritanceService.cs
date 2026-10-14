using System.Reflection;

namespace System.ComponentModel.Design;

public class InheritanceService : IInheritanceService, IDisposable
{
	[System.MonoTODO]
	public InheritanceService()
	{
	}

	[System.MonoTODO]
	public void AddInheritedComponents(IComponent component, IContainer container)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void AddInheritedComponents(Type type, IComponent component, IContainer container)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public void Dispose()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void Dispose(bool disposing)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public InheritanceAttribute GetInheritanceAttribute(IComponent component)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual bool IgnoreInheritedMember(MemberInfo member, IComponent component)
	{
		throw new NotImplementedException();
	}
}
