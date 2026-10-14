using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(SqlCacheDependencyDatabase), CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
public sealed class SqlCacheDependencyDatabaseCollection : ConfigurationElementCollection
{
	public string[] AllKeys
	{
		get
		{
			string[] array = new string[Count];
			for (int i = 0; i < Count; i++)
			{
				array[i] = this[i].Name;
			}
			return array;
		}
	}

	public SqlCacheDependencyDatabase this[int index]
	{
		get
		{
			return (SqlCacheDependencyDatabase)BaseGet(index);
		}
		set
		{
			if (BaseGet(index) != null)
			{
				BaseRemoveAt(index);
			}
			BaseAdd(index, value);
		}
	}

	public new SqlCacheDependencyDatabase this[string name] => (SqlCacheDependencyDatabase)BaseGet(name);

	public void Add(SqlCacheDependencyDatabase name)
	{
		BaseAdd(name);
	}

	public void Clear()
	{
		BaseClear();
	}

	public SqlCacheDependencyDatabase Get(string name)
	{
		return (SqlCacheDependencyDatabase)BaseGet(name);
	}

	public SqlCacheDependencyDatabase Get(int index)
	{
		return (SqlCacheDependencyDatabase)BaseGet(index);
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new SqlCacheDependencyDatabase();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((SqlCacheDependencyDatabase)element).Name;
	}

	public string GetKey(int index)
	{
		return Get(index)?.Name;
	}

	public void Remove(string name)
	{
		BaseRemove(name);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	public void Set(SqlCacheDependencyDatabase user)
	{
		SqlCacheDependencyDatabase sqlCacheDependencyDatabase = Get(user.Name);
		if (sqlCacheDependencyDatabase == null)
		{
			Add(user);
			return;
		}
		int index = BaseIndexOf(sqlCacheDependencyDatabase);
		RemoveAt(index);
		BaseAdd(index, user);
	}
}
