using System.Collections;

namespace System.Windows.Forms.Design.Behavior;

public sealed class BehaviorServiceAdornerCollection : CollectionBase
{
	private int state;

	internal int State => state;

	public Adorner this[int index]
	{
		get
		{
			return (Adorner)InnerList[index];
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

	public BehaviorServiceAdornerCollection(BehaviorService behaviorService)
		: this(behaviorService.Adorners)
	{
	}

	public BehaviorServiceAdornerCollection(Adorner[] value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		InnerList.AddRange(value);
	}

	public BehaviorServiceAdornerCollection(BehaviorServiceAdornerCollection value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		InnerList.AddRange(value);
	}

	public int Add(Adorner value)
	{
		state++;
		return InnerList.Add(value);
	}

	public void AddRange(Adorner[] value)
	{
		state++;
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		InnerList.AddRange(value);
	}

	public void AddRange(BehaviorServiceAdornerCollection value)
	{
		state++;
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		InnerList.AddRange(value);
	}

	public bool Contains(Adorner value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(Adorner[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}

	public int IndexOf(Adorner value)
	{
		return InnerList.IndexOf(value);
	}

	public new BehaviorServiceAdornerCollectionEnumerator GetEnumerator()
	{
		return new BehaviorServiceAdornerCollectionEnumerator(this);
	}

	public void Insert(int index, Adorner value)
	{
		state++;
		InnerList.Insert(index, value);
	}

	public void Remove(Adorner value)
	{
		state++;
		InnerList.Remove(value);
	}
}
