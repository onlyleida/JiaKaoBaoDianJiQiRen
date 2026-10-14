using System.Collections;
using System.ComponentModel;
using System.Data;

namespace System.Web.UI.Design;

public sealed class DesignTimeData
{
	public static readonly EventHandler DataBindingHandler = OnDataBind;

	private DesignTimeData()
	{
	}

	[System.MonoTODO]
	public static DataTable CreateDummyDataBoundDataTable()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static DataTable CreateDummyDataTable()
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static DataTable CreateSampleDataTable(IEnumerable referenceData)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static DataTable CreateSampleDataTable(IEnumerable referenceData, bool useDataBoundData)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static PropertyDescriptorCollection GetDataFields(IEnumerable dataSource)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static IEnumerable GetDataMember(IListSource dataSource, string dataMember)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static string[] GetDataMembers(object dataSource)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static IEnumerable GetDesignTimeDataSource(DataTable dataTable, int minimumRows)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static object GetSelectedDataSource(IComponent component, string dataSource)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static IEnumerable GetSelectedDataSource(IComponent component, string dataSource, string dataMember)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	private static void OnDataBind(object sender, EventArgs e)
	{
		throw new NotImplementedException();
	}
}
