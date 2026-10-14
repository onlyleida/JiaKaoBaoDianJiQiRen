using System.Security.Permissions;

namespace System.Web.Services.Protocols;

public abstract class MimeFormatter
{
	public abstract object GetInitializer(LogicalMethodInfo methodInfo);

	public abstract void Initialize(object initializer);

	public virtual object[] GetInitializers(LogicalMethodInfo[] methodInfos)
	{
		object[] array = new object[methodInfos.Length];
		for (int i = 0; i < array.Length; i++)
		{
			array[i] = GetInitializer(methodInfos[i]);
		}
		return array;
	}

	[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
	public static object GetInitializer(Type type, LogicalMethodInfo methodInfo)
	{
		return ((MimeFormatter)Activator.CreateInstance(type)).GetInitializer(methodInfo);
	}

	[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
	public static object[] GetInitializers(Type type, LogicalMethodInfo[] methodInfos)
	{
		return ((MimeFormatter)Activator.CreateInstance(type)).GetInitializers(methodInfos);
	}

	[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
	public static MimeFormatter CreateInstance(Type type, object initializer)
	{
		MimeFormatter mimeFormatter = (MimeFormatter)Activator.CreateInstance(type);
		mimeFormatter.Initialize(initializer);
		return mimeFormatter;
	}
}
