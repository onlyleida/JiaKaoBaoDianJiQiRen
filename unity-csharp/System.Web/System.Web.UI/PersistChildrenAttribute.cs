namespace System.Web.UI;

[AttributeUsage(AttributeTargets.Class)]
public sealed class PersistChildrenAttribute : Attribute
{
	public static readonly PersistChildrenAttribute Yes = new PersistChildrenAttribute(persist: true);

	public static readonly PersistChildrenAttribute No = new PersistChildrenAttribute(persist: false);

	public static readonly PersistChildrenAttribute Default = Yes;

	private bool _persist;

	private bool _usesCustomPersistence;

	public bool Persist => _persist;

	public bool UsesCustomPersistence
	{
		get
		{
			if (!_persist)
			{
				return _usesCustomPersistence;
			}
			return false;
		}
	}

	public PersistChildrenAttribute(bool persist)
	{
		_persist = persist;
	}

	public PersistChildrenAttribute(bool persist, bool usesCustomPersistence)
		: this(persist)
	{
		_usesCustomPersistence = usesCustomPersistence;
	}

	public override int GetHashCode()
	{
		return Persist.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (obj != null && obj is PersistChildrenAttribute)
		{
			return ((PersistChildrenAttribute)obj).Persist == _persist;
		}
		return false;
	}

	public override bool IsDefaultAttribute()
	{
		return Equals(Default);
	}
}
