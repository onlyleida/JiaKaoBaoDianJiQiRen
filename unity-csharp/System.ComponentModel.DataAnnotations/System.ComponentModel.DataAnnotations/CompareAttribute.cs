using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property, AllowMultiple = false)]
public class CompareAttribute : ValidationAttribute
{
	public string OtherProperty { get; private set; }

	public string OtherPropertyDisplayName { get; internal set; }

	public override bool RequiresValidationContext => true;

	public CompareAttribute(string otherProperty)
		: base("'{0}' and '{1}' do not match.")
	{
		if (otherProperty == null)
		{
			throw new ArgumentNullException("otherProperty");
		}
		OtherProperty = otherProperty;
	}

	public override string FormatErrorMessage(string name)
	{
		return string.Format(CultureInfo.CurrentCulture, ErrorMessageString, name, OtherPropertyDisplayName ?? OtherProperty);
	}

	protected override ValidationResult IsValid(object value, ValidationContext validationContext)
	{
		PropertyInfo property = validationContext.ObjectType.GetProperty(OtherProperty);
		if (property == null)
		{
			return new ValidationResult(string.Format(CultureInfo.CurrentCulture, "Could not find a property named {0}.", OtherProperty));
		}
		object value2 = property.GetValue(validationContext.ObjectInstance, null);
		if (!object.Equals(value, value2))
		{
			if (OtherPropertyDisplayName == null)
			{
				OtherPropertyDisplayName = GetDisplayNameForProperty(validationContext.ObjectType, OtherProperty);
			}
			return new ValidationResult(FormatErrorMessage(validationContext.DisplayName));
		}
		return null;
	}

	private static string GetDisplayNameForProperty(Type containerType, string propertyName)
	{
		IEnumerable<Attribute> source = (GetTypeDescriptor(containerType).GetProperties().Find(propertyName, ignoreCase: true) ?? throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "The property {0}.{1} could not be found.", containerType.FullName, propertyName))).Attributes.Cast<Attribute>();
		DisplayAttribute displayAttribute = source.OfType<DisplayAttribute>().FirstOrDefault();
		if (displayAttribute != null)
		{
			return displayAttribute.GetName();
		}
		DisplayNameAttribute displayNameAttribute = source.OfType<DisplayNameAttribute>().FirstOrDefault();
		if (displayNameAttribute != null)
		{
			return displayNameAttribute.DisplayName;
		}
		return propertyName;
	}

	private static ICustomTypeDescriptor GetTypeDescriptor(Type type)
	{
		return new AssociatedMetadataTypeTypeDescriptionProvider(type).GetTypeDescriptor(type);
	}
}
