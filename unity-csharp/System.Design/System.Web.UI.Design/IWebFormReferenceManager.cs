namespace System.Web.UI.Design;

[Obsolete("Use new WebFormsReferenceManager feature")]
public interface IWebFormReferenceManager
{
	Type GetObjectType(string tagPrefix, string typeName);

	string GetRegisterDirectives();

	string GetTagPrefix(Type objectType);
}
