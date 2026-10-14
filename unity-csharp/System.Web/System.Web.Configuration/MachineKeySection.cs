using System.ComponentModel;
using System.Configuration;
using System.Security.Cryptography;
using System.Web.Util;
using Unity;

namespace System.Web.Configuration;

public sealed class MachineKeySection : ConfigurationSection
{
	private static ConfigurationProperty decryptionProp;

	private static ConfigurationProperty decryptionKeyProp;

	private static ConfigurationProperty validationProp;

	private static ConfigurationProperty validationKeyProp;

	private static ConfigurationPropertyCollection properties;

	private static MachineKeyValidationConverter converter;

	private MachineKeyValidation validation;

	private byte[] decryption_key;

	private byte[] validation_key;

	private SymmetricAlgorithm decryption_template;

	private KeyedHashAlgorithm validation_template;

	[MonoTODO]
	public MachineKeyCompatibilityMode CompatibilityMode { get; set; }

	[ConfigurationProperty("decryption", DefaultValue = "Auto")]
	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[StringValidator(MinLength = 1)]
	public string Decryption
	{
		get
		{
			return (string)base[decryptionProp];
		}
		set
		{
			decryption_template = MachineKeySectionUtils.GetDecryptionAlgorithm(value);
			base[decryptionProp] = value;
		}
	}

	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("decryptionKey", DefaultValue = "AutoGenerate,IsolateApps")]
	public string DecryptionKey
	{
		get
		{
			return (string)base[decryptionKeyProp];
		}
		set
		{
			base[decryptionKeyProp] = value;
			SetDecryptionKey(value);
		}
	}

	public MachineKeyValidation Validation
	{
		get
		{
			return validation;
		}
		set
		{
			if (value == MachineKeyValidation.Custom)
			{
				throw new ArgumentException();
			}
			string text = value.ToString();
			ValidationAlgorithm = ((text == "TripleDES") ? "3DES" : text);
		}
	}

	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("validation", DefaultValue = "HMACSHA256")]
	public string ValidationAlgorithm
	{
		get
		{
			return (string)base[validationProp];
		}
		set
		{
			if (value != null)
			{
				if (value.StartsWith("alg:"))
				{
					validation = MachineKeyValidation.Custom;
				}
				else
				{
					validation = (MachineKeyValidation)converter.ConvertFrom(null, null, value);
				}
				base[validationProp] = value;
			}
		}
	}

	[TypeConverter(typeof(WhiteSpaceTrimStringConverter))]
	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("validationKey", DefaultValue = "AutoGenerate,IsolateApps")]
	public string ValidationKey
	{
		get
		{
			return (string)base[validationKeyProp];
		}
		set
		{
			base[validationKeyProp] = value;
			SetValidationKey(value);
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	internal static MachineKeySection Config => WebConfigurationManager.GetSection("system.web/machineKey") as MachineKeySection;

	private SymmetricAlgorithm DecryptionTemplate
	{
		get
		{
			if (decryption_template == null)
			{
				decryption_template = GetDecryptionAlgorithm();
			}
			return decryption_template;
		}
	}

	private KeyedHashAlgorithm ValidationTemplate
	{
		get
		{
			if (validation_template == null)
			{
				validation_template = GetValidationAlgorithm();
			}
			return validation_template;
		}
	}

	public string ApplicationName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public string DataProtectorType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	static MachineKeySection()
	{
		converter = new MachineKeyValidationConverter();
		decryptionProp = new ConfigurationProperty("decryption", typeof(string), "Auto", PropertyHelper.WhiteSpaceTrimStringConverter, PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		decryptionKeyProp = new ConfigurationProperty("decryptionKey", typeof(string), "AutoGenerate,IsolateApps", PropertyHelper.WhiteSpaceTrimStringConverter, PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		validationProp = new ConfigurationProperty("validation", typeof(string), "HMACSHA256", PropertyHelper.WhiteSpaceTrimStringConverter, PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		validationKeyProp = new ConfigurationProperty("validationKey", typeof(string), "AutoGenerate,IsolateApps", PropertyHelper.WhiteSpaceTrimStringConverter, PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(decryptionProp);
		properties.Add(decryptionKeyProp);
		properties.Add(validationProp);
		properties.Add(validationKeyProp);
		Config.AutoGenerate(MachineKeyRegistryStorage.KeyType.Encryption);
		Config.AutoGenerate(MachineKeyRegistryStorage.KeyType.Validation);
	}

	public MachineKeySection()
	{
		validation = (MachineKeyValidation)converter.ConvertFrom(null, null, ValidationAlgorithm);
	}

	protected internal override void Reset(ConfigurationElement parentElement)
	{
		base.Reset(parentElement);
		decryption_key = null;
		validation_key = null;
		decryption_template = null;
		validation_template = null;
	}

	internal SymmetricAlgorithm GetDecryptionAlgorithm()
	{
		return MachineKeySectionUtils.GetDecryptionAlgorithm(Decryption);
	}

	internal byte[] GetDecryptionKey()
	{
		if (decryption_key == null)
		{
			SetDecryptionKey(DecryptionKey);
		}
		return decryption_key;
	}

	private void SetDecryptionKey(string key)
	{
		if (key == null || key.StartsWith("AutoGenerate"))
		{
			decryption_key = AutoGenerate(MachineKeyRegistryStorage.KeyType.Encryption);
			return;
		}
		try
		{
			decryption_key = MachineKeySectionUtils.GetBytes(key, key.Length);
			DecryptionTemplate.Key = decryption_key;
		}
		catch
		{
			decryption_key = null;
			throw new ArgumentException("Invalid key length");
		}
	}

	internal KeyedHashAlgorithm GetValidationAlgorithm()
	{
		return MachineKeySectionUtils.GetValidationAlgorithm(this);
	}

	internal byte[] GetValidationKey()
	{
		if (validation_key == null)
		{
			SetValidationKey(ValidationKey);
		}
		return validation_key;
	}

	private void SetValidationKey(string key)
	{
		if (key == null || key.StartsWith("AutoGenerate"))
		{
			validation_key = AutoGenerate(MachineKeyRegistryStorage.KeyType.Validation);
			return;
		}
		try
		{
			validation_key = MachineKeySectionUtils.GetBytes(key, key.Length);
			ValidationTemplate.Key = validation_key;
		}
		catch (CryptographicException)
		{
			try
			{
				byte[] array = new byte[ValidationTemplate.Key.Length];
				Array.Copy(validation_key, 0, array, 0, validation_key.Length);
				ValidationTemplate.Key = array;
				validation_key = array;
			}
			catch
			{
				validation_key = null;
				throw new ArgumentException("Invalid key length");
			}
		}
	}

	private byte[] AutoGenerate(MachineKeyRegistryStorage.KeyType type)
	{
		byte[] array = null;
		try
		{
			array = MachineKeyRegistryStorage.Retrieve(type);
			switch (type)
			{
			case MachineKeyRegistryStorage.KeyType.Encryption:
				DecryptionTemplate.Key = array;
				break;
			case MachineKeyRegistryStorage.KeyType.Validation:
				ValidationTemplate.Key = array;
				break;
			}
		}
		catch (Exception)
		{
			array = null;
		}
		if (array == null)
		{
			switch (type)
			{
			case MachineKeyRegistryStorage.KeyType.Encryption:
				array = DecryptionTemplate.Key;
				break;
			case MachineKeyRegistryStorage.KeyType.Validation:
				array = ValidationTemplate.Key;
				break;
			}
			MachineKeyRegistryStorage.Store(array, type);
		}
		return array;
	}
}
