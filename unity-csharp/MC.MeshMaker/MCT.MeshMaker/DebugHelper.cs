using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class DebugHelper
{
	public static void DrawLine(Vector3 start, Vector3 end, float time, Color color)
	{
		Debug.DrawLine(start, end, color, time);
	}

	public static void DrawRay(Vector3 start, Vector3 dir, float time, Color color)
	{
		Debug.DrawRay(start, dir, color, time);
	}

	public static void DrawLines(List<Vector3> vertices, float time, Color color, float valueIndex = 0f)
	{
		for (int i = 0; i < vertices.Count - 1 && (valueIndex == 0f || valueIndex != (float)i); i++)
		{
			DrawLine(vertices[i], vertices[i + 1], time, color);
		}
	}

	public static void DrawLineUps(List<Vector3> vertices, float time, Color color)
	{
		for (float num = 0f; num < (float)vertices.Count; num++)
		{
			float num2 = 1f;
			DrawLine(vertices[(int)num], vertices[(int)num] + Vector3.up * num2, time, color);
		}
	}

	public static void DebugList(List<Vector3> list, string name)
	{
		string text = name;
		for (int i = 0; i < list.Count; i++)
		{
			text = text + list[i].ToString() + ",";
		}
		Debug.Log(text);
	}
}
