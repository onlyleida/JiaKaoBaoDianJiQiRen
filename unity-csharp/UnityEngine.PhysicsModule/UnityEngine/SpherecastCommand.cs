using System.Runtime.CompilerServices;
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;
using Unity.Jobs;
using Unity.Jobs.LowLevel.Unsafe;
using UnityEngine.Bindings;

namespace UnityEngine;

[NativeHeader("Runtime/Jobs/ScriptBindings/JobsBindingsTypes.h")]
[NativeHeader("Modules/Physics/BatchCommands/SpherecastCommand.h")]
public struct SpherecastCommand(Vector3 origin, float radius, Vector3 direction, float distance = float.MaxValue, int layerMask = -5)
{
	public Vector3 origin { get; set; } = origin;

	public float radius { get; set; } = radius;

	public Vector3 direction { get; set; } = direction;

	public float distance { get; set; } = distance;

	public int layerMask { get; set; } = layerMask;

	internal int maxHits { get; set; } = 1;

	public unsafe static JobHandle ScheduleBatch(NativeArray<SpherecastCommand> commands, NativeArray<RaycastHit> results, int minCommandsPerJob, JobHandle dependsOn = default(JobHandle))
	{
		BatchQueryJob<SpherecastCommand, RaycastHit> output = new BatchQueryJob<SpherecastCommand, RaycastHit>(commands, results);
		JobsUtility.JobScheduleParameters parameters = new JobsUtility.JobScheduleParameters(UnsafeUtility.AddressOf(ref output), BatchQueryJobStruct<BatchQueryJob<SpherecastCommand, RaycastHit>>.Initialize(), dependsOn, ScheduleMode.Batched);
		return ScheduleSpherecastBatch(ref parameters, NativeArrayUnsafeUtility.GetUnsafeBufferPointerWithoutChecks(commands), commands.Length, NativeArrayUnsafeUtility.GetUnsafeBufferPointerWithoutChecks(results), results.Length, minCommandsPerJob);
	}

	[FreeFunction("ScheduleSpherecastCommandBatch")]
	private unsafe static JobHandle ScheduleSpherecastBatch(ref JobsUtility.JobScheduleParameters parameters, void* commands, int commandLen, void* result, int resultLen, int minCommandsPerJob)
	{
		ScheduleSpherecastBatch_Injected(ref parameters, commands, commandLen, result, resultLen, minCommandsPerJob, out var ret);
		return ret;
	}

	[MethodImpl(MethodImplOptions.InternalCall)]
	private unsafe static extern void ScheduleSpherecastBatch_Injected(ref JobsUtility.JobScheduleParameters parameters, void* commands, int commandLen, void* result, int resultLen, int minCommandsPerJob, out JobHandle ret);
}
