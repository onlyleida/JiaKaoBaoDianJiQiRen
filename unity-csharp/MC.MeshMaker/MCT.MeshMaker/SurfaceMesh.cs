using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

[SurportType(MeshType.surface)]
public class SurfaceMesh : BaseMesh
{
	public override List<Vector3> GetVertices()
	{
		List<Vector3> list = new List<Vector3>();
		Vector3 vector = (catchData.points[3] - catchData.points[0]) / catchData.density;
		Vector3 vector2 = (catchData.points[1] - catchData.points[0]) / catchData.density;
		Vector3 vector3 = (catchData.points[2] - catchData.points[3]) / catchData.density;
		Vector3 vector4 = (vector3 - vector2) / catchData.density;
		for (int i = 0; i <= catchData.density; i++)
		{
			for (int j = 0; j <= catchData.density; j++)
			{
				Vector3 item = (vector2 + vector4 * i) * j + vector * i;
				list.Add(item);
			}
		}
		return list;
	}

	public override List<int> GetTriangles()
	{
		List<int> list = new List<int>();
		int num = catchData.density + 1;
		for (int i = 0; i < catchData.density; i++)
		{
			for (int j = 0; j < catchData.density; j++)
			{
				int item = i * num + j;
				int item2 = i * num + j + 1;
				int item3 = (i + 1) * num + j + 1;
				int item4 = (i + 1) * num + j;
				list.Add(item);
				list.Add(item4);
				list.Add(item2);
				list.Add(item2);
				list.Add(item4);
				list.Add(item3);
			}
		}
		return list;
	}

	public override List<Vector2> GetUVs()
	{
		List<Vector2> list = new List<Vector2>();
		for (int i = 0; i <= catchData.density; i++)
		{
			for (int j = 0; j <= catchData.density; j++)
			{
				Vector2 zero = Vector2.zero;
				float num = 1f / (float)catchData.density;
				zero.x = num * (float)i;
				zero.y = num * (float)j;
				list.Add(zero);
			}
		}
		return list;
	}
}
