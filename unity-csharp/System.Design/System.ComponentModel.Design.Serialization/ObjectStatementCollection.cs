using System.CodeDom;
using System.Collections;

namespace System.ComponentModel.Design.Serialization;

public sealed class ObjectStatementCollection : IEnumerable
{
	private Hashtable _statements;

	public CodeStatementCollection this[object statementOwner] => _statements[statementOwner] as CodeStatementCollection;

	internal ObjectStatementCollection()
	{
		_statements = new Hashtable();
	}

	public bool ContainsKey(object statementOwner)
	{
		return _statements.ContainsKey(statementOwner);
	}

	public IDictionaryEnumerator GetEnumerator()
	{
		return _statements.GetEnumerator();
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}

	public void Populate(object owner)
	{
		if (_statements[owner] == null)
		{
			_statements[owner] = null;
		}
	}

	public void Populate(ICollection statementOwners)
	{
		foreach (object statementOwner in statementOwners)
		{
			Populate(statementOwner);
		}
	}
}
