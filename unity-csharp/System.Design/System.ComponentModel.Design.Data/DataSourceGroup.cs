using System.Drawing;

namespace System.ComponentModel.Design.Data;

public abstract class DataSourceGroup
{
	public abstract DataSourceDescriptorCollection DataSources { get; }

	public abstract Bitmap Image { get; }

	public abstract bool IsDefault { get; }

	public abstract string Name { get; }
}
