using System.Globalization;

namespace System.Windows.Forms.Design;

public abstract class MaskDescriptor
{
	[System.MonoTODO]
	public virtual CultureInfo Culture
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public abstract string Mask { get; }

	public abstract string Name { get; }

	public abstract string Sample { get; }

	public abstract Type ValidatingType { get; }

	[System.MonoTODO]
	public override bool Equals(object maskDescriptor)
	{
		return base.Equals(maskDescriptor);
	}

	[System.MonoTODO]
	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	[System.MonoTODO]
	public static bool IsValidMaskDescriptor(MaskDescriptor maskDescriptor)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static bool IsValidMaskDescriptor(MaskDescriptor maskDescriptor, out string validationErrorDescription)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override string ToString()
	{
		return base.ToString();
	}
}
