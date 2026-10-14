using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace System.ComponentModel.Design;

public abstract class ObjectSelectorEditor : UITypeEditor
{
	public class Selector : TreeView
	{
		[System.MonoTODO]
		public bool clickSeen;

		[System.MonoTODO]
		public Selector(ObjectSelectorEditor editor)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public SelectorNode AddNode(string label, object value, SelectorNode parent)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public void Clear()
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		protected void OnAfterSelect(object sender, TreeViewEventArgs e)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		protected override void OnKeyDown(KeyEventArgs e)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		protected override void OnKeyPress(KeyPressEventArgs e)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		protected override void OnNodeMouseClick(TreeNodeMouseClickEventArgs e)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public bool SetSelection(object value, TreeNodeCollection nodes)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public void Start(IWindowsFormsEditorService edSvc, object value)
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		public void Stop()
		{
			throw new NotImplementedException();
		}

		[System.MonoTODO]
		protected override void WndProc(ref Message m)
		{
			throw new NotImplementedException();
		}
	}

	public class SelectorNode : TreeNode
	{
		public object value;

		public SelectorNode(string label, object value)
			: base(label)
		{
			this.value = value;
		}
	}

	protected object currValue;

	protected object prevValue;

	public bool SubObjectSelector;

	public ObjectSelectorEditor()
	{
	}

	public ObjectSelectorEditor(bool subObjectSelector)
	{
		SubObjectSelector = subObjectSelector;
	}

	[System.MonoTODO]
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		throw new NotImplementedException();
	}

	public bool EqualsToValue(object value)
	{
		return currValue == value;
	}

	[System.MonoTODO]
	protected virtual void FillTreeWithData(Selector selector, ITypeDescriptorContext context, IServiceProvider provider)
	{
		throw new NotImplementedException();
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public virtual void SetValue(object value)
	{
		currValue = value;
	}
}
