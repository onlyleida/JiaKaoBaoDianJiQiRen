using System.Collections;

namespace System.CodeDom.Compiler;

[Serializable]
public class CompilerErrorCollection : CollectionBase
{
	public CompilerError this[int index]
	{
		get
		{
			return (CompilerError)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	public bool HasErrors
	{
		get
		{
			if (Count > 0)
			{
				{
					IEnumerator enumerator = GetEnumerator();
					try
					{
						while (enumerator.MoveNext())
						{
							if (!((CompilerError)enumerator.Current).IsWarning)
							{
								return true;
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
				}
			}
			return false;
		}
	}

	public bool HasWarnings
	{
		get
		{
			if (Count > 0)
			{
				{
					IEnumerator enumerator = GetEnumerator();
					try
					{
						while (enumerator.MoveNext())
						{
							if (((CompilerError)enumerator.Current).IsWarning)
							{
								return true;
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
				}
			}
			return false;
		}
	}

	public CompilerErrorCollection()
	{
	}

	public CompilerErrorCollection(CompilerErrorCollection value)
	{
		AddRange(value);
	}

	public CompilerErrorCollection(CompilerError[] value)
	{
		AddRange(value);
	}

	public int Add(CompilerError value)
	{
		return List.Add(value);
	}

	public void AddRange(CompilerError[] value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		for (int i = 0; i < value.Length; i++)
		{
			Add(value[i]);
		}
	}

	public void AddRange(CompilerErrorCollection value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		int count = value.Count;
		for (int i = 0; i < count; i++)
		{
			Add(value[i]);
		}
	}

	public bool Contains(CompilerError value)
	{
		return List.Contains(value);
	}

	public void CopyTo(CompilerError[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public int IndexOf(CompilerError value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, CompilerError value)
	{
		List.Insert(index, value);
	}

	public void Remove(CompilerError value)
	{
		List.Remove(value);
	}
}
