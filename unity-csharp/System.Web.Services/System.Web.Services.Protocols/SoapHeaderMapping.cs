using System.Reflection;
using System.Security.Permissions;

namespace System.Web.Services.Protocols;

[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public sealed class SoapHeaderMapping
{
	internal Type headerType;

	internal bool repeats;

	internal bool custom;

	internal SoapHeaderDirection direction;

	internal MemberInfo memberInfo;

	public Type HeaderType => headerType;

	public bool Repeats => repeats;

	public bool Custom => custom;

	public SoapHeaderDirection Direction => direction;

	public MemberInfo MemberInfo => memberInfo;

	internal SoapHeaderMapping()
	{
	}
}
