using System.Collections;
using System.Collections.Specialized;
using Unity;

namespace System.DirectoryServices;

public class SearchResult
{
	private string _Path;

	private ResultPropertyCollection _Properties;

	private DirectoryEntry _Entry;

	private StringCollection _PropsToLoad;

	private bool ispropnull;

	private PropertyCollection _Rproperties;

	internal PropertyCollection Rproperties => _Rproperties;

	internal StringCollection PropsToLoad
	{
		get
		{
			if (_PropsToLoad != null)
			{
				return _PropsToLoad;
			}
			return null;
		}
	}

	public ResultPropertyCollection Properties
	{
		get
		{
			if (ispropnull)
			{
				_Properties = new ResultPropertyCollection();
				IDictionaryEnumerator enumerator = Rproperties.GetEnumerator();
				while (enumerator.MoveNext())
				{
					string text = (string)enumerator.Key;
					ResultPropertyValueCollection resultPropertyValueCollection = new ResultPropertyValueCollection();
					if (Rproperties[text].Count == 1)
					{
						string component = (string)Rproperties[text].Value;
						resultPropertyValueCollection.Add(component);
					}
					else if (Rproperties[text].Count > 1)
					{
						object[] components = (object[])Rproperties[text].Value;
						resultPropertyValueCollection.AddRange(components);
					}
					_Properties.Add(text, resultPropertyValueCollection);
				}
				ispropnull = false;
			}
			return _Properties;
		}
	}

	public string Path => _Path;

	private void InitBlock()
	{
		_Properties = null;
		_Entry = null;
		_PropsToLoad = null;
		ispropnull = true;
		_Rproperties = null;
	}

	internal SearchResult(DirectoryEntry entry)
	{
		ispropnull = true;
		base._002Ector();
		InitBlock();
		_Entry = entry;
		_Path = entry.Path;
	}

	internal SearchResult(DirectoryEntry entry, PropertyCollection props)
	{
		ispropnull = true;
		base._002Ector();
		InitBlock();
		_Entry = entry;
		_Path = entry.Path;
		_Rproperties = props;
	}

	public DirectoryEntry GetDirectoryEntry()
	{
		return _Entry;
	}

	internal SearchResult()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
