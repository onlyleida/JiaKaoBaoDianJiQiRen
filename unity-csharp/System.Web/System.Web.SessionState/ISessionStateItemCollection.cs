using System.Collections;
using System.Collections.Specialized;

namespace System.Web.SessionState;

public interface ISessionStateItemCollection : ICollection, IEnumerable
{
	bool Dirty { get; set; }

	object this[int index] { get; set; }

	object this[string name] { get; set; }

	NameObjectCollectionBase.KeysCollection Keys { get; }

	void Clear();

	void Remove(string name);

	void RemoveAt(int index);
}
