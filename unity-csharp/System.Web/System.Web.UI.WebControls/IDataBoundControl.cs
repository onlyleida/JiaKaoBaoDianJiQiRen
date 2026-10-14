namespace System.Web.UI.WebControls;

public interface IDataBoundControl
{
	string DataSourceID { get; set; }

	IDataSource DataSourceObject { get; }

	object DataSource { get; set; }

	string[] DataKeyNames { get; set; }

	string DataMember { get; set; }
}
