namespace System.Web.UI.WebControls.WebParts;

public interface IPersonalizable
{
	bool IsDirty { get; }

	void Load(PersonalizationDictionary state);

	void Save(PersonalizationDictionary state);
}
