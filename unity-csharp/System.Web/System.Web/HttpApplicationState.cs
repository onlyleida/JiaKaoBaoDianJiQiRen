using System.Collections.Specialized;
using System.Security.Permissions;
using System.Threading;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpApplicationState : NameObjectCollectionBase
{
	private HttpStaticObjectsCollection _AppObjects;

	private HttpStaticObjectsCollection _SessionObjects;

	private ReaderWriterLockSlim _Lock;

	private bool IsLockHeld
	{
		get
		{
			if (!_Lock.IsReadLockHeld)
			{
				return _Lock.IsWriteLockHeld;
			}
			return true;
		}
	}

	public string[] AllKeys
	{
		get
		{
			bool flag = false;
			try
			{
				if (!IsLockHeld)
				{
					_Lock.EnterReadLock();
					flag = true;
				}
				return BaseGetAllKeys();
			}
			finally
			{
				if (flag && IsLockHeld)
				{
					_Lock.ExitReadLock();
				}
			}
		}
	}

	public HttpApplicationState Contents => this;

	public override int Count
	{
		get
		{
			bool flag = false;
			try
			{
				if (!IsLockHeld)
				{
					_Lock.EnterReadLock();
					flag = true;
				}
				return base.Count;
			}
			finally
			{
				if (flag && IsLockHeld)
				{
					_Lock.ExitReadLock();
				}
			}
		}
	}

	public object this[string name]
	{
		get
		{
			return Get(name);
		}
		set
		{
			Set(name, value);
		}
	}

	public object this[int index] => Get(index);

	internal HttpStaticObjectsCollection SessionObjects
	{
		get
		{
			if (_SessionObjects == null)
			{
				_SessionObjects = new HttpStaticObjectsCollection();
			}
			return _SessionObjects;
		}
	}

	public HttpStaticObjectsCollection StaticObjects
	{
		get
		{
			if (_AppObjects == null)
			{
				_AppObjects = new HttpStaticObjectsCollection();
			}
			return _AppObjects;
		}
	}

	internal HttpApplicationState()
	{
		_Lock = new ReaderWriterLockSlim();
	}

	internal HttpApplicationState(HttpStaticObjectsCollection AppObj, HttpStaticObjectsCollection SessionObj)
	{
		_AppObjects = AppObj;
		_SessionObjects = SessionObj;
		_Lock = new ReaderWriterLockSlim();
	}

	public void Add(string name, object value)
	{
		bool flag = false;
		try
		{
			if (!IsLockHeld)
			{
				_Lock.EnterWriteLock();
				flag = true;
			}
			BaseAdd(name, value);
		}
		finally
		{
			if (flag && IsLockHeld)
			{
				_Lock.ExitWriteLock();
			}
		}
	}

	public void Clear()
	{
		bool flag = false;
		try
		{
			if (!IsLockHeld)
			{
				_Lock.EnterWriteLock();
				flag = true;
			}
			BaseClear();
		}
		finally
		{
			if (flag && IsLockHeld)
			{
				_Lock.ExitWriteLock();
			}
		}
	}

	public object Get(string name)
	{
		object obj = null;
		bool flag = false;
		try
		{
			if (!IsLockHeld)
			{
				_Lock.EnterReadLock();
				flag = true;
			}
			return BaseGet(name);
		}
		finally
		{
			if (flag && IsLockHeld)
			{
				_Lock.ExitReadLock();
			}
		}
	}

	public object Get(int index)
	{
		bool flag = false;
		try
		{
			if (!IsLockHeld)
			{
				_Lock.EnterReadLock();
				flag = true;
			}
			return BaseGet(index);
		}
		finally
		{
			if (flag && IsLockHeld)
			{
				_Lock.ExitReadLock();
			}
		}
	}

	public string GetKey(int index)
	{
		bool flag = false;
		try
		{
			if (!IsLockHeld)
			{
				_Lock.EnterReadLock();
				flag = true;
			}
			return BaseGetKey(index);
		}
		finally
		{
			if (flag && IsLockHeld)
			{
				_Lock.ExitReadLock();
			}
		}
	}

	public void Lock()
	{
		if (!_Lock.IsWriteLockHeld)
		{
			_Lock.EnterWriteLock();
		}
	}

	public void Remove(string name)
	{
		bool flag = false;
		try
		{
			if (!IsLockHeld)
			{
				_Lock.EnterWriteLock();
				flag = true;
			}
			BaseRemove(name);
		}
		finally
		{
			if (flag && IsLockHeld)
			{
				_Lock.ExitWriteLock();
			}
		}
	}

	public void RemoveAll()
	{
		Clear();
	}

	public void RemoveAt(int index)
	{
		bool flag = false;
		try
		{
			if (!IsLockHeld)
			{
				_Lock.EnterWriteLock();
				flag = true;
			}
			BaseRemoveAt(index);
		}
		finally
		{
			if (flag && IsLockHeld)
			{
				_Lock.ExitWriteLock();
			}
		}
	}

	public void Set(string name, object value)
	{
		bool flag = false;
		try
		{
			if (!IsLockHeld)
			{
				_Lock.EnterWriteLock();
				flag = true;
			}
			BaseSet(name, value);
		}
		finally
		{
			if (flag && IsLockHeld)
			{
				_Lock.ExitWriteLock();
			}
		}
	}

	public void UnLock()
	{
		if (_Lock.IsWriteLockHeld)
		{
			_Lock.ExitWriteLock();
		}
	}
}
