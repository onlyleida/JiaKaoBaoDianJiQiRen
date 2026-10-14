using System.Collections;
using System.Collections.Specialized;
using System.IO;
using System.Web.Util;

namespace System.Web.SessionState;

public sealed class SessionStateItemCollection : NameObjectCollectionBase, ISessionStateItemCollection, ICollection, IEnumerable
{
	private bool is_dirty;

	public bool Dirty
	{
		get
		{
			return is_dirty;
		}
		set
		{
			is_dirty = value;
		}
	}

	public object this[int index]
	{
		get
		{
			object obj = BaseGet(index);
			if (IsMutable(obj))
			{
				is_dirty = true;
			}
			return obj;
		}
		set
		{
			BaseSet(index, value);
			is_dirty = true;
		}
	}

	public object this[string name]
	{
		get
		{
			object obj = BaseGet(name);
			if (IsMutable(obj))
			{
				is_dirty = true;
			}
			return obj;
		}
		set
		{
			BaseSet(name, value);
			is_dirty = true;
		}
	}

	public override KeysCollection Keys => base.Keys;

	private static bool IsMutable(object o)
	{
		if (o != null)
		{
			return Type.GetTypeCode(o.GetType()) == TypeCode.Object;
		}
		return false;
	}

	public SessionStateItemCollection()
	{
	}

	internal SessionStateItemCollection(int capacity)
		: base(capacity)
	{
	}

	public void Clear()
	{
		if (Count > 0)
		{
			BaseClear();
			is_dirty = true;
		}
	}

	public static SessionStateItemCollection Deserialize(BinaryReader reader)
	{
		int num = reader.ReadInt32();
		SessionStateItemCollection sessionStateItemCollection = new SessionStateItemCollection(num);
		while (num > 0)
		{
			sessionStateItemCollection[reader.ReadString()] = AltSerialization.Deserialize(reader);
			num--;
		}
		return sessionStateItemCollection;
	}

	public void Serialize(BinaryWriter writer)
	{
		writer.Write(Count);
		foreach (string key in base.Keys)
		{
			writer.Write(key);
			AltSerialization.Serialize(writer, BaseGet(key));
		}
	}

	public override IEnumerator GetEnumerator()
	{
		return base.GetEnumerator();
	}

	public void Remove(string name)
	{
		BaseRemove(name);
		is_dirty = true;
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
		is_dirty = true;
	}
}
