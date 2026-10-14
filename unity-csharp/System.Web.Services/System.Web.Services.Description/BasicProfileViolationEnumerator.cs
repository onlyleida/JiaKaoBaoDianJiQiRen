using System.Collections;
using System.Collections.Generic;

namespace System.Web.Services.Description;

public class BasicProfileViolationEnumerator : IEnumerator<BasicProfileViolation>, IDisposable, IEnumerator
{
	private BasicProfileViolationCollection list;

	private int idx;

	private int end;

	public BasicProfileViolation Current => list[idx];

	object IEnumerator.Current => list[idx];

	public BasicProfileViolationEnumerator(BasicProfileViolationCollection list)
	{
		this.list = list;
		idx = -1;
		end = list.Count - 1;
	}

	public void Dispose()
	{
	}

	public bool MoveNext()
	{
		if (idx >= end)
		{
			return false;
		}
		idx++;
		return true;
	}

	void IEnumerator.Reset()
	{
		idx = -1;
	}
}
