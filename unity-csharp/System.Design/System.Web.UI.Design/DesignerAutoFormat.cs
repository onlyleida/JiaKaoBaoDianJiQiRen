namespace System.Web.UI.Design;

public abstract class DesignerAutoFormat
{
	[System.MonoTODO]
	public string Name
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public DesignerAutoFormatStyle Style
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	protected DesignerAutoFormat(string name)
	{
	}

	public abstract void Apply(Control control);

	[System.MonoTODO]
	public virtual Control GetPreviewControl(Control runtimeControl)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override string ToString()
	{
		return base.ToString();
	}
}
