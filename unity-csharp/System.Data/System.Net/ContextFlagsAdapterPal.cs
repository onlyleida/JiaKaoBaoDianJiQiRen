namespace System.Net;

internal static class ContextFlagsAdapterPal
{
	private struct ContextFlagMapping(Interop.NetSecurityNative.GssFlags gssFlag, ContextFlagsPal contextFlag)
	{
		public readonly Interop.NetSecurityNative.GssFlags GssFlags = gssFlag;

		public readonly ContextFlagsPal ContextFlag = contextFlag;
	}

	private static readonly ContextFlagMapping[] s_contextFlagMapping = new ContextFlagMapping[5]
	{
		new ContextFlagMapping(Interop.NetSecurityNative.GssFlags.GSS_C_CONF_FLAG, ContextFlagsPal.Confidentiality),
		new ContextFlagMapping(Interop.NetSecurityNative.GssFlags.GSS_C_IDENTIFY_FLAG, ContextFlagsPal.AcceptIntegrity),
		new ContextFlagMapping(Interop.NetSecurityNative.GssFlags.GSS_C_MUTUAL_FLAG, ContextFlagsPal.MutualAuth),
		new ContextFlagMapping(Interop.NetSecurityNative.GssFlags.GSS_C_REPLAY_FLAG, ContextFlagsPal.ReplayDetect),
		new ContextFlagMapping(Interop.NetSecurityNative.GssFlags.GSS_C_SEQUENCE_FLAG, ContextFlagsPal.SequenceDetect)
	};

	internal static ContextFlagsPal GetContextFlagsPalFromInterop(Interop.NetSecurityNative.GssFlags gssFlags, bool isServer)
	{
		ContextFlagsPal contextFlagsPal = ContextFlagsPal.None;
		if ((gssFlags & Interop.NetSecurityNative.GssFlags.GSS_C_INTEG_FLAG) != 0)
		{
			contextFlagsPal = (ContextFlagsPal)((int)contextFlagsPal | (isServer ? 131072 : 65536));
		}
		ContextFlagMapping[] array = s_contextFlagMapping;
		for (int i = 0; i < array.Length; i++)
		{
			ContextFlagMapping contextFlagMapping = array[i];
			if ((gssFlags & contextFlagMapping.GssFlags) == contextFlagMapping.GssFlags)
			{
				contextFlagsPal |= contextFlagMapping.ContextFlag;
			}
		}
		return contextFlagsPal;
	}

	internal static Interop.NetSecurityNative.GssFlags GetInteropFromContextFlagsPal(ContextFlagsPal flags, bool isServer)
	{
		Interop.NetSecurityNative.GssFlags gssFlags = (Interop.NetSecurityNative.GssFlags)0u;
		if (isServer)
		{
			if ((flags & ContextFlagsPal.AcceptIntegrity) != 0)
			{
				gssFlags |= Interop.NetSecurityNative.GssFlags.GSS_C_INTEG_FLAG;
			}
		}
		else if ((flags & ContextFlagsPal.AcceptStream) != 0)
		{
			gssFlags |= Interop.NetSecurityNative.GssFlags.GSS_C_INTEG_FLAG;
		}
		ContextFlagMapping[] array = s_contextFlagMapping;
		for (int i = 0; i < array.Length; i++)
		{
			ContextFlagMapping contextFlagMapping = array[i];
			if ((flags & contextFlagMapping.ContextFlag) == contextFlagMapping.ContextFlag)
			{
				gssFlags |= contextFlagMapping.GssFlags;
			}
		}
		return gssFlags;
	}
}
