using System.ComponentModel;
using System.Data;
using System.Data.Common;

namespace System.Web.UI.Design.WebControls;

public class DataProviderNameConverter : StringConverter
{
	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		DataTable factoryClasses = DbProviderFactories.GetFactoryClasses();
		if (factoryClasses == null)
		{
			return new StandardValuesCollection(new string[0]);
		}
		string[] array = new string[factoryClasses.Rows.Count];
		int num = 0;
		foreach (DataRow row in factoryClasses.Rows)
		{
			array[num++] = (string)row["Name"];
		}
		return new StandardValuesCollection(array);
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return true;
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return false;
	}
}
