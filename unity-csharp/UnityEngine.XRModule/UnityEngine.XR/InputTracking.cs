using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine.Bindings;
using UnityEngine.Scripting;

namespace UnityEngine.XR;

[NativeHeader("Modules/XR/Subsystems/Input/Public/XRInputTrackingFacade.h")]
[NativeConditional("ENABLE_VR")]
[StaticAccessor("XRInputTrackingFacade::Get()", StaticAccessorType.Dot)]
[RequiredByNativeCode]
public static class InputTracking
{
	private enum TrackingStateEventType
	{
		NodeAdded,
		NodeRemoved,
		TrackingAcquired,
		TrackingLost
	}

	[Obsolete("This API is obsolete, and should no longer be used. Please use the TrackedPoseDriver in the Legacy Input Helpers package for controlling a camera in XR.")]
	[NativeConditional("ENABLE_VR")]
	public static extern bool disablePositionalTracking
	{
		[MethodImpl(MethodImplOptions.InternalCall)]
		[NativeName("GetPositionalTrackingDisabled")]
		get;
		[MethodImpl(MethodImplOptions.InternalCall)]
		[NativeName("SetPositionalTrackingDisabled")]
		set;
	}

	public static event Action<XRNodeState> trackingAcquired = null;

	public static event Action<XRNodeState> trackingLost = null;

	public static event Action<XRNodeState> nodeAdded = null;

	public static event Action<XRNodeState> nodeRemoved = null;

	[RequiredByNativeCode]
	private static void InvokeTrackingEvent(TrackingStateEventType eventType, XRNode nodeType, long uniqueID, bool tracked)
	{
		Action<XRNodeState> action = null;
		XRNodeState obj = new XRNodeState
		{
			uniqueID = (ulong)uniqueID,
			nodeType = nodeType,
			tracked = tracked
		};
		(eventType switch
		{
			TrackingStateEventType.TrackingAcquired => trackingAcquired, 
			TrackingStateEventType.TrackingLost => trackingLost, 
			TrackingStateEventType.NodeAdded => nodeAdded, 
			TrackingStateEventType.NodeRemoved => nodeRemoved, 
			_ => throw new ArgumentException("TrackingEventHandler - Invalid EventType: " + eventType), 
		})?.Invoke(obj);
	}

	[Obsolete("This API is obsolete, and should no longer be used. Please use InputDevice.TryGetFeatureValue with the CommonUsages.devicePosition usage instead.")]
	[NativeConditional("ENABLE_VR", "Vector3f::zero")]
	public static Vector3 GetLocalPosition(XRNode node)
	{
		GetLocalPosition_Injected(node, out var ret);
		return ret;
	}

	[Obsolete("This API is obsolete, and should no longer be used. Please use InputDevice.TryGetFeatureValue with the CommonUsages.deviceRotation usage instead.")]
	[NativeConditional("ENABLE_VR", "Quaternionf::identity()")]
	public static Quaternion GetLocalRotation(XRNode node)
	{
		GetLocalRotation_Injected(node, out var ret);
		return ret;
	}

	[MethodImpl(MethodImplOptions.InternalCall)]
	[Obsolete("This API is obsolete, and should no longer be used. Please use XRInputSubsystem.TryRecenter() instead.")]
	[NativeConditional("ENABLE_VR")]
	public static extern void Recenter();

	[MethodImpl(MethodImplOptions.InternalCall)]
	[Obsolete("This API is obsolete, and should no longer be used. Please use InputDevice.name with the device associated with that tracking data instead.")]
	[NativeConditional("ENABLE_VR")]
	public static extern string GetNodeName(ulong uniqueId);

	public static void GetNodeStates(List<XRNodeState> nodeStates)
	{
		if (nodeStates == null)
		{
			throw new ArgumentNullException("nodeStates");
		}
		nodeStates.Clear();
		GetNodeStates_Internal(nodeStates);
	}

	[MethodImpl(MethodImplOptions.InternalCall)]
	[NativeConditional("ENABLE_VR")]
	private static extern void GetNodeStates_Internal([NotNull] List<XRNodeState> nodeStates);

	[MethodImpl(MethodImplOptions.InternalCall)]
	[NativeHeader("Modules/XR/Subsystems/Input/Public/XRInputTracking.h")]
	[StaticAccessor("XRInputTracking::Get()", StaticAccessorType.Dot)]
	internal static extern ulong GetDeviceIdAtXRNode(XRNode node);

	[MethodImpl(MethodImplOptions.InternalCall)]
	[StaticAccessor("XRInputTracking::Get()", StaticAccessorType.Dot)]
	[NativeHeader("Modules/XR/Subsystems/Input/Public/XRInputTracking.h")]
	internal static extern void GetDeviceIdsAtXRNode_Internal(XRNode node, [NotNull] List<ulong> deviceIds);

	[MethodImpl(MethodImplOptions.InternalCall)]
	private static extern void GetLocalPosition_Injected(XRNode node, out Vector3 ret);

	[MethodImpl(MethodImplOptions.InternalCall)]
	private static extern void GetLocalRotation_Injected(XRNode node, out Quaternion ret);
}
