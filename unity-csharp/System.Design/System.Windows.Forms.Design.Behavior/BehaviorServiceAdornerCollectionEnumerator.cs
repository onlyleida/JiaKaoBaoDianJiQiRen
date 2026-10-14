using System.Collections;

namespace System.Windows.Forms.Design.Behavior;

public class BehaviorServiceAdornerCollectionEnumerator : IEnumerator
{
	private BehaviorServiceAdornerCollection mappings;

	private int index;

	private int state;

	public Adorner Current
	{
		get
		{
			if (index >= 0)
			{
				return mappings[index];
			}
			return null;
		}
	}

	object IEnumerator.Current => Current;

	public BehaviorServiceAdornerCollectionEnumerator(BehaviorServiceAdornerCollection mappings)
	{
		if (mappings == null)
		{
			throw new ArgumentNullException("mappings");
		}
		this.mappings = mappings;
		Reset();
	}

	private void CheckState()
	{
		if (mappings.State != state)
		{
			throw new InvalidOperationException("Collection has changed");
		}
	}

	public bool MoveNext()
	{
		CheckState();
		if (index++ < mappings.Count)
		{
			return true;
		}
		index--;
		return false;
	}

	public void Reset()
	{
		index = -1;
	}

	bool IEnumerator.MoveNext()
	{
		return MoveNext();
	}

	void IEnumerator.Reset()
	{
		Reset();
	}
}
