using System.Collections;
using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class ValidatorCollection : ICollection, IEnumerable
{
	private ArrayList _validators;

	public int Count => _validators.Count;

	public bool IsReadOnly => _validators.IsReadOnly;

	public bool IsSynchronized => _validators.IsSynchronized;

	public IValidator this[int index] => (IValidator)_validators[index];

	public object SyncRoot => this;

	public ValidatorCollection()
	{
		_validators = new ArrayList();
	}

	public void Add(IValidator validator)
	{
		_validators.Add(validator);
	}

	public bool Contains(IValidator validator)
	{
		return _validators.Contains(validator);
	}

	public void CopyTo(Array array, int index)
	{
		_validators.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return _validators.GetEnumerator();
	}

	public void Remove(IValidator validator)
	{
		_validators.Remove(validator);
	}
}
