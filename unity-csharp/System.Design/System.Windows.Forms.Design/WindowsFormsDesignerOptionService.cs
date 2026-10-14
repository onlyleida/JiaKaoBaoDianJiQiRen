using System.ComponentModel.Design;

namespace System.Windows.Forms.Design;

public class WindowsFormsDesignerOptionService : DesignerOptionService
{
	public virtual DesignerOptions CompatibilityOptions
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	protected override void PopulateOptionCollection(DesignerOptionCollection options)
	{
		throw new NotImplementedException();
	}
}
