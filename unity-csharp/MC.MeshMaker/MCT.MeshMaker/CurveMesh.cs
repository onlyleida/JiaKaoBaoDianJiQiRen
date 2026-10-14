using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

[SurportType(MeshType.curve)]
public class CurveMesh : BaseMesh
{
	public List<Vector3> LeftVecs = new List<Vector3>();

	public List<Vector3> RightVecs = new List<Vector3>();

	public override List<Vector3> GetVertices()
	{
		List<Vector3> list = new List<Vector3>();
		Vector3 vector = (catchData.points[3] - catchData.points[0]) / catchData.density;
		Vector3 vector2 = (catchData.points[1] - catchData.points[0]) / catchData.density;
		Vector3 vector3 = (catchData.points[2] - catchData.points[3]) / catchData.density;
		Vector3 vector4 = (vector3 - vector2) / catchData.density;
		float num = 0f;
		for (int i = 0; i <= catchData.density; i++)
		{
			for (int j = 0; j <= catchData.density; j++)
			{
				Vector3 vector5 = (vector2 + vector4 * i) * j + vector * i;
				float num2 = Vector3.Distance(catchData.points[3], catchData.points[0]) * 3f;
				float num3 = Vector3.Distance(vector * (catchData.density / 2 - i), Vector3.zero);
				if (i == 0)
				{
					num = Mathf.Sqrt(num2 * num2 - num3 * num3);
				}
				vector5.y = Mathf.Sqrt(num2 * num2 - num3 * num3) - num;
				list.Add(vector5);
				if (j == 0)
				{
					LeftVecs.Add(vector5 + catchData.points[0]);
				}
				if (j == catchData.density)
				{
					RightVecs.Add(vector5 + catchData.points[0]);
				}
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
