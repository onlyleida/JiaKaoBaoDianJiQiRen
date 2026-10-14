using System.ComponentModel;
using System.Drawing.Design;
using System.Security.Permissions;

namespace System.Windows.Forms.Design;

[SecurityPermission(SecurityAction.Demand, Flags = SecurityPermissionFlag.UnmanagedCode)]
[PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
public class ShortcutKeysEditor : UITypeEditor
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
}
