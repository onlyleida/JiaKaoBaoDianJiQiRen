namespace System.Web.Services.Protocols;

public enum SoapMessageStage
{
	BeforeSerialize = 1,
	AfterSerialize = 2,
	BeforeDeserialize = 4,
	AfterDeserialize = 8
}
