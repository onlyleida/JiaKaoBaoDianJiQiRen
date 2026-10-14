using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;

namespace System.Web.UI;

public static class ListSourceHelper
{
	private sealed class ListSourceList : List<IDataSource>, ITypedList
	{
		PropertyDescriptorCollection ITypedList.GetItemProperties(PropertyDescriptor[] listAccessors)
		{
			ICollection viewNames = base[0].GetViewNames();
			PropertyDescriptor[] array = new PropertyDescriptor[viewNames.Count];
			int num = 0;
			foreach (string item in viewNames)
			{
				array[num++] = new ListSourcePropertyDescriptor(item, null);
			}
			return new PropertyDescriptorCollection(array);
		}

		string ITypedList.GetListName(PropertyDescriptor[] listAccessors)
		{
			return string.Empty;
		}
	}

	private sealed class ListSourcePropertyDescriptor : PropertyDescriptor
	{
		public override Type ComponentType
		{
			get
			{
				throw new NotImplementedException();
			}
		}

		public override bool IsReadOnly => true;

		public override Type PropertyType => typeof(IEnumerable);

		public ListSourcePropertyDescriptor(MemberDescriptor descr)
			: base(descr)
		{
		}

		public ListSourcePropertyDescriptor(string name, Attribute[] attrs)
			: base(name, attrs)
		{
		}

		public ListSourcePropertyDescriptor(MemberDescriptor descr, Attribute[] attrs)
			: base(descr, attrs)
		{
		}

		public override bool CanResetValue(object component)
		{
			throw new NotImplementedException();
		}

		public override object GetValue(object component)
		{
			if (!(component is IDataSource dataSource))
			{
				return null;
			}
			return dataSource.GetView(Name).ExecuteSelect(DataSourceSelectArguments.Empty);
		}

		public override void ResetValue(object component)
		{
			throw new NotImplementedException();
		}

		public override void SetValue(object component, object value)
		{
			throw new NotImplementedException();
		}

		public override bool ShouldSerializeValue(object component)
		{
			throw new NotImplementedException();
		}
	}

	public static bool ContainsListCollection(IDataSource dataSource)
	{
		return dataSource.GetViewNames().Count > 0;
	}

	public static IList GetList(IDataSource dataSource)
	{
		if (dataSource.GetViewNames().Count == 0)
		{
			return null;
		}
		return new ListSourceList { dataSource };
	}
}
