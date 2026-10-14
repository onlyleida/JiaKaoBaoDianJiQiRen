using System.Collections;

namespace System.Web.Services.Description;

internal class MimeParameterCollection : CollectionBase
{
	private Type writerType;

	internal Type WriterType
	{
		get
		{
			return writerType;
		}
		set
		{
			writerType = value;
		}
	}

	internal MimeParameter this[int index]
	{
		get
		{
			return (MimeParameter)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	internal int Add(MimeParameter parameter)
	{
		return List.Add(parameter);
	}

	internal void Insert(int index, MimeParameter parameter)
	{
		List.Insert(index, parameter);
	}

	internal int IndexOf(MimeParameter parameter)
	{
		return List.IndexOf(parameter);
	}

	internal bool Contains(MimeParameter parameter)
	{
		return List.Contains(parameter);
	}

	internal void Remove(MimeParameter parameter)
	{
		List.Remove(parameter);
	}

	internal void CopyTo(MimeParameter[] array, int index)
	{
		List.CopyTo(array, index);
	}
}
