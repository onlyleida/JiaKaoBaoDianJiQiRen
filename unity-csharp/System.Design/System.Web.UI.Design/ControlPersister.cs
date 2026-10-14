using System.ComponentModel.Design;
using System.IO;

namespace System.Web.UI.Design;

public sealed class ControlPersister
{
	private ControlPersister()
	{
	}

	[System.MonoTODO]
	public static string PersistControl(Control control)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static void PersistControl(TextWriter sw, Control control)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static string PersistControl(Control control, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static void PersistControl(TextWriter sw, Control control, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static string PersistInnerProperties(object component, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static void PersistInnerProperties(TextWriter sw, object component, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public static string PersistTemplate(ITemplate template, IDesignerHost host)
	{
		throw new NotImplementedException();
	}

	[System.MonoNotSupported("")]
	public static void PersistTemplate(TextWriter writer, ITemplate template, IDesignerHost host)
	{
		throw new NotImplementedException();
	}
}
