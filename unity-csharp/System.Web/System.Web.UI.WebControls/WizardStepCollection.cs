using System.Collections;
using Unity;

namespace System.Web.UI.WebControls;

public sealed class WizardStepCollection : IList, ICollection, IEnumerable
{
	private ArrayList list;

	private Wizard wizard;

	public int Count => list.Count;

	public bool IsReadOnly => false;

	public bool IsSynchronized => false;

	public WizardStepBase this[int index] => (WizardStepBase)list[index];

	public object SyncRoot => this;

	bool IList.IsFixedSize => false;

	object IList.this[int index]
	{
		get
		{
			return list[index];
		}
		set
		{
			list[index] = value;
		}
	}

	internal WizardStepCollection(Wizard wizard)
	{
		list = new ArrayList();
		base._002Ector();
		this.wizard = wizard;
	}

	public void Add(WizardStepBase wizardStep)
	{
		if (wizardStep == null)
		{
			throw new ArgumentNullException("wizardStep");
		}
		wizardStep.SetWizard(wizard);
		list.Add(wizardStep);
		wizard.UpdateViews();
	}

	public void AddAt(int index, WizardStepBase wizardStep)
	{
		if (wizardStep == null)
		{
			throw new ArgumentNullException("wizardStep");
		}
		wizardStep.SetWizard(wizard);
		list.Insert(index, wizardStep);
		wizard.UpdateViews();
	}

	public void Clear()
	{
		list.Clear();
		wizard.UpdateViews();
	}

	public bool Contains(WizardStepBase wizardStep)
	{
		if (wizardStep == null)
		{
			throw new ArgumentNullException("wizardStep");
		}
		return list.Contains(wizardStep);
	}

	public void CopyTo(WizardStepBase[] array, int index)
	{
		list.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return list.GetEnumerator();
	}

	public int IndexOf(WizardStepBase wizardStep)
	{
		if (wizardStep == null)
		{
			throw new ArgumentNullException("wizardStep");
		}
		return list.IndexOf(wizardStep);
	}

	public void Insert(int index, WizardStepBase wizardStep)
	{
		AddAt(index, wizardStep);
	}

	public void Remove(WizardStepBase wizardStep)
	{
		if (wizardStep == null)
		{
			throw new ArgumentNullException("wizardStep");
		}
		list.Remove(wizardStep);
		wizard.UpdateViews();
	}

	public void RemoveAt(int index)
	{
		list.RemoveAt(index);
		wizard.UpdateViews();
	}

	int IList.Add(object ob)
	{
		int result = list.Add((WizardStepBase)ob);
		wizard.UpdateViews();
		return result;
	}

	bool IList.Contains(object ob)
	{
		return Contains((WizardStepBase)ob);
	}

	int IList.IndexOf(object ob)
	{
		return IndexOf((WizardStepBase)ob);
	}

	void IList.Insert(int index, object ob)
	{
		AddAt(index, (WizardStepBase)ob);
	}

	void IList.Remove(object ob)
	{
		Remove((WizardStepBase)ob);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		list.CopyTo(array, index);
	}

	internal WizardStepCollection()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
