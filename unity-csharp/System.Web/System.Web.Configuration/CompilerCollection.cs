using System.Collections;
using System.Configuration;

namespace System.Web.Configuration;

[ConfigurationCollection(typeof(Compiler), AddItemName = "compiler", CollectionType = ConfigurationElementCollectionType.BasicMap)]
public sealed class CompilerCollection : ConfigurationElementCollection
{
	private static ConfigurationPropertyCollection properties;

	public string[] AllKeys
	{
		get
		{
			string[] array = new string[Count];
			for (int i = 0; i < Count; i++)
			{
				array[i] = this[i].Language;
			}
			return array;
		}
	}

	public override ConfigurationElementCollectionType CollectionType => ConfigurationElementCollectionType.BasicMap;

	protected override string ElementName => "compiler";

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	public Compiler this[int index] => (Compiler)BaseGet(index);

	public new Compiler this[string language]
	{
		get
		{
			IEnumerator enumerator = GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					Compiler compiler = (Compiler)enumerator.Current;
					if (compiler.Language.IndexOf(language, StringComparison.InvariantCultureIgnoreCase) != -1)
					{
						return compiler;
					}
				}
			}
			finally
			{
				IDisposable disposable = enumerator as IDisposable;
				if (disposable != null)
				{
					disposable.Dispose();
				}
			}
			return null;
		}
	}

	static CompilerCollection()
	{
		properties = new ConfigurationPropertyCollection();
	}

	public CompilerCollection()
		: base(CaseInsensitiveComparer.DefaultInvariant)
	{
	}

	protected override ConfigurationElement CreateNewElement()
	{
		return new Compiler();
	}

	public Compiler Get(int index)
	{
		return (Compiler)BaseGet(index);
	}

	public Compiler Get(string language)
	{
		return this[language];
	}

	protected override object GetElementKey(ConfigurationElement element)
	{
		return ((Compiler)element).Language;
	}

	public string GetKey(int index)
	{
		return (string)BaseGetKey(index);
	}
}
