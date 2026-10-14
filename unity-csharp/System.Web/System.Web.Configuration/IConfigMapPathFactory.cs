namespace System.Web.Configuration;

public interface IConfigMapPathFactory
{
	IConfigMapPath Create(string virtualPath, string physicalPath);
}
