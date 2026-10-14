using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public sealed class FileExtensionsAttribute : DataTypeAttribute
{
	private string _extensions;

	public string Extensions
	{
		get
		{
			if (!string.IsNullOrWhiteSpace(_extensions))
			{
				return _extensions;
			}
			return "png,jpg,jpeg,gif";
		}
		set
		{
			_extensions = value;
		}
	}

	private string ExtensionsFormatted => ExtensionsParsed.Aggregate((string left, string right) => left + ", " + right);

	private string ExtensionsNormalized => Extensions.Replace(" ", "").Replace(".", "").ToLowerInvariant();

	private IEnumerable<string> ExtensionsParsed => from e in ExtensionsNormalized.Split(',')
		select "." + e;

	public FileExtensionsAttribute()
		: base(DataType.Upload)
	{
		DefaultErrorMessage = "The {0} field only accepts files with the following extensions: {1}";
	}

	public override string FormatErrorMessage(string name)
	{
		return string.Format(CultureInfo.CurrentCulture, ErrorMessageString, name, ExtensionsFormatted);
	}

	public override bool IsValid(object value)
	{
		if (value == null)
		{
			return true;
		}
		if (value is string fileName)
		{
			return ValidateExtension(fileName);
		}
		return false;
	}

	private bool ValidateExtension(string fileName)
	{
		try
		{
			return ExtensionsParsed.Contains(Path.GetExtension(fileName).ToLowerInvariant());
		}
		catch (ArgumentException)
		{
			return false;
		}
	}
}
