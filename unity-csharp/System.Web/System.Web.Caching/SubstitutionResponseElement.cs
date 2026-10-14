using System.Reflection;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Web.Caching;

[Serializable]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Unrestricted)]
public class SubstitutionResponseElement : ResponseElement
{
	private string typeName;

	private string methodName;

	public HttpResponseSubstitutionCallback Callback { get; private set; }

	public SubstitutionResponseElement(HttpResponseSubstitutionCallback callback)
	{
		if (callback == null)
		{
			throw new ArgumentNullException("callback");
		}
		Callback = callback;
		MethodInfo method = callback.Method;
		typeName = method.DeclaringType.AssemblyQualifiedName;
		methodName = method.Name;
	}

	[OnDeserialized]
	private void ObjectDeserialized(StreamingContext context)
	{
		Type type = Type.GetType(typeName, throwOnError: true);
		Callback = Delegate.CreateDelegate(typeof(HttpResponseSubstitutionCallback), type, methodName, ignoreCase: false, throwOnBindFailure: true) as HttpResponseSubstitutionCallback;
	}
}
