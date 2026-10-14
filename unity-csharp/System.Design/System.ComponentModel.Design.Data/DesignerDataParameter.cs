using System.Data;

namespace System.ComponentModel.Design.Data;

public sealed class DesignerDataParameter
{
	private string name;

	private DbType type;

	private ParameterDirection direction;

	public DbType DataType => type;

	public string Name => name;

	public ParameterDirection Direction => direction;

	public DesignerDataParameter(string name, DbType dataType, ParameterDirection direction)
	{
		this.name = name;
		type = dataType;
		this.direction = direction;
	}
}
