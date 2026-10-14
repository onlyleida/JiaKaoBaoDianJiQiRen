using System.Security.Cryptography;
using System.Text;
using System.Web.Configuration;
using System.Web.Util;

namespace System.Web.Security;

public static class MachineKey
{
	public static byte[] Decode(string encodedData, MachineKeyProtection protectionOption)
	{
		if (encodedData == null)
		{
			throw new ArgumentNullException("encodedData");
		}
		int length = encodedData.Length;
		if (length == 0 || length % 2 == 1)
		{
			throw new ArgumentException("encodedData");
		}
		byte[] bytes = MachineKeySectionUtils.GetBytes(encodedData, length);
		if (bytes == null || bytes.Length == 0)
		{
			throw new ArgumentException("encodedData");
		}
		MachineKeySection section = WebConfigurationManager.GetWebApplicationSection("system.web/machineKey") as MachineKeySection;
		byte[] array = null;
		Exception ex = null;
		try
		{
			switch (protectionOption)
			{
			case MachineKeyProtection.All:
				array = MachineKeySectionUtils.VerifyDecrypt(section, bytes);
				break;
			case MachineKeyProtection.Encryption:
				array = MachineKeySectionUtils.Decrypt(section, bytes);
				break;
			case MachineKeyProtection.Validation:
				array = MachineKeySectionUtils.Verify(section, bytes);
				break;
			default:
				return MachineKeySectionUtils.GetBytes(encodedData, length);
			}
		}
		catch (Exception ex2)
		{
			ex = ex2;
		}
		if (array == null || ex != null)
		{
			throw new HttpException("Unable to verify passed data.", ex);
		}
		return array;
	}

	public static string Encode(byte[] data, MachineKeyProtection protectionOption)
	{
		if (data == null)
		{
			throw new ArgumentNullException("data");
		}
		MachineKeySection section = WebConfigurationManager.GetWebApplicationSection("system.web/machineKey") as MachineKeySection;
		byte[] bytes;
		switch (protectionOption)
		{
		case MachineKeyProtection.All:
			bytes = MachineKeySectionUtils.EncryptSign(section, data);
			break;
		case MachineKeyProtection.Encryption:
			bytes = MachineKeySectionUtils.Encrypt(section, data);
			break;
		case MachineKeyProtection.Validation:
			bytes = MachineKeySectionUtils.Sign(section, data);
			break;
		default:
			return string.Empty;
		}
		return MachineKeySectionUtils.GetHexString(bytes);
	}

	public static byte[] Protect(byte[] userData, params string[] purposes)
	{
		if (userData == null)
		{
			throw new ArgumentNullException("userData");
		}
		for (int i = 0; i < purposes.Length; i++)
		{
			if (string.IsNullOrWhiteSpace(purposes[i]))
			{
				throw new ArgumentException("all purpose parameters must contain text");
			}
		}
		MachineKeySection section = WebConfigurationManager.GetWebApplicationSection("system.web/machineKey") as MachineKeySection;
		byte[] hashed = GetHashed(string.Join(";", purposes));
		byte[] array = new byte[userData.Length + hashed.Length];
		hashed.CopyTo(array, 0);
		userData.CopyTo(array, hashed.Length);
		return MachineKeySectionUtils.Encrypt(section, array);
	}

	public static byte[] Unprotect(byte[] protectedData, params string[] purposes)
	{
		if (protectedData == null)
		{
			throw new ArgumentNullException("protectedData");
		}
		for (int i = 0; i < purposes.Length; i++)
		{
			if (string.IsNullOrWhiteSpace(purposes[i]))
			{
				throw new ArgumentException("all purpose parameters must contain text");
			}
		}
		MachineKeySection section = WebConfigurationManager.GetWebApplicationSection("system.web/machineKey") as MachineKeySection;
		byte[] hashed = GetHashed(string.Join(";", purposes));
		byte[] array = MachineKeySectionUtils.Decrypt(section, protectedData);
		for (int j = 0; j < hashed.Length; j++)
		{
			if (hashed[j] != array[j])
			{
				throw new CryptographicException();
			}
		}
		int num = array.Length - hashed.Length;
		byte[] array2 = new byte[num];
		Array.Copy(array, hashed.Length, array2, 0, num);
		return array2;
	}

	private static byte[] GetHashed(string purposes)
	{
		using SHA512 sHA = SHA512.Create();
		byte[] bytes = Encoding.UTF8.GetBytes(purposes);
		return sHA.ComputeHash(bytes, 0, bytes.Length);
	}
}
