using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

[SurportType(MeshType.concave)]
public class ConcaveConvex : BaseMesh
{
	public float maxX;

	public float maxY;

	private const float epsilon = 1E-07f;

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
		List<Vector3> list = new List<Vector3>(catchData.points.Count);
		List<int> list2 = new List<int>(catchData.points.Count);
		for (int i = 0; i < catchData.points.Count; i++)
		{
			list.Add(catchData.points[i]);
			list2.Add(i);
		}
		List<int> list3 = _widelyTriangleIndex(list, list2);
		for (int j = 0; j < list3.Count; j += 3)
		{
			if (Vector3.Dot(new Plane(catchData.points[list3[j + 1]] - catchData.points[list3[j]], catchData.points[list3[j + 2]] - catchData.points[list3[j + 1]], catchData.points[list3[j]] - catchData.points[list3[j + 2]]).normal, Vector3.up) < 0f)
			{
				int value = list3[j + 1];
				list3[j + 1] = list3[j + 2];
				list3[j + 2] = value;
			}
		}
		return list3;
	}

	public override List<Vector2> GetUVs()
	{
		float num = float.MaxValue;
		float num2 = float.MaxValue;
		float num3 = float.MinValue;
		float num4 = float.MinValue;
		for (int i = 0; i < catchData.points.Count; i++)
		{
			num = Mathf.Min(catchData.points[i].x, num);
			num3 = Mathf.Max(catchData.points[i].x, num3);
			num2 = Mathf.Min(catchData.points[i].z, num2);
			num4 = Mathf.Max(catchData.points[i].z, num4);
		}
		List<Vector2> list = new List<Vector2>();
		float num5 = num3 - num;
		float num6 = num4 - num2;
		for (int j = 0; j < vertices.Count; j++)
		{
			Vector2 item = new Vector2((catchData.points[j].x - num) / num5, (vertices[j].z - num2) / num6);
			list.Add(item);
		}
		GetMaxXY();
		return list;
	}

	public List<Vector2> GetMaxXY()
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
		Vector3 forward = Vector3.forward;
		Vector3 right = Vector3.right;
		for (int j = 0; j < vertices.Count; j++)
		{
			Vector2 zero = Vector2.zero;
			float num = Vector3.Dot(vertices[j] - vertices[0], forward);
			if (Vector3.Angle(forward, vertices[j] - vertices[0]) > 90f)
			{
				num *= -1f;
			}
			float num2 = Vector3.Dot(vertices[j] - vertices[0], right);
			if (Vector3.Angle(right, vertices[j] - vertices[0]) > 90f)
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

	public static List<int> _convexTriangleIndex(List<Vector3> verts, List<int> indexes)
	{
		int num = verts.Count;
		if (num > 1 && verts[0] == verts[num - 1])
		{
			num--;
		}
		int num2 = num - 2;
		List<int> list = new List<int>(num2 * 3);
		for (int i = 0; i < num2; i++)
		{
			list.Add(indexes[0]);
			list.Add(indexes[i + 1]);
			list.Add(indexes[i + 2]);
		}
		return list;
	}

	public static List<int> _widelyTriangleIndex(List<Vector3> verts, List<int> indexes)
	{
		int count = verts.Count;
		if (count <= 3)
		{
			return _convexTriangleIndex(verts, indexes);
		}
		int num = 0;
		List<int> list = new List<int>();
		bool flag = true;
		for (num = 0; num < count; num++)
		{
			List<Vector3> list2 = new List<Vector3>(verts.ToArray());
			list2.RemoveAt(num);
			if (_isPointInsidePolygon(verts[num], list2))
			{
				flag = false;
				break;
			}
			list.Add(num);
		}
		if (flag)
		{
			return _convexTriangleIndex(verts, indexes);
		}
		int num2 = -1;
		for (int i = 0; i < count; i++)
		{
			if (i > num)
			{
				List<Vector3> list3 = new List<Vector3>(verts.ToArray());
				list3.RemoveAt(i);
				if (!_isPointInsidePolygon(verts[i], list3) && _isFragementIndex(i, verts))
				{
					num2 = i;
					break;
				}
			}
			else if (list.IndexOf(i) != -1 && _isFragementIndex(i, verts))
			{
				num2 = i;
				break;
			}
		}
		if (num2 < 0)
		{
			Debug.LogError("数据有误找不到可划分顶点");
			return new List<int>();
		}
		List<int> list4 = new List<int>();
		int index = ((num2 != count - 1) ? (num2 + 1) : 0);
		int index2 = ((num2 == 0) ? (count - 1) : (num2 - 1));
		list4.Add(indexes[index2]);
		list4.Add(indexes[num2]);
		list4.Add(indexes[index]);
		verts.RemoveAt(num2);
		indexes.RemoveAt(num2);
		List<int> collection = _widelyTriangleIndex(verts, indexes);
		list4.AddRange(collection);
		return list4;
	}

	private static bool _isFragementIndex(int index, List<Vector3> verts)
	{
		int count = verts.Count;
		List<Vector3> list = new List<Vector3>();
		int num = ((index != count - 1) ? (index + 1) : 0);
		int num2 = ((index == 0) ? (count - 1) : (index - 1));
		list.Add(verts[num2]);
		list.Add(verts[index]);
		list.Add(verts[num]);
		for (int i = 0; i < count; i++)
		{
			if (i != index && i != num2 && i != num && _isPointInsidePolygon(verts[i], list))
			{
				return false;
			}
		}
		return true;
	}

	private static bool _isDetectIntersect(ref Vector3 l1, Vector3 p1, Vector3 p2)
	{
		if (floatEqual(p1.x, p2.x))
		{
			return false;
		}
		float value;
		if (floatEqual(p1.z, p2.z))
		{
			value = p1.z;
		}
		else
		{
			float num = p1.x - p2.x;
			float num2 = p1.z - p2.z;
			float num3 = p2.z / num2 - p2.x / num;
			value = num2 / num * l1.x + num2 * num3;
		}
		if (floatLess(value, l1.z))
		{
			return false;
		}
		Vector3 vector = (floatLess(p1.x, p2.x) ? p1 : p2);
		Vector3 vector2 = (floatLess(p1.x, p2.x) ? p2 : p1);
		if (!floatGreat(l1.x, vector.x) || floatGreat(l1.x, vector2.x))
		{
			return false;
		}
		return true;
	}

	private static bool _isPointInsidePolygon(Vector3 point, List<Vector3> polygonVerts)
	{
		int count = polygonVerts.Count;
		int num = 0;
		for (int i = 1; i < count; i++)
		{
			if (_isDetectIntersect(ref point, polygonVerts[i - 1], polygonVerts[i]))
			{
				num++;
			}
		}
		if (polygonVerts[0] != polygonVerts[count - 1] && _isDetectIntersect(ref point, polygonVerts[count - 1], polygonVerts[0]))
		{
			num++;
		}
		return (num & 1) == 1;
	}

	private static bool floatLess(float value, float other)
	{
		return other - value > 1E-07f;
	}

	private static bool floatGreat(float value, float other)
	{
		return value - other > 1E-07f;
	}

	private static bool floatEqual(float value, float other)
	{
		return Mathf.Abs(value - other) < 1E-07f;
	}

	private static bool Vector3Equal(Vector3 a, Vector3 b)
	{
		return floatEqual(a.x, b.x) && floatEqual(a.y, b.y) && floatEqual(a.z, b.z);
	}
}
