using System.Data;

namespace System.ComponentModel.Design.Data;

public sealed class DesignerDataColumn
{
	private string name;

	private DbType data_type;

	private object default_value;

	private bool identity;

	private bool nullable;

	private bool primary_key;

	private int precision;

	private int scale;

	private int length;

	public string Name => name;

	public DbType DataType => data_type;

	public object DefaultValue => default_value;

	public bool Identity => identity;

	public bool Nullable => nullable;

	public bool PrimaryKey => primary_key;

	public int Precision => precision;

	public int Scale => scale;

	public int Length => length;

	[System.MonoTODO]
	public DesignerDataColumn(string name, DbType dataType)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public DesignerDataColumn(string name, DbType dataType, object defaultValue)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public DesignerDataColumn(string name, DbType dataType, object defaultValue, bool identity, bool nullable, bool primaryKey, int precision, int scale, int length)
	{
		this.name = name;
		data_type = dataType;
		default_value = defaultValue;
		this.identity = identity;
		this.nullable = nullable;
		primary_key = primaryKey;
		this.precision = precision;
		this.scale = scale;
		this.length = length;
	}
}
