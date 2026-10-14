using System.Security.Permissions;
using System.Xml;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public sealed class XmlDocumentSchema : IDataSourceSchema
{
	[System.MonoTODO]
	public XmlDocumentSchema(XmlDocument xmlDocument, string xPath)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public IDataSourceViewSchema[] GetViews()
	{
		throw new NotImplementedException();
	}
}
