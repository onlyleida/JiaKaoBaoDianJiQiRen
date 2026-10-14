using System.Globalization;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public class DataTypeAttribute : ValidationAttribute
{
	private static string[] _dataTypeStrings = Enum.GetNames(typeof(DataType));

	public DataType DataType { get; private set; }

	public string CustomDataType { get; private set; }

	public DisplayFormatAttribute DisplayFormat { get; protected set; }

	public virtual string GetDataTypeName()
	{
		EnsureValidDataType();
		if (DataType == DataType.Custom)
		{
			return CustomDataType;
		}
		return _dataTypeStrings[(int)DataType];
	}

	public DataTypeAttribute(DataType dataType)
	{
		DataType = dataType;
		switch (dataType)
		{
		case DataType.Date:
			DisplayFormat = new DisplayFormatAttribute();
			DisplayFormat.DataFormatString = "{0:d}";
			DisplayFormat.ApplyFormatInEditMode = true;
			break;
		case DataType.Time:
			DisplayFormat = new DisplayFormatAttribute();
			DisplayFormat.DataFormatString = "{0:t}";
			DisplayFormat.ApplyFormatInEditMode = true;
			break;
		case DataType.Currency:
			DisplayFormat = new DisplayFormatAttribute();
			DisplayFormat.DataFormatString = "{0:C}";
			break;
		case DataType.Duration:
		case DataType.PhoneNumber:
			break;
		}
	}

	public DataTypeAttribute(string customDataType)
		: this(DataType.Custom)
	{
		CustomDataType = customDataType;
	}

	public override bool IsValid(object value)
	{
		EnsureValidDataType();
		return true;
	}

	private void EnsureValidDataType()
	{
		if (DataType == DataType.Custom && string.IsNullOrEmpty(CustomDataType))
		{
			throw new InvalidOperationException(string.Format(CultureInfo.CurrentCulture, "The custom DataType string cannot be null or empty."));
		}
	}
}
