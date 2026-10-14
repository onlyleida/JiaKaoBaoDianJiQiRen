namespace System.DirectoryServices.ActiveDirectory;

public enum DomainMode
{
	Windows2000MixedDomain = 0,
	Windows2000NativeDomain = 1,
	Windows2003InterimDomain = 2,
	Windows2003Domain = 3,
	Windows2008Domain = 4,
	Windows2008R2Domain = 5,
	Unknown = -1,
	Windows2012R2Domain = 7,
	Windows8Domain = 6
}
