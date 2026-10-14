using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

[SurportType(MeshType.convex)]
public class ConvexMesh : BaseMesh
{
	public float maxX;

	public float maxY;

	public override List<Vector3> GetVertices()
	{
		List<Vector3> list = new List<Vector3>();
		for (int i = 0; i < catchData.points.Count; i++)
		{
			list.Add(catchData.points[i] - catchData.points[0]);
		}
		return list;
	}

	public override List<int> GetTriangles()
	{
		List<int> list = new List<int>();
		for (int i = 1; i < vertices.Count - 1; i++)
		{
			Vector3 lhs = vertices[i] - vertices[0];
			Vector3 rhs = vertices[i + 1] - vertices[i];
			Vector3 vector = Vector3.Cross(lhs, rhs);
			if (catchData.isAtLand)
			{
				if (Vector3.Angle(vector, Vector3.up) < 90f)
				{
					list.Add(0);
					list.Add(i);
					list.Add(i + 1);
				}
				else
				{
					list.Add(0);
					list.Add(i + 1);
					list.Add(i);
				}
			}
			else
			{
				list.Add(0);
				list.Add(i + 1);
				list.Add(i);
			}
		}
		return list;
	}

	public override List<Vector2> GetUVs()
	{
		List<Vector2> list = new List<Vector2>();
		if (vertices.Count < 3)
		{
			for (int i = 0; i < vertices.Count; i++)
			{
				list.Add(Vector2.zero);
			}
			return list;
		}
		Vector3 normalized = Vector3.Cross(vertices[2] - vertices[0], vertices[1] - vertices[0]).normalized;
		Vector3 normalized2 = (vertices[1] - vertices[0]).normalized;
		Vector3 normalized3 = (Quaternion.AngleAxis(90f, normalized) * normalized2).normalized;
		for (int j = 0; j < vertices.Count; j++)
		{
			Vector2 zero = Vector2.zero;
			float num = Vector3.Dot(vertices[j] - vertices[0], normalized2);
			if (Vector3.Angle(normalized2, vertices[j] - vertices[0]) > 90f)
			{
				num *= -1f;
			}
			float num2 = Vector3.Dot(vertices[j] - vertices[0], normalized3);
			if (Vector3.Angle(normalized3, vertices[j] - vertices[0]) > 90f)
			{
				num2 *= -1f;
			}
			zero.x = num2;
			zero.y = num;
			list.Add(zero);
		}
		for (int k = 0; k < list.Count; k++)
		{
			if (Mathf.Abs(list[k].x) > maxX)
			{
				maxX = list[k].x;
			}
			if (Mathf.Abs(list[k].y) > maxY)
			{
				maxY = list[k].y;
			}
		}
		for (int l = 0; l < list.Count; l++)
		{
			Vector2 value = list[l];
			value.x /= maxX;
			value.y /= maxY;
			list[l] = value;
		}
		return list;
	}
}
