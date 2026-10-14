using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3SingleLineMesh : K3Mesh
{
	public List<List<Vector3>> result = new List<List<Vector3>>();

	public float maxLineLen = 50f;

	private bool isCurve;

	private Vector3 start;

	private Vector3 end;

	private List<Vector3> list;

	public K3SingleLineMesh Create(K3SingleLine data)
	{
		string name = GetName(data.id, data.type);
		Gps gps = (data.isCurve ? data.lineList[0] : data.start);
		Create(data, gps, name);
		isCurve = data.isCurve;
		if (data.isCurve)
		{
			list = gpsToVector3(data.lineList);
			CreateCurve(data.lineList);
		}
		else
		{
			start = gpsToVector3(data.start);
			end = gpsToVector3(data.end);
			CreateSingle(data.start, data.end);
		}
		return this;
	}

	public override float GetDistance(Vector3 point)
	{
		if (isCurve)
		{
			return GetDistance(point, list, seal: false);
		}
		return GetDistance(point, start, end);
	}

	public override Vector3 CenterPoint()
	{
		K3SingleLine k3SingleLine = (K3SingleLine)k3Data;
		if (k3SingleLine.isCurve)
		{
			return gpsToVector3(k3SingleLine.lineList[0]);
		}
		return gpsToVector3(k3SingleLine.start);
	}

	public override void SetMat()
	{
		K3SingleLine k3SingleLine = (K3SingleLine)k3Data;
		uint num = uint.MaxValue;
		if (k3SingleLine.isDashed)
		{
			if (k3SingleLine.lineColor == (int)num)
			{
				k3Data.mainMat = 15;
			}
			else
			{
				k3Data.mainMat = 10;
			}
		}
		else if (k3SingleLine.lineColor == (int)num)
		{
			k3Data.mainMat = 14;
		}
		else
		{
			k3Data.mainMat = 11;
		}
		mainMaterial = MeshMakerManager.Instance.GetMaterial(k3Data.mainMat);
	}

	public void CreateCurve(List<Gps> line_gps)
	{
		result.Clear();
		List<Vector3> points = gpsToVector3(ClearGpsData(line_gps));
		points = ClearLineData(points);
		CutLine(points);
		for (int i = 0; i < result.Count; i++)
		{
			CreateCurveLine(result[i], "Line_" + i);
		}
	}

	public void CreateSingle(Gps start, Gps end)
	{
		result.Clear();
		List<Vector3> points = new List<Vector3>
		{
			gpsToVector3(start),
			gpsToVector3(end)
		};
		CutLine(points);
		for (int i = 0; i < result.Count; i++)
		{
			CreateCurveLine(result[i], "Line_" + i);
		}
	}

	public void CreateCurveLine(List<Vector3> points, string name)
	{
		float height = 0.01f;
		GameObject gameObject = new GameObject(name);
		gameObject.transform.SetParent(transform);
		gameObject.transform.localPosition = Vector3.zero;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 206;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = points;
		dTxBaseData.height = height;
		dTxBaseData.width = (float)k3Data.lineWidth / 100f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh" + points.Count;
		baseMesh.transform.position = dTxBaseData.points[0] - GetHeight() * Vector3.up;
		baseMesh.SetMaterial(mainMaterial);
		AddCollider(baseMesh.gameObject);
	}

	public void CutLine(List<Vector3> points)
	{
		int cutIndex = GetCutIndex(points);
		if (cutIndex != -1)
		{
			float cutDis = GetCutDis(points, cutIndex);
			Vector3 cutPos = GetCutPos(points, cutIndex, cutDis);
			List<Vector3> cutLine = GetCutLine(points, cutIndex, cutPos);
			List<Vector3> points2 = RemoveLine(points, cutPos, cutIndex);
			result.Add(cutLine);
			CutLine(points2);
		}
		else
		{
			result.Add(points);
		}
	}

	public float GetCutDis(List<Vector3> points, int cutIndex)
	{
		float num = 0f;
		Vector3 a = points[0];
		for (int i = 0; i <= cutIndex; i++)
		{
			float num2 = Vector3.Distance(a, points[i]);
			num += num2;
			a = points[i];
			if (i == cutIndex)
			{
				return maxLineLen - num;
			}
		}
		return 0f;
	}

	public int GetCutIndex(List<Vector3> points)
	{
		Vector3 a = points[0];
		float num = 0f;
		for (int i = 1; i < points.Count; i++)
		{
			float num2 = Vector3.Distance(a, points[i]);
			a = points[i];
			num += num2;
			if (num > maxLineLen)
			{
				return i - 1;
			}
		}
		return -1;
	}

	public Vector3 GetCutPos(List<Vector3> points, int cutIndex, float cutDis)
	{
		Vector3 vector = points[cutIndex];
		return vector + (points[cutIndex + 1] - vector).normalized * cutDis;
	}

	public List<Vector3> GetCutLine(List<Vector3> points, int cutIndex, Vector3 cutPos)
	{
		List<Vector3> list = new List<Vector3>();
		for (int i = 0; i <= cutIndex; i++)
		{
			list.Add(points[i]);
		}
		if (Vector3.Distance(points[cutIndex], cutPos) > 0.1f)
		{
			list.Add(cutPos);
		}
		return list;
	}

	public List<Vector3> RemoveLine(List<Vector3> points, Vector3 cutPos, int cutIndex)
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(cutPos);
		for (int i = cutIndex + 1; i < points.Count; i++)
		{
			list.Add(points[i]);
		}
		return list;
	}

	public List<Vector3> ClearLineData(List<Vector3> points)
	{
		List<Vector3> list = new List<Vector3>();
		foreach (Vector3 point in points)
		{
			if (!list.Contains(point) && point != Vector3.zero)
			{
				list.Add(point);
			}
		}
		return list;
	}

	public List<Gps> ClearGpsData(List<Gps> list)
	{
		List<Gps> list2 = new List<Gps>();
		foreach (Gps item in list)
		{
			if (item.latitude != 0.0 && item.longitude != 0.0)
			{
				list2.Add(item);
			}
		}
		return list2;
	}
}
