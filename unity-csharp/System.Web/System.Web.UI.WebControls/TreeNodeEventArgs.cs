namespace System.Web.UI.WebControls;

public sealed class TreeNodeEventArgs : EventArgs
{
	private TreeNode _node;

	public TreeNode Node => _node;

	public TreeNodeEventArgs(TreeNode node)
	{
		_node = node;
	}
}
