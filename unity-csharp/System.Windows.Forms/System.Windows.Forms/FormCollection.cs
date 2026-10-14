using System.Collections;

namespace System.Windows.Forms;

public class FormCollection : ReadOnlyCollectionBase
{
	public virtual Form this[int index] => (Form)InnerList[index];

	public virtual Form this[string name]
	{
		get
		{
			foreach (Form inner in InnerList)
			{
				if (inner.Name == name)
				{
					return inner;
				}
			}
			return null;
		}
	}

	internal void Add(Form form)
	{
		if (!InnerList.Contains(form))
		{
			InnerList.Add(form);
		}
	}

	internal void Remove(Form form)
	{
		InnerList.Remove(form);
	}
}
