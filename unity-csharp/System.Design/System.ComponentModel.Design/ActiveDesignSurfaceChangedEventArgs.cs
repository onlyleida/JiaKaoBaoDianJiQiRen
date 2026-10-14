namespace System.ComponentModel.Design;

public class ActiveDesignSurfaceChangedEventArgs : EventArgs
{
	private DesignSurface _oldSurface;

	private DesignSurface _newSurface;

	public DesignSurface OldSurface => _oldSurface;

	public DesignSurface NewSurface => _newSurface;

	public ActiveDesignSurfaceChangedEventArgs(DesignSurface oldSurface, DesignSurface newSurface)
	{
		_newSurface = newSurface;
		_oldSurface = oldSurface;
	}
}
