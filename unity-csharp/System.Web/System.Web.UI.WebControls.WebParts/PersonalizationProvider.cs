using System.Collections;
using System.Configuration.Provider;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

public abstract class PersonalizationProvider : ProviderBase
{
	public abstract string ApplicationName { get; set; }

	protected PersonalizationProvider()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	protected virtual IList CreateSupportedUserCapabilities()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public virtual PersonalizationScope DetermineInitialScope(WebPartManager webPartManager, PersonalizationState loadedState)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual IDictionary DetermineUserCapabilities(WebPartManager webPartManager)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public abstract PersonalizationStateInfoCollection FindState(PersonalizationScope scope, PersonalizationStateQuery query, int pageIndex, int pageSize, out int totalRecords);

	public abstract int GetCountOfState(PersonalizationScope scope, PersonalizationStateQuery query);

	protected abstract void LoadPersonalizationBlobs(WebPartManager webPartManager, string path, string userName, ref byte[] sharedDataBlob, ref byte[] userDataBlob);

	public virtual PersonalizationState LoadPersonalizationState(WebPartManager webPartManager, bool ignoreCurrentUser)
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	protected abstract void ResetPersonalizationBlob(WebPartManager webPartManager, string path, string userName);

	public virtual void ResetPersonalizationState(WebPartManager webPartManager)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public abstract int ResetState(PersonalizationScope scope, string[] paths, string[] usernames);

	public abstract int ResetUserState(string path, DateTime userInactiveSinceDate);

	protected abstract void SavePersonalizationBlob(WebPartManager webPartManager, string path, string userName, byte[] dataBlob);

	public virtual void SavePersonalizationState(PersonalizationState state)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
