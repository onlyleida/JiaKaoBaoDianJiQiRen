using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(CustomError), AddItemName = "error", CollectionType = ConfigurationElementCollectionType.BasicMap)]
public sealed class CustomErrorCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public string[] AllKeys
	{
		get
		{
			string[] array = new string[Count];
			for (int i = 0; i < Count; i++)
			{
				array[i] = this[i].StatusCode.ToString();
			}
			return array;
		}
	}

	public override ConfigurationElementCollectionType CollectionType => ConfigurationElementCollectionType.BasicMap;

	protected override string ElementName => "error";

	public CustomError this[int index]
	{
		get
		{
			return (CustomError)BaseGet(index);
		}
		set
		{
			if (BaseGet(index) != null)
			{
				RemoveAt(index);
			}
			BaseAdd(index, value);
		}
	}

	public new CustomError this[string statusCode] => (CustomError)BaseGet(statusCode);

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	static CustomErrorCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public void Add(CustomError customError)
	{
		BaseAdd(customError);
	}

	public void Clear()
	{
		BaseClear();
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new CustomError();
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((CustomError)element).StatusCode.ToString();
	}

	public string GetKey(int index)
	{
		return (string)BaseGetKey(index);
	}

	public CustomError Get(string statusCode)
	{
		return (CustomError)BaseGet(statusCode);
	}

	public CustomError Get(int index)
	{
		return (CustomError)BaseGet(index);
	}

	public void Remove(string statusCode)
	{
		BaseRemove(statusCode);
	}

	public void RemoveAt(int index)
	{
		BaseRemoveAt(index);
	}

	public void Set(CustomError customError)
	{
		CustomError customError2 = Get(customError.StatusCode.ToString());
		if (customError2 == null)
		{
			Add(customError);
			return;
		}
		int index = BaseIndexOf(customError2);
		RemoveAt(index);
		BaseAdd(index, customError);
	}
}
