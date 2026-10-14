using Unity.Collections;
using UnityEngine.Bindings;
using UnityEngine.Scripting;

namespace UnityEngine.Rendering;

[UsedByNativeCode]
[NativeHeader("Runtime/Camera/BatchRendererGroup.h")]
public struct BatchCullingContext(NativeArray<Plane> inCullingPlanes, NativeArray<BatchVisibility> inOutBatchVisibility, NativeArray<int> outVisibleIndices, LODParameters inLodParameters)
{
	public readonly NativeArray<Plane> cullingPlanes = inCullingPlanes;

	public NativeArray<BatchVisibility> batchVisibility = inOutBatchVisibility;

	public NativeArray<int> visibleIndices = outVisibleIndices;

	public readonly LODParameters lodParameters = inLodParameters;
}
