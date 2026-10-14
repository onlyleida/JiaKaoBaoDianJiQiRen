using System.Collections;

namespace System.Xml.Serialization.Advanced;

public class SchemaImporterExtensionCollection : CollectionBase
{
	private Hashtable exNames;

	internal Hashtable Names
	{
		get
		{
			if (exNames == null)
			{
				exNames = new Hashtable();
			}
			return exNames;
		}
	}

	public SchemaImporterExtension this[int index]
	{
		get
		{
			return (SchemaImporterExtension)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public int Add(SchemaImporterExtension extension)
	{
		return Add(extension.GetType().FullName, extension);
	}

	public int Add(string name, Type type)
	{
		if (type.IsSubclassOf(typeof(SchemaImporterExtension)))
		{
			return Add(name, (SchemaImporterExtension)Activator.CreateInstance(type));
		}
		throw new ArgumentException(Res.GetString("'{0}' is not a valid SchemaExtensionType.", type));
	}

	public void Remove(string name)
	{
		if (Names[name] != null)
		{
			List.Remove(Names[name]);
			Names[name] = null;
		}
	}

	public new void Clear()
	{
		Names.Clear();
		List.Clear();
	}

	internal SchemaImporterExtensionCollection Clone()
	{
		SchemaImporterExtensionCollection schemaImporterExtensionCollection = new SchemaImporterExtensionCollection();
		schemaImporterExtensionCollection.exNames = (Hashtable)Names.Clone();
		foreach (object item in List)
		{
			schemaImporterExtensionCollection.List.Add(item);
		}
		return schemaImporterExtensionCollection;
	}

	internal int Add(string name, SchemaImporterExtension extension)
	{
		if (Names[name] != null)
		{
			if (Names[name].GetType() != extension.GetType())
			{
				throw new InvalidOperationException(Res.GetString("Duplicate extension name.  schemaImporterExtension with name '{0}' already been added.", name));
			}
			return -1;
		}
		Names[name] = extension;
		return List.Add(extension);
	}

	public void Insert(int index, SchemaImporterExtension extension)
	{
		List.Insert(index, extension);
	}

	public int IndexOf(SchemaImporterExtension extension)
	{
		return List.IndexOf(extension);
	}

	public bool Contains(SchemaImporterExtension extension)
	{
		return List.Contains(extension);
	}

	public void Remove(SchemaImporterExtension extension)
	{
		List.Remove(extension);
	}

	public void CopyTo(SchemaImporterExtension[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
