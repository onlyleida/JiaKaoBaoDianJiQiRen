namespace System.Web.UI;

[Obsolete("The recommended alternative is System.Convert and String.Format. http://go.microsoft.com/fwlink/?linkid=14202")]
public sealed class ObjectConverter
{
	public static object ConvertValue(object value, Type toType, string formatString)
	{
		throw new NotImplementedException("Not implemented and [Obsolete]");
	}
}
