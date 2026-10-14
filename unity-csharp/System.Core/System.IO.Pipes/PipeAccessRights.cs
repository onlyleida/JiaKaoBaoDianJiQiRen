namespace System.IO.Pipes;

[Flags]
public enum PipeAccessRights
{
	ReadData = 1,
	WriteData = 2,
	CreateNewInstance = 4,
	ReadExtendedAttributes = 8,
	WriteExtendedAttributes = 0x10,
	ReadAttributes = 0x80,
	WriteAttributes = 0x100,
	Delete = 0x10000,
	ReadPermissions = 0x20000,
	ChangePermissions = 0x40000,
	TakeOwnership = 0x80000,
	Synchronize = 0x100000,
	AccessSystemSecurity = 0x1000000,
	Read = ReadData | ReadExtendedAttributes | ReadAttributes | ReadPermissions,
	Write = WriteData | WriteExtendedAttributes | WriteAttributes,
	ReadWrite = Read | Write,
	FullControl = ReadWrite | CreateNewInstance | Delete | ChangePermissions | TakeOwnership | Synchronize
}
