using System.Collections.Specialized;
using System.Text;
using Unity;

namespace System.Web.Services.Description;

public class BasicProfileViolation
{
	private WsiProfiles claims;

	private string normativeStatement;

	private string details;

	private string recommendation;

	private StringCollection elements;

	public WsiProfiles Claims => claims;

	public string Details
	{
		get
		{
			if (details == null)
			{
				return string.Empty;
			}
			return details;
		}
	}

	public StringCollection Elements
	{
		get
		{
			if (elements == null)
			{
				elements = new StringCollection();
			}
			return elements;
		}
	}

	public string NormativeStatement => normativeStatement;

	public string Recommendation => recommendation;

	internal BasicProfileViolation(string normativeStatement)
		: this(normativeStatement, null)
	{
	}

	internal BasicProfileViolation(string normativeStatement, string element)
	{
		claims = WsiProfiles.BasicProfile1_1;
		base._002Ector();
		this.normativeStatement = normativeStatement;
		int num = normativeStatement.IndexOf(',');
		if (num >= 0)
		{
			normativeStatement = normativeStatement.Substring(0, num);
		}
		details = Res.GetString("HelpGeneratorServiceConformance" + normativeStatement);
		recommendation = Res.GetString("HelpGeneratorServiceConformance" + normativeStatement + "_r");
		if (element != null)
		{
			Elements.Add(element);
		}
		if (this.normativeStatement == "Rxxxx")
		{
			this.normativeStatement = Res.GetString("Rxxxx");
		}
	}

	public override string ToString()
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append(normativeStatement);
		stringBuilder.Append(": ");
		stringBuilder.Append(Details);
		StringEnumerator enumerator = Elements.GetEnumerator();
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
		return stringBuilder.ToString();
	}

	internal BasicProfileViolation()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
