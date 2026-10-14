namespace System.ComponentModel.Design;

public class DesignSurfaceEventArgs : EventArgs
{
	private DesignSurface _surface;

	public DesignSurface Surface => _surface;

	public DesignSurfaceEventArgs(DesignSurface surface)
	{
		_surface = surface;
	}
}
