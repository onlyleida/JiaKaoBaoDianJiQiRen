using System.ComponentModel;
using System.Configuration;
using System.Globalization;

namespace System.Web.Configuration;

public sealed class MachineKeyValidationConverter : ConfigurationConverterBase
{
	private const string InvalidValue = "The enumeration value must be one of the following: SHA1, MD5, 3DES, AES, HMACSHA256, HMACSHA384, HMACSHA512.";

	public override object ConvertFrom(ITypeDescriptorContext ctx, CultureInfo ci, object data)
	{
		return (string)data switch
		{
			"MD5" => (object)MachineKeyValidation.MD5, 
			"SHA1" => MachineKeyValidation.SHA1, 
			"3DES" => MachineKeyValidation.TripleDES, 
			"AES" => MachineKeyValidation.AES, 
			"HMACSHA256" => MachineKeyValidation.HMACSHA256, 
			"HMACSHA384" => MachineKeyValidation.HMACSHA384, 
			"HMACSHA512" => MachineKeyValidation.HMACSHA512, 
			_ => throw new ArgumentException("The enumeration value must be one of the following: SHA1, MD5, 3DES, AES, HMACSHA256, HMACSHA384, HMACSHA512."), 
		};
	}

	public override object ConvertTo(ITypeDescriptorContext ctx, CultureInfo ci, object value, Type type)
	{
		if (value == null || value.GetType() != typeof(MachineKeyValidation))
		{
			throw new ArgumentException("The enumeration value must be one of the following: SHA1, MD5, 3DES, AES, HMACSHA256, HMACSHA384, HMACSHA512.");
		}
		return (MachineKeyValidation)value switch
		{
			MachineKeyValidation.MD5 => (object)"MD5", 
			MachineKeyValidation.SHA1 => "SHA1", 
			MachineKeyValidation.TripleDES => "3DES", 
			MachineKeyValidation.AES => "AES", 
			MachineKeyValidation.HMACSHA256 => "HMACSHA256", 
			MachineKeyValidation.HMACSHA384 => "HMACSHA384", 
			MachineKeyValidation.HMACSHA512 => "HMACSHA512", 
			_ => throw new ArgumentException("The enumeration value must be one of the following: SHA1, MD5, 3DES, AES, HMACSHA256, HMACSHA384, HMACSHA512."), 
		};
	}
}
