using System;

namespace Mono.Data.Sqlite;

[Flags]
internal enum SQLiteOpenFlagsEnum
{
	None = 0,
	ReadOnly = 1,
	ReadWrite = 2,
	Create = 4,
	Default = ReadWrite | Create,
	FileProtectionComplete = 0x100000,
	FileProtectionCompleteUnlessOpen = 0x200000,
	FileProtectionCompleteUntilFirstUserAuthentication = FileProtectionComplete | FileProtectionCompleteUnlessOpen,
	FileProtectionNone = 0x400000
}
