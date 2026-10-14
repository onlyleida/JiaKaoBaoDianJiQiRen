using System.Collections;

namespace System.Windows.Forms.Design.Behavior;

public class GlyphCollection : CollectionBase
{
	public Glyph this[int index]
	{
		get
		{
			return (Glyph)InnerList[index];
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			InnerList[index] = value;
		}
	}

	public GlyphCollection()
	{
	}

	public GlyphCollection(Glyph[] value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		InnerList.AddRange(value);
	}

	public GlyphCollection(GlyphCollection value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		InnerList.AddRange(value);
	}

	public int Add(Glyph value)
	{
		return InnerList.Add(value);
	}

	public void AddRange(Glyph[] value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		InnerList.AddRange(value);
	}

	public void AddRange(GlyphCollection value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		InnerList.AddRange(value);
	}

	public bool Contains(Glyph value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(Glyph[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}

	public int IndexOf(Glyph value)
	{
		return InnerList.IndexOf(value);
	}

	public void Insert(int index, Glyph value)
	{
		InnerList.Insert(index, value);
	}

	public void Remove(Glyph value)
	{
		InnerList.Remove(value);
	}
}
