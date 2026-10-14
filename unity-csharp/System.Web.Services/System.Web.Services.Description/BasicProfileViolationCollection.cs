using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Text;

namespace System.Web.Services.Description;

public class BasicProfileViolationCollection : CollectionBase, IEnumerable<BasicProfileViolation>, IEnumerable
{
	private Hashtable violations = new Hashtable();

	public BasicProfileViolation this[int index]
	{
		get
		{
			return (BasicProfileViolation)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	internal int Add(BasicProfileViolation violation)
	{
		BasicProfileViolation basicProfileViolation = (BasicProfileViolation)violations[violation.NormativeStatement];
		if (basicProfileViolation == null)
		{
			violations[violation.NormativeStatement] = violation;
			return List.Add(violation);
		}
		StringEnumerator enumerator = violation.Elements.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				basicProfileViolation.Elements.Add(current);
			}
		}
		finally
		{
			if (enumerator is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		return IndexOf(basicProfileViolation);
	}

	internal int Add(string normativeStatement)
	{
		return Add(new BasicProfileViolation(normativeStatement));
	}

	internal int Add(string normativeStatement, string element)
	{
		return Add(new BasicProfileViolation(normativeStatement, element));
	}

	IEnumerator<BasicProfileViolation> IEnumerable<BasicProfileViolation>.GetEnumerator()
	{
		return new BasicProfileViolationEnumerator(this);
	}

	public void Insert(int index, BasicProfileViolation violation)
	{
		List.Insert(index, violation);
	}

	public int IndexOf(BasicProfileViolation violation)
	{
		return List.IndexOf(violation);
	}

	public bool Contains(BasicProfileViolation violation)
	{
		return List.Contains(violation);
	}

	public void Remove(BasicProfileViolation violation)
	{
		List.Remove(violation);
	}

	public void CopyTo(BasicProfileViolation[] array, int index)
	{
		List.CopyTo(array, index);
	}

	public override string ToString()
	{
		if (List.Count > 0)
		{
			StringBuilder stringBuilder = new StringBuilder();
			for (int i = 0; i < List.Count; i++)
			{
				BasicProfileViolation basicProfileViolation = this[i];
				if (i != 0)
				{
					stringBuilder.Append(Environment.NewLine);
				}
				stringBuilder.Append(basicProfileViolation.NormativeStatement);
				stringBuilder.Append(": ");
				stringBuilder.Append(basicProfileViolation.Details);
				StringEnumerator enumerator = basicProfileViolation.Elements.GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						string current = enumerator.Current;
						stringBuilder.Append(Environment.NewLine);
						stringBuilder.Append("  -  ");
						stringBuilder.Append(current);
					}
				}
				finally
				{
					if (enumerator is IDisposable disposable)
					{
						disposable.Dispose();
					}
				}
				if (basicProfileViolation.Recommendation != null && basicProfileViolation.Recommendation.Length > 0)
				{
					stringBuilder.Append(Environment.NewLine);
					stringBuilder.Append(basicProfileViolation.Recommendation);
				}
			}
			return stringBuilder.ToString();
		}
		return string.Empty;
	}
}
