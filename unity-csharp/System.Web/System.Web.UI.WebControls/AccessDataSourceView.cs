using System.Collections;
using System.Data.OleDb;
using System.IO;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class AccessDataSourceView : SqlDataSourceView
{
	private OleDbConnection oleConnection;

	private OleDbCommand oleCommand;

	private AccessDataSource dataSource;

	public AccessDataSourceView(AccessDataSource owner, string name, HttpContext context)
		: base(owner, name, context)
	{
		dataSource = owner;
		oleConnection = new OleDbConnection(owner.ConnectionString);
	}

	[MonoTODO("Handle arguments")]
	protected internal override IEnumerable ExecuteSelect(DataSourceSelectArguments arguments)
	{
		oleCommand = new OleDbCommand(SelectCommand, oleConnection);
		SqlDataSourceSelectingEventArgs e = new SqlDataSourceSelectingEventArgs(oleCommand, arguments);
		OnSelecting(e);
		IEnumerable result = null;
		Exception ex = null;
		OleDbDataReader oleDbDataReader = null;
		try
		{
			File.OpenRead(dataSource.DataFile).Close();
			oleConnection.Open();
			oleDbDataReader = oleCommand.ExecuteReader();
			throw new NotImplementedException("OleDbDataReader doesnt implements GetEnumerator method yet");
		}
		catch (Exception ex2)
		{
			ex = ex2;
		}
		SqlDataSourceStatusEventArgs e2 = new SqlDataSourceStatusEventArgs(oleCommand, oleDbDataReader.RecordsAffected, ex);
		OnSelected(e2);
		if (ex != null)
		{
			throw ex;
		}
		return result;
	}
}
