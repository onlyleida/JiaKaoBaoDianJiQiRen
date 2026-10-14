using System.Drawing;

namespace System.ComponentModel.Design.Data;

public abstract class DataSourceDescriptor
{
	public abstract Bitmap Image { get; }

	public abstract bool IsDesignable { get; }

	public abstract string Name { get; }

	public abstract string TypeName { get; }
}
