using System.Linq;

namespace System.ComponentModel.DataAnnotations;

[AttributeUsage(AttributeTargets.Property | AttributeTargets.Field | AttributeTargets.Parameter, AllowMultiple = false)]
public sealed class CreditCardAttribute : DataTypeAttribute
{
	public CreditCardAttribute()
		: base(DataType.CreditCard)
	{
		DefaultErrorMessage = "The {0} field is not a valid credit card number.";
	}

	public override bool IsValid(object value)
	{
		if (value == null)
		{
			return true;
		}
		if (!(value is string text))
		{
			return false;
		}
		string text2 = text.Replace("-", "");
		text2 = text2.Replace(" ", "");
		int num = 0;
		bool flag = false;
		foreach (char item in text2.Reverse())
		{
			if (item < '0' || item > '9')
			{
				return false;
			}
			int num2 = (item - 48) * ((!flag) ? 1 : 2);
			flag = !flag;
			while (num2 > 0)
			{
				num += num2 % 10;
				num2 /= 10;
			}
		}
		return num % 10 == 0;
	}
}
