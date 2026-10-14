using Unity;

namespace System.Web.UI.WebControls.WebParts;

public class SqlPersonalizationProvider : PersonalizationProvider
{
	public override string ApplicationName
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public SqlPersonalizationProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override PersonalizationStateInfoCollection FindState(PersonalizationScope scope, PersonalizationStateQuery query, int pageIndex, int pageSize, out int totalRecords)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public override int GetCountOfState(PersonalizationScope scope, PersonalizationStateQuery query)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected override void LoadPersonalizationBlobs(WebPartManager webPartManager, string path, string userName, ref byte[] sharedDataBlob, ref byte[] userDataBlob)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected override void ResetPersonalizationBlob(WebPartManager webPartManager, string path, string userName)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public override int ResetState(PersonalizationScope scope, string[] paths, string[] usernames)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public override int ResetUserState(string path, DateTime userInactiveSinceDate)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected override void SavePersonalizationBlob(WebPartManager webPartManager, string path, string userName, byte[] dataBlob)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
