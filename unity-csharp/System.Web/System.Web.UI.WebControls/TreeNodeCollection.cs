using System.Collections;

namespace System.Web.UI.WebControls;

public sealed class TreeNodeCollection : ICollection, IEnumerable, IStateManager
{
	private ArrayList items = new ArrayList();

	private TreeView tree;

	private TreeNode parent;

	private bool marked;

	private bool dirty;

	public TreeNode this[int index] => (TreeNode)items[index];

	public int Count => items.Count;

	public bool IsSynchronized => false;

	public object SyncRoot => items;

	bool IStateManager.IsTrackingViewState => marked;

	public TreeNodeCollection()
	{
	}

	public TreeNodeCollection(TreeNode owner)
	{
		parent = owner;
		tree = owner.Tree;
	}

	internal TreeNodeCollection(TreeView tree)
	{
		this.tree = tree;
	}

	internal void SetTree(TreeView tree)
	{
		this.tree = tree;
		foreach (TreeNode item in items)
		{
			item.Tree = tree;
		}
	}

	public void Add(TreeNode child)
	{
		Add(child, updateParent: true);
	}

	internal void Add(TreeNode child, bool updateParent)
	{
		int index = items.Add(child);
		if (parent != null)
		{
			parent.HadChildrenBeforePopulating = true;
		}
		if (updateParent)
		{
			child.Index = index;
			child.SetParent(parent);
			child.Tree = tree;
			if (marked)
			{
				((IStateManager)child).TrackViewState();
				SetDirty();
			}
		}
	}

	public void AddAt(int index, TreeNode child)
	{
		items.Insert(index, child);
		child.Index = index;
		child.SetParent(parent);
		child.Tree = tree;
		for (int i = index + 1; i < items.Count; i++)
		{
			((TreeNode)items[i]).Index = i;
		}
		if (marked)
		{
			((IStateManager)child).TrackViewState();
			SetDirty();
		}
	}

	internal void SetDirty()
	{
		for (int i = 0; i < Count; i++)
		{
			this[i].SetDirty();
		}
		dirty = true;
	}

	public void Clear()
	{
		if (tree != null || parent != null)
		{
			foreach (TreeNode item in items)
			{
				item.Tree = null;
				item.SetParent(null);
			}
		}
		items.Clear();
		if (marked)
		{
			dirty = true;
		}
	}

	public bool Contains(TreeNode c)
	{
		return items.Contains(c);
	}

	public void CopyTo(TreeNode[] nodeArray, int index)
	{
		items.CopyTo(nodeArray, index);
	}

	public IEnumerator GetEnumerator()
	{
		return items.GetEnumerator();
	}

	public int IndexOf(TreeNode value)
	{
		return items.IndexOf(value);
	}

	public void Remove(TreeNode value)
	{
		int num = IndexOf(value);
		if (num != -1)
		{
			items.RemoveAt(num);
			if (tree != null)
			{
				value.Tree = null;
			}
			if (marked)
			{
				SetDirty();
			}
		}
	}

	public void RemoveAt(int index)
	{
		TreeNode treeNode = (TreeNode)items[index];
		items.RemoveAt(index);
		if (tree != null)
		{
			treeNode.Tree = null;
		}
		if (marked)
		{
			SetDirty();
		}
	}

	void ICollection.CopyTo(Array array, int index)
	{
		items.CopyTo(array, index);
	}

	void IStateManager.LoadViewState(object state)
	{
		if (state == null)
		{
			return;
		}
		object[] array = (object[])state;
		dirty = (bool)array[0];
		if (dirty)
		{
			items.Clear();
			for (int i = 1; i < array.Length; i++)
			{
				if (!(array[i] is Pair pair))
				{
					throw new InvalidOperationException("Broken view state (item " + i + ")");
				}
				TreeNode treeNode = ((!(pair.First as Type == null)) ? (Activator.CreateInstance(pair.First as Type) as TreeNode) : new TreeNode());
				Add(treeNode);
				object second = pair.Second;
				if (second != null)
				{
					((IStateManager)treeNode).LoadViewState(second);
				}
			}
			return;
		}
		for (int j = 1; j < array.Length; j++)
		{
			if (!(array[j] is Pair pair2))
			{
				throw new InvalidOperationException("Broken view state " + j + ")");
			}
			int index = (int)pair2.First;
			((IStateManager)(TreeNode)items[index]).LoadViewState(pair2.Second);
		}
	}

	object IStateManager.SaveViewState()
	{
		object[] array = null;
		bool flag = false;
		if (dirty)
		{
			if (items.Count > 0)
			{
				flag = true;
				array = new object[items.Count + 1];
				array[0] = true;
				for (int i = 0; i < items.Count; i++)
				{
					TreeNode obj = items[i] as TreeNode;
					object y = ((IStateManager)obj).SaveViewState();
					Type type = obj.GetType();
					array[i + 1] = new Pair((type == typeof(TreeNode)) ? null : type, y);
				}
			}
		}
		else
		{
			ArrayList arrayList = new ArrayList();
			for (int j = 0; j < items.Count; j++)
			{
				object obj2 = ((IStateManager)(items[j] as TreeNode)).SaveViewState();
				if (obj2 != null)
				{
					flag = true;
					arrayList.Add(new Pair(j, obj2));
				}
			}
			if (flag)
			{
				arrayList.Insert(0, false);
				array = arrayList.ToArray();
			}
		}
		if (flag)
		{
			return array;
		}
		return null;
	}

	void IStateManager.TrackViewState()
	{
		marked = true;
		for (int i = 0; i < items.Count; i++)
		{
			((IStateManager)items[i]).TrackViewState();
		}
	}
}
