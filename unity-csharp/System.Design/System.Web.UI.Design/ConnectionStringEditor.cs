using System.ComponentModel;
using System.ComponentModel.Design.Data;
using System.Drawing.Design;
using System.Security.Permissions;

namespace System.Web.UI.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
public class ConnectionStringEditor : UITypeEditor
{
	[System.MonoTODO]
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual string GetProviderName(object instance)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	protected virtual void SetProviderName(object instance, DesignerDataConnection connection)
	{
		throw new NotImplementedException();
	}
}
