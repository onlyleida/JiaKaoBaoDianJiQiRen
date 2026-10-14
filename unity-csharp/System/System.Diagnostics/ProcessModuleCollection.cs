using System.Collections;

namespace System.Diagnostics;

public class ProcessModuleCollection : ReadOnlyCollectionBase
{
	public ProcessModule this[int index] => (ProcessModule)InnerList[index];

	protected ProcessModuleCollection()
	{
	}

	public ProcessModuleCollection(ProcessModule[] processModules)
	{
		InnerList.AddRange(processModules);
	}

	public int IndexOf(ProcessModule module)
	{
		return InnerList.IndexOf(module);
	}

	public bool Contains(ProcessModule module)
	{
		return InnerList.Contains(module);
	}

	public void CopyTo(ProcessModule[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}
}
