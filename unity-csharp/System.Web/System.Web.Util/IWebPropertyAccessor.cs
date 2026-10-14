namespace System.Web.Util;

public interface IWebPropertyAccessor
{
	object GetProperty(object target);

	void SetProperty(object target, object value);
}
