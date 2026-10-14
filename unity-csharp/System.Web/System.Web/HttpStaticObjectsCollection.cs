using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Security.Permissions;
using System.Web.UI;
using System.Web.Util;

namespace System.Web;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class HttpStaticObjectsCollection : ICollection, IEnumerable
{
	private sealed class StaticItem
	{
		private object this_lock = new object();

		private Type type;

		private object instance;

		public object Instance
		{
			get
			{
				lock (this_lock)
				{
					if (instance == null)
					{
						instance = Activator.CreateInstance(type);
					}
				}
				return instance;
			}
		}

		public StaticItem(Type type)
		{
			this.type = type;
		}

		public StaticItem(StaticItem item)
		{
			type = item.type;
		}
	}

	private Dictionary<string, object> objects;

	private Dictionary<string, object> Objects
	{
		get
		{
			if (objects == null)
			{
				objects = new Dictionary<string, object>(StringComparer.Ordinal);
			}
			return objects;
		}
	}

	public object this[string name]
	{
		get
		{
			if (objects == null)
			{
				return null;
			}
			StaticItem staticItem = null;
			if (Objects.TryGetValue(name, out var value))
			{
				staticItem = value as StaticItem;
			}
			return staticItem?.Instance;
		}
	}

	public int Count
	{
		get
		{
			if (objects == null)
			{
				return 0;
			}
			return Objects.Count;
		}
	}

	public bool IsReadOnly => true;

	public bool IsSynchronized => false;

	[MonoTODO("Not implemented")]
	public bool NeverAccessed
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public object SyncRoot => this;

	public HttpStaticObjectsCollection()
	{
	}

	internal HttpStaticObjectsCollection(HttpApplicationState appstate)
	{
	}

	public object GetObject(string name)
	{
		return this[name];
	}

	public IEnumerator GetEnumerator()
	{
		return Objects.GetEnumerator();
	}

	public void CopyTo(Array array, int index)
	{
		if (objects == null)
		{
			return;
		}
		if (array == null)
		{
			throw new ArgumentNullException("array");
		}
		if (index < 0)
		{
			throw new ArgumentOutOfRangeException("index");
		}
		if (array.Rank > 1)
		{
			throw new ArgumentException("array is multidimensional");
		}
		if (array.Length > 0 && index >= array.Length)
		{
			throw new ArgumentException("index is equal to or greater than array.Length");
		}
		if (index + objects.Count > array.Length)
		{
			throw new ArgumentException("Not enough room from index to end of array for this collection");
		}
		foreach (KeyValuePair<string, object> @object in objects)
		{
			array.SetValue(new DictionaryEntry(@object.Key, @object.Value), index++);
		}
	}

	internal IDictionary GetObjects()
	{
		return Objects;
	}

	internal HttpStaticObjectsCollection Clone()
	{
		HttpStaticObjectsCollection httpStaticObjectsCollection = new HttpStaticObjectsCollection();
		if (objects == null)
		{
			return httpStaticObjectsCollection;
		}
		Dictionary<string, object> dictionary = httpStaticObjectsCollection.Objects;
		foreach (KeyValuePair<string, object> @object in objects)
		{
			StaticItem value = new StaticItem((StaticItem)@object.Value);
			dictionary[@object.Key] = value;
		}
		return httpStaticObjectsCollection;
	}

	internal void Add(ObjectTagBuilder tag)
	{
		Objects.Add(tag.ObjectID, new StaticItem(tag.Type));
	}

	private void Set(string name, object obj)
	{
		Objects[name] = obj;
	}

	public void Serialize(BinaryWriter writer)
	{
		if (objects == null)
		{
			writer.Write(0);
			return;
		}
		writer.Write(objects.Count);
		foreach (KeyValuePair<string, object> @object in objects)
		{
			writer.Write(@object.Key);
			AltSerialization.Serialize(writer, @object.Value);
		}
	}

	public static HttpStaticObjectsCollection Deserialize(BinaryReader reader)
	{
		HttpStaticObjectsCollection httpStaticObjectsCollection = new HttpStaticObjectsCollection();
		for (int num = reader.ReadInt32(); num > 0; num--)
		{
			httpStaticObjectsCollection.Set(reader.ReadString(), AltSerialization.Deserialize(reader));
		}
		return httpStaticObjectsCollection;
	}

	internal byte[] ToByteArray()
	{
		MemoryStream memoryStream = null;
		try
		{
			memoryStream = new MemoryStream();
			Serialize(new BinaryWriter(memoryStream));
			return memoryStream.GetBuffer();
		}
		catch
		{
			throw;
		}
		finally
		{
			memoryStream?.Close();
		}
	}

	internal static HttpStaticObjectsCollection FromByteArray(byte[] data)
	{
		HttpStaticObjectsCollection httpStaticObjectsCollection = null;
		MemoryStream memoryStream = null;
		try
		{
			memoryStream = new MemoryStream(data);
			return Deserialize(new BinaryReader(memoryStream));
		}
		catch
		{
			throw;
		}
		finally
		{
			memoryStream?.Close();
		}
	}
}
