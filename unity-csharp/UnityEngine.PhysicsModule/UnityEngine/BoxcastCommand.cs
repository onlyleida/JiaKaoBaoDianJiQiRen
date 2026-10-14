using System.Runtime.CompilerServices;
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;
using Unity.Jobs;
using Unity.Jobs.LowLevel.Unsafe;
using UnityEngine.Bindings;

namespace UnityEngine;

[NativeHeader("Modules/Physics/BatchCommands/BoxcastCommand.h")]
[NativeHeader("Runtime/Jobs/ScriptBindings/JobsBindingsTypes.h")]
public struct BoxcastCommand(Vector3 center, Vector3 halfExtents, Quaternion orientation, Vector3 direction, float distance = float.MaxValue, int layerMask = -5)
{
	public Vector3 center { get; set; } = center;

	public Vector3 halfExtents { get; set; } = halfExtents;

	public Quaternion orientation { get; set; } = orientation;

	public Vector3 direction { get; set; } = direction;

	public float distance { get; set; } = distance;

	public int layerMask { get; set; } = layerMask;

	internal int maxHits { get; set; } = 1;

	public unsafe static JobHandle ScheduleBatch(NativeArray<BoxcastCommand> commands, NativeArray<RaycastHit> results, int minCommandsPerJob, JobHandle dependsOn = default(JobHandle))
	{
		BatchQueryJob<BoxcastCommand, RaycastHit> output = new BatchQueryJob<BoxcastCommand, RaycastHit>(commands, results);
		JobsUtility.JobScheduleParameters parameters = new JobsUtility.JobScheduleParameters(UnsafeUtility.AddressOf(ref output), BatchQueryJobStruct<BatchQueryJob<BoxcastCommand, RaycastHit>>.Initialize(), dependsOn, ScheduleMode.Batched);
		return ScheduleBoxcastBatch(ref parameters, NativeArrayUnsafeUtility.GetUnsafeBufferPointerWithoutChecks(commands), commands.Length, NativeArrayUnsafeUtility.GetUnsafeBufferPointerWithoutChecks(results), results.Length, minCommandsPerJob);
	}

	[FreeFunction("ScheduleBoxcastCommandBatch")]
	private unsafe static JobHandle ScheduleBoxcastBatch(ref JobsUtility.JobScheduleParameters parameters, void* commands, int commandLen, void* result, int resultLen, int minCommandsPerJob)
	{
		ScheduleBoxcastBatch_Injected(ref parameters, commands, commandLen, result, resultLen, minCommandsPerJob, out var ret);
		return ret;
	}

	[MethodImpl(MethodImplOptions.InternalCall)]
	private unsafe static extern void ScheduleBoxcastBatch_Injected(ref JobsUtility.JobScheduleParameters parameters, void* commands, int commandLen, void* result, int resultLen, int minCommandsPerJob, out JobHandle ret);
}
