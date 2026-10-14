using System.Runtime.InteropServices;
using System.Security.Permissions;
using Unity;

namespace System.Web.Configuration;

[ProgId("System.Web.Configuration.RemoteWebConfigurationHostServerV4_32")]
[Guid("9FDB6D2C-90EA-4e42-99E6-38B96E28698E")]
[ComVisible(true)]
[ClassInterface(ClassInterfaceType.AutoDual)]
[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
public class RemoteWebConfigurationHostServer : IRemoteWebConfigurationHostServer
{
	public RemoteWebConfigurationHostServer()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public string DoEncryptOrDecrypt(bool doEncrypt, string xmlString, string protectionProviderName, string protectionProviderType, string[] paramKeys, string[] paramValues)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public byte[] GetData(string fileName, bool getReadTimeOnly, out long readTime)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void GetFileDetails(string name, out bool exists, out long size, out long createDate, out long lastWriteDate)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public string GetFilePaths(int webLevelAsInt, string path, string site, string locationSubPath)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void WriteData(string fileName, string templateFileName, byte[] data, ref long readTime)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
