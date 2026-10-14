using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Data;

namespace System.Web.UI.WebControls;

[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
public class ParameterCollection : StateManagedCollection
{
	private static Type[] _knownTypes = new Type[6]
	{
		typeof(ControlParameter),
		typeof(CookieParameter),
		typeof(FormParameter),
		typeof(Parameter),
		typeof(QueryStringParameter),
		typeof(SessionParameter)
	};

	private EventHandler _parametersChanged;

	public Parameter this[int index]
	{
		get
		{
			return (Parameter)((IList)this)[index];
		}
		set
		{
			((IList)this)[index] = value;
		}
	}

	public Parameter this[string name]
	{
		get
		{
			int num = IndexOfString(name);
			if (num == -1)
			{
				return null;
			}
			return (Parameter)((IList)this)[num];
		}
		set
		{
			int num = IndexOfString(name);
			if (num == -1)
			{
				Add(value);
			}
			else
			{
				((IList)this)[num] = value;
			}
		}
	}

	public event EventHandler ParametersChanged
	{
		add
		{
			_parametersChanged = (EventHandler)Delegate.Combine(_parametersChanged, value);
		}
		remove
		{
			_parametersChanged = (EventHandler)Delegate.Remove(_parametersChanged, value);
		}
	}

	public int Add(Parameter parameter)
	{
		return ((IList)this).Add((object)parameter);
	}

	public int Add(string name, string value)
	{
		return ((IList)this).Add((object)new Parameter(name, TypeCode.Object, value));
	}

	public int Add(string name, TypeCode type, string value)
	{
		return ((IList)this).Add((object)new Parameter(name, type, value));
	}

	public int Add(string name, DbType dbType, string value)
	{
		return ((IList)this).Add((object)new Parameter(name, dbType, value));
	}

	protected override object CreateKnownType(int index)
	{
		return index switch
		{
			0 => (object)new ControlParameter(), 
			1 => new CookieParameter(), 
			2 => new FormParameter(), 
			3 => new Parameter(), 
			4 => new QueryStringParameter(), 
			5 => new SessionParameter(), 
			_ => throw new ArgumentOutOfRangeException("index"), 
		};
	}

	protected override Type[] GetKnownTypes()
	{
		return _knownTypes;
	}

	public IOrderedDictionary GetValues(HttpContext context, Control control)
	{
		OrderedDictionary orderedDictionary = new OrderedDictionary();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				Parameter parameter = (Parameter)enumerator.Current;
				string key = parameter.Name;
				int num = 1;
				while (orderedDictionary.Contains(key))
				{
					key = parameter.Name + num;
					num++;
				}
				orderedDictionary.Add(key, parameter.GetValue(context, control));
			}
			return orderedDictionary;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public void UpdateValues(HttpContext context, Control control)
	{
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				((Parameter)enumerator.Current).UpdateValue(context, control);
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public void Insert(int index, Parameter parameter)
	{
		((IList)this).Insert(index, (object)parameter);
	}

	protected override void OnClearComplete()
	{
		base.OnClearComplete();
		OnParametersChanged(EventArgs.Empty);
	}

	protected override void OnInsert(int index, object value)
	{
		base.OnInsert(index, value);
		((Parameter)value).SetOwnerCollection(this);
	}

	protected override void OnInsertComplete(int index, object value)
	{
		base.OnInsertComplete(index, value);
		OnParametersChanged(EventArgs.Empty);
	}

	protected virtual void OnParametersChanged(EventArgs e)
	{
		if (_parametersChanged != null)
		{
			_parametersChanged(this, e);
		}
	}

	protected override void OnValidate(object o)
	{
		base.OnValidate(o);
		if (!(o is Parameter))
		{
			throw new ArgumentException("o is not a Parameter");
		}
	}

	public void Remove(Parameter parameter)
	{
		((IList)this).Remove((object)parameter);
	}

	public void RemoveAt(int index)
	{
		((IList)this).RemoveAt(index);
	}

	protected override void SetDirtyObject(object o)
	{
		((Parameter)o).SetDirty();
	}

	internal void CallOnParameterChanged()
	{
		OnParametersChanged(EventArgs.Empty);
	}

	private int IndexOfString(string name)
	{
		for (int i = 0; i < Count; i++)
		{
			if (string.Compare(((Parameter)((IList)this)[i]).Name, name, StringComparison.OrdinalIgnoreCase) == 0)
			{
				return i;
			}
		}
		return -1;
	}

	public bool Contains(Parameter parameter)
	{
		return ((IList)this).Contains((object)parameter);
	}

	public void CopyTo(Parameter[] parameterArray, int index)
	{
		((ICollection)this).CopyTo((Array)parameterArray, index);
	}

	public int IndexOf(Parameter parameter)
	{
		return ((IList)this).IndexOf((object)parameter);
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		base.OnRemoveComplete(index, value);
		OnParametersChanged(EventArgs.Empty);
	}
}
