using System.Collections.Generic;
using System.Data.SqlClient;
using System.Security.Permissions;

namespace System.Web.Caching;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class SqlCacheDependency : CacheDependency
{
	private string uniqueId = Guid.NewGuid().ToString();

	[MonoTODO("What to do with the sqlCmd?")]
	public SqlCacheDependency(SqlCommand sqlCmd)
	{
		if (sqlCmd == null)
		{
			throw new ArgumentNullException("sqlCmd");
		}
	}

	[MonoTODO("What are the params good for?")]
	public SqlCacheDependency(string databaseEntryName, string tableName)
	{
		if (databaseEntryName == null)
		{
			throw new ArgumentNullException("databaseEntryName");
		}
		if (tableName == null)
		{
			throw new ArgumentNullException("tableName");
		}
	}

	[MonoTODO("Needs more testing - especially the return value and database+table lookup.")]
	public static CacheDependency CreateOutputCacheDependency(string dependency)
	{
		if (dependency == null)
		{
			throw new HttpException(InvalidDependencyFormatMessage(dependency));
		}
		if (dependency.Length == 0)
		{
			throw new ArgumentException(InvalidDependencyFormatMessage(dependency), "dependency");
		}
		string[] array = dependency.Split(';');
		List<SqlCacheDependency> list = new List<SqlCacheDependency>();
		string[] array2 = array;
		foreach (string text in array2)
		{
			int num = text.IndexOf(':');
			if (num == -1)
			{
				throw new ArgumentException(InvalidDependencyFormatMessage(dependency), "dependency");
			}
			list.Add(new SqlCacheDependency(text.Substring(0, num), text.Substring(num + 1)));
		}
		switch (list.Count)
		{
		case 0:
			return null;
		case 1:
			return list[0];
		default:
		{
			AggregateCacheDependency aggregateCacheDependency = new AggregateCacheDependency();
			aggregateCacheDependency.Add(list.ToArray());
			return aggregateCacheDependency;
		}
		}
	}

	private static string InvalidDependencyFormatMessage(string dependency)
	{
		return string.Format("The '' SqlDependency attribute for OutputCache directive is invalid.\n\nFor SQL Server 7.0 and SQL Server 2000, the valid format is \"database:tablename\", and table name must conform to the format of regular identifiers in SQL. To specify multiple pairs of values, use the ';' separator between pairs. (To specify ':', '\\' or ';', prefix it with the '\\' escape character.)\n\nFor dependencies that use SQL Server 9.0 notifications, specify the value 'CommandNotification'.", dependency);
	}

	protected override void DependencyDispose()
	{
		base.DependencyDispose();
	}

	public override string GetUniqueID()
	{
		return uniqueId;
	}
}
