namespace System.Transactions;

public class SinglePhaseEnlistment : Enlistment
{
	private Transaction tx;

	private object abortingEnlisted;

	internal SinglePhaseEnlistment()
	{
	}

	internal SinglePhaseEnlistment(Transaction tx, object abortingEnlisted)
	{
		this.tx = tx;
		this.abortingEnlisted = abortingEnlisted;
	}

	public void Aborted()
	{
		Aborted(null);
	}

	public void Aborted(Exception e)
	{
		if (tx != null)
		{
			tx.Rollback(e, abortingEnlisted);
		}
	}

	[MonoTODO]
	public void Committed()
	{
	}

	[MonoTODO("Not implemented")]
	public void InDoubt()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	public void InDoubt(Exception e)
	{
		throw new NotImplementedException();
	}
}
