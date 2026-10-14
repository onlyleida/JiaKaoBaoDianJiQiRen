namespace System.ComponentModel.Design.Serialization;

public sealed class StatementContext
{
	private ObjectStatementCollection _statements;

	public ObjectStatementCollection StatementCollection
	{
		get
		{
			if (_statements == null)
			{
				_statements = new ObjectStatementCollection();
			}
			return _statements;
		}
	}
}
