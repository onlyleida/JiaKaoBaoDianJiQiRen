using System.Collections;

namespace System.Diagnostics;

public class ProcessThreadCollection : ReadOnlyCollectionBase
{
	public ProcessThread this[int index] => (ProcessThread)InnerList[index];

	protected ProcessThreadCollection()
	{
	}

	public ProcessThreadCollection(ProcessThread[] processThreads)
	{
		InnerList.AddRange(processThreads);
	}

	public int Add(ProcessThread thread)
	{
		return InnerList.Add(thread);
	}

	public void Insert(int index, ProcessThread thread)
	{
		InnerList.Insert(index, thread);
	}

	public int IndexOf(ProcessThread thread)
	{
		return InnerList.IndexOf(thread);
	}

	public bool Contains(ProcessThread thread)
	{
		return InnerList.Contains(thread);
	}

	public void Remove(ProcessThread thread)
	{
		InnerList.Remove(thread);
	}

	public void CopyTo(ProcessThread[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}
}
