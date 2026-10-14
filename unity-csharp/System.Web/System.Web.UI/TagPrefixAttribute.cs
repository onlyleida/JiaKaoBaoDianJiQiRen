using System.Security.Permissions;

namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class TagPrefixAttribute : Attribute
{
	private string namespaceName;

	private string tagPrefix;

	public string NamespaceName => namespaceName;

	public string TagPrefix => tagPrefix;

	public TagPrefixAttribute(string namespaceName, string tagPrefix)
	{
		if (namespaceName == null || namespaceName.Length == 0)
		{
			throw new ArgumentNullException("namespaceName");
		}
		if (tagPrefix == null || tagPrefix.Length == 0)
		{
			throw new ArgumentNullException("tagPrefix");
		}
		this.namespaceName = namespaceName;
		this.tagPrefix = tagPrefix;
	}
}
