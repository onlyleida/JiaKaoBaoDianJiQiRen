using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

[SurportType(MeshType.platform)]
public class PlatformMesh : BaseMesh
{
	public override void Make(DTxBaseData data)
	{
		catchData = data;
		data.width /= 2f;
		base.Make(data);
	}

	public override List<Vector3> GetVertices()
	{
		List<Vector3> list = new List<Vector3>();
		int num = 0;
		Vector3 zero = Vector3.zero;
		Vector3 vector = catchData.points[1] - catchData.points[0];
		Vector3 vector2 = catchData.points[2] - catchData.points[0];
		Vector3 vector3 = catchData.points[3] - catchData.points[0];
		vector.y = 0f;
		vector2.y = 0f;
		vector3.y = 0f;
		Vector3 item = zero + Vector3.up * catchData.height;
		Vector3 item2 = vector + Vector3.up * catchData.height;
		Vector3 item3 = vector2 + Vector3.up * catchData.height;
		Vector3 item4 = vector3 + Vector3.up * catchData.height;
		Vector3 item5 = zero + (zero - vector3).normalized * catchData.width;
		Vector3 item6 = vector + (vector - vector2).normalized * catchData.width;
		Vector3 item7 = vector2 + (vector2 - vector).normalized * catchData.width;
		Vector3 item8 = vector3 + (vector3 - zero).normalized * catchData.width;
		list.Add(item);
		list.Add(item2);
		list.Add(item3);
		list.Add(item4);
		list.Add(item5);
		list.Add(item6);
		list.Add(item7);
		list.Add(item8);
		return list;
	}

	public override List<int> GetTriangles()
	{
		if (triangles != null && triangles.Count > 0)
		{
			return triangles;
		}
		List<int> result = new List<int>();
		AddTriangles(ref result, 0, 3, 2);
		AddTriangles(ref result, 0, 2, 1);
		AddTriangles(ref result, 4, 7, 6);
		AddTriangles(ref result, 4, 6, 5);
		AddTriangles(ref result, 0, 1, 5);
		AddTriangles(ref result, 0, 5, 4);
		AddTriangles(ref result, 3, 6, 2);
		AddTriangles(ref result, 3, 7, 6);
		AddTriangles(ref result, 5, 1, 2);
		AddTriangles(ref result, 5, 2, 6);
		AddTriangles(ref result, 0, 7, 3);
		AddTriangles(ref result, 0, 4, 7);
		return result;
	}

	public void AddTriangles(ref List<int> triangles, int t0, int t1, int t2)
	{
		triangles.Add(t0);
		triangles.Add(t1);
		triangles.Add(t2);
	}

	public override List<Vector2> GetUVs()
	{
		if (uvs != null && uvs.Count > 0)
		{
			return uvs;
		}
		List<Vector2> list = new List<Vector2>();
		list.Add(Vector2.zero);
		list.Add(Vector2.zero);
		list.Add(Vector2.one);
		list.Add(Vector2.one);
		list.Add(Vector2.zero);
		list.Add(Vector2.zero);
		list.Add(Vector2.one);
		list.Add(Vector2.one);
		return list;
	}
}
