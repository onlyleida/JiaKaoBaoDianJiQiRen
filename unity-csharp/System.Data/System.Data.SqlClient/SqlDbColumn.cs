using System.Data.Common;

namespace System.Data.SqlClient;

internal class SqlDbColumn : DbColumn
{
	private readonly _SqlMetaData _metadata;

	internal bool? SqlIsAliased
	{
		set
		{
			IsAliased = value;
		}
	}

	internal bool? SqlIsKey
	{
		set
		{
			IsKey = value;
		}
	}

	internal bool? SqlIsHidden
	{
		set
		{
			IsHidden = value;
		}
	}

	internal bool? SqlIsExpression
	{
		set
		{
			IsExpression = value;
		}
	}

	internal Type SqlDataType
	{
		set
		{
			DataType = value;
		}
	}

	internal string SqlDataTypeName
	{
		set
		{
			DataTypeName = value;
		}
	}

	internal int? SqlNumericScale
	{
		set
		{
			NumericScale = value;
		}
	}

	internal SqlDbColumn(_SqlMetaData md)
	{
		_metadata = md;
		Populate();
	}

	private void Populate()
	{
		AllowDBNull = _metadata.isNullable;
		BaseCatalogName = _metadata.catalogName;
		BaseColumnName = _metadata.baseColumn;
		BaseSchemaName = _metadata.schemaName;
		BaseServerName = _metadata.serverName;
		BaseTableName = _metadata.tableName;
		ColumnName = _metadata.column;
		ColumnOrdinal = _metadata.ordinal;
		ColumnSize = ((_metadata.metaType.IsSizeInCharacters && _metadata.length != int.MaxValue) ? (_metadata.length / 2) : _metadata.length);
		IsAutoIncrement = _metadata.isIdentity;
		IsIdentity = _metadata.isIdentity;
		IsLong = _metadata.metaType.IsLong;
		if (SqlDbType.Timestamp == _metadata.type)
		{
			IsUnique = true;
		}
		else
		{
			IsUnique = false;
		}
		if (byte.MaxValue != _metadata.precision)
		{
			NumericPrecision = _metadata.precision;
		}
		else
		{
			NumericPrecision = _metadata.metaType.Precision;
		}
		IsReadOnly = _metadata.updatability == 0;
		UdtAssemblyQualifiedName = _metadata.udtAssemblyQualifiedName;
	}
}
