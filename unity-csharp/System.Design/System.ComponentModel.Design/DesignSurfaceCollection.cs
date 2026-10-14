using System.Collections;
using Unity;

namespace System.ComponentModel.Design;

public sealed class DesignSurfaceCollection : ICollection, IEnumerable
{
	private class DesignSurfaceEnumerator : IEnumerator
	{
		private IEnumerator _designerCollectionEnumerator;

		public object Current => (((IDesignerHost)_designerCollectionEnumerator.Current).GetService(typeof(DesignSurface)) as DesignSurface) ?? throw new NotSupportedException();

		public DesignSurfaceEnumerator(IEnumerator designerCollectionEnumerator)
		{
			_designerCollectionEnumerator = designerCollectionEnumerator;
		}

		public bool MoveNext()
		{
			return _designerCollectionEnumerator.MoveNext();
		}

		public void Reset()
		{
			_designerCollectionEnumerator.Reset();
		}
	}

	private DesignerCollection _designers;

	public int Count => _designers.Count;

	public DesignSurface this[int index] => (_designers[index].GetService(typeof(DesignSurface)) as DesignSurface) ?? throw new NotSupportedException();

	int ICollection.Count => Count;

	bool ICollection.IsSynchronized => false;

	object ICollection.SyncRoot => null;

	internal DesignSurfaceCollection(DesignerCollection designers)
	{
		if (designers == null)
		{
			designers = new DesignerCollection(null);
		}
		_designers = designers;
	}

	public void CopyTo(DesignSurface[] array, int index)
	{
		((ICollection)this).CopyTo((Array)array, index);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				DesignSurface value = (DesignSurface)enumerator.Current;
				array.SetValue(value, index);
				index++;
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

	public IEnumerator GetEnumerator()
	{
		return new DesignSurfaceEnumerator(_designers.GetEnumerator());
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}

	internal DesignSurfaceCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
