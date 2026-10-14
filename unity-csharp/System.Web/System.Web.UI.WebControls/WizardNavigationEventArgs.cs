namespace System.Web.UI.WebControls;

public class WizardNavigationEventArgs : EventArgs
{
	private int curStepIndex;

	private int nxtStepIndex;

	private bool cancel;

	public bool Cancel
	{
		get
		{
			return cancel;
		}
		set
		{
			cancel = value;
		}
	}

	public int CurrentStepIndex => curStepIndex;

	public int NextStepIndex => nxtStepIndex;

	public WizardNavigationEventArgs(int currentStepIndex, int nextStepIndex)
	{
		curStepIndex = currentStepIndex;
		nxtStepIndex = nextStepIndex;
		cancel = false;
	}
}
