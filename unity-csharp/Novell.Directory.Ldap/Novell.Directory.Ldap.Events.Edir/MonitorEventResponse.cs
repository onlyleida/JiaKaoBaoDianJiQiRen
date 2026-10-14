using Novell.Directory.Ldap.Asn1;
using Novell.Directory.Ldap.Rfc2251;

namespace Novell.Directory.Ldap.Events.Edir;

public class MonitorEventResponse : LdapExtendedResponse
{
	protected EdirEventSpecifier[] specifier_list;

	public EdirEventSpecifier[] SpecifierList => specifier_list;

	public MonitorEventResponse(RfcLdapMessage message)
		: base(message)
	{
		sbyte[] value = Value;
		if (value == null)
		{
			throw new LdapException(LdapException.resultCodeToString(ResultCode), ResultCode, null);
		}
		Asn1Sequence asn1Sequence = (Asn1Sequence)new LBERDecoder().decode(value);
		int num = ((Asn1Integer)asn1Sequence.get_Renamed(0)).intValue();
		Asn1Set asn1Set = (Asn1Set)asn1Sequence.get_Renamed(1);
		specifier_list = new EdirEventSpecifier[num];
		for (int i = 0; i < num; i++)
		{
			Asn1Sequence asn1Sequence2 = (Asn1Sequence)asn1Set.get_Renamed(i);
			int eventType = ((Asn1Integer)asn1Sequence2.get_Renamed(0)).intValue();
			int eventResultType = ((Asn1Enumerated)asn1Sequence2.get_Renamed(1)).intValue();
			specifier_list[i] = new EdirEventSpecifier((EdirEventType)eventType, (EdirEventResultType)eventResultType);
		}
	}
}
