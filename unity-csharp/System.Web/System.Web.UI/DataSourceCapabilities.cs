namespace System.Web.UI;

[Flags]
public enum DataSourceCapabilities
{
	None = 0,
	Sort = 1,
	Page = 2,
	RetrieveTotalRowCount = 4
}
