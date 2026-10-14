using System.Collections;
using System.Security.Permissions;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ControlCollection : ICollection, IEnumerable
{
	private sealed class SimpleEnumerator : IEnumerator
	{
		private ControlCollection coll;

		private int index;

		private int version;

		private object currentElement;

		public object Current
		{
			get
			{
				if (index < 0)
				{
					throw new InvalidOperationException((index == -1) ? "Enumerator not started" : "Enumerator ended");
				}
				return currentElement;
			}
		}

		public SimpleEnumerator(ControlCollection coll)
		{
			this.coll = coll;
			index = -1;
			version = coll.version;
		}

		public bool MoveNext()
		{
			if (version != coll.version)
			{
				throw new InvalidOperationException("List has changed.");
			}
			if (index >= -1 && ++index < coll.Count)
			{
				currentElement = coll[index];
				return true;
			}
			index = -2;
			return false;
		}

		public void Reset()
		{
			if (version != coll.version)
			{
				throw new InvalidOperationException("List has changed.");
			}
			index = -1;
		}
	}

	private Control owner;

	private Control[] controls;

	private int version;

	private int count;

	private bool readOnly;

	public virtual int Count => count;

	public bool IsReadOnly => readOnly;

	public bool IsSynchronized => false;

	public virtual Control this[int index]
	{
		get
		{
			if (index < 0 || index >= count)
			{
				throw new ArgumentOutOfRangeException("index");
			}
			return controls[index];
		}
	}

	protected Control Owner => owner;

	public object SyncRoot => this;

	public ControlCollection(Control owner)
	{
		if (owner == null)
		{
			throw new ArgumentException("owner");
		}
		this.owner = owner;
	}

	private void EnsureControls()
	{
		if (controls == null)
		{
			controls = new Control[5];
		}
		else if (controls.Length < count + 1)
		{
			int num = ((controls.Length == 5) ? 3 : 2);
			Control[] destinationArray = new Control[controls.Length * num];
			Array.Copy(controls, 0, destinationArray, 0, controls.Length);
			controls = destinationArray;
		}
	}

	public virtual void Add(Control child)
	{
		if (child == null)
		{
			throw new ArgumentNullException("child");
		}
		if (readOnly)
		{
			throw new HttpException(Locale.GetText("Collection is read-only."));
		}
		if (owner == child)
		{
			throw new HttpException(Locale.GetText("Cannot add collection's owner."));
		}
		EnsureControls();
		version++;
		controls[count++] = child;
		owner.AddedControl(child, count - 1);
	}

	public virtual void AddAt(int index, Control child)
	{
		if (child == null)
		{
			throw new ArgumentNullException();
		}
		if (index < -1 || index > count)
		{
			throw new ArgumentOutOfRangeException();
		}
		if (readOnly)
		{
			throw new HttpException(Locale.GetText("Collection is read-only."));
		}
		if (owner == child)
		{
			throw new HttpException(Locale.GetText("Cannot add collection's owner."));
		}
		if (index == -1)
		{
			Add(child);
			return;
		}
		EnsureControls();
		version++;
		Array.Copy(controls, index, controls, index + 1, count - index);
		count++;
		controls[index] = child;
		owner.AddedControl(child, index);
	}

	public virtual void Clear()
	{
		if (controls != null)
		{
			version++;
			for (int i = 0; i < count; i++)
			{
				owner.RemovedControl(controls[i]);
			}
			count = 0;
			if (owner != null)
			{
				owner.ResetChildNames();
			}
		}
	}

	public virtual bool Contains(Control c)
	{
		if (controls != null)
		{
			return Array.IndexOf(controls, c) != -1;
		}
		return false;
	}

	public virtual void CopyTo(Array array, int index)
	{
		if (controls != null)
		{
			if (array == null)
			{
				throw new ArgumentNullException("array");
			}
			if (index + count > array.GetLowerBound(0) + array.GetLength(0))
			{
				throw new ArgumentException();
			}
			if (array.Rank > 1)
			{
				throw new RankException(Locale.GetText("Only single dimension arrays are supported."));
			}
			if (index < 0)
			{
				throw new ArgumentOutOfRangeException("index", Locale.GetText("Value has to be >= 0."));
			}
			for (int i = 0; i < count; i++)
			{
				array.SetValue(controls[i], i + index);
			}
		}
	}

	public virtual IEnumerator GetEnumerator()
	{
		return new SimpleEnumerator(this);
	}

	public virtual int IndexOf(Control value)
	{
		if (controls == null || value == null)
		{
			return -1;
		}
		return Array.IndexOf(controls, value);
	}

	public virtual void Remove(Control value)
	{
		int num = IndexOf(value);
		if (num != -1)
		{
			RemoveAt(num);
		}
	}

	public virtual void RemoveAt(int index)
	{
		if (readOnly)
		{
			throw new HttpException();
		}
		version++;
		Control control = controls[index];
		count--;
		if (count - index > 0)
		{
			Array.Copy(controls, index + 1, controls, index, count - index);
		}
		controls[count] = null;
		owner.RemovedControl(control);
	}

	internal void SetReadonly(bool readOnly)
	{
		this.readOnly = readOnly;
	}
}
