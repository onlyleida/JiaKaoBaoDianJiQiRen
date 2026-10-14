using System.Collections;
using Unity;

namespace System.Windows.Forms;

public class InputLanguageCollection : ReadOnlyCollectionBase
{
	public InputLanguage this[int index]
	{
		get
		{
			if (index >= InnerList.Count)
			{
				throw new ArgumentOutOfRangeException("index");
			}
			return InnerList[index] as InputLanguage;
		}
	}

	internal InputLanguageCollection(InputLanguage[] data)
	{
		InnerList.AddRange(data);
	}

	public bool Contains(InputLanguage value)
	{
		for (int i = 0; i < InnerList.Count; i++)
		{
			if (this[i].Culture == value.Culture && this[i].LayoutName == value.LayoutName)
			{
				return true;
			}
		}
		return false;
	}

	public void CopyTo(InputLanguage[] array, int index)
	{
		if (InnerList.Count > 0)
		{
			InnerList.CopyTo(array, index);
		}
	}

	public int IndexOf(InputLanguage value)
	{
		for (int i = 0; i < InnerList.Count; i++)
		{
			if (this[i].Culture == value.Culture && this[i].LayoutName == value.LayoutName)
			{
				return i;
			}
		}
		return -1;
	}

	internal InputLanguageCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
