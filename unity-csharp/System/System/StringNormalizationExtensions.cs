using System.ComponentModel;
using System.Security;
using System.Text;
using Unity;

namespace System;

[EditorBrowsable(EditorBrowsableState.Never)]
public static class StringNormalizationExtensions
{
	[EditorBrowsable(EditorBrowsableState.Never)]
	public static bool IsNormalized(this string value)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[SecurityCritical]
	public static bool IsNormalized(this string value, NormalizationForm normalizationForm)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public static string Normalize(this string value)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[SecurityCritical]
	public static string Normalize(this string value, NormalizationForm normalizationForm)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
