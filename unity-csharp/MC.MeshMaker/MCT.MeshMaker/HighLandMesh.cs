using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class HighLandMesh : BuildingMesh
{
	private Material landMaterial;

	private List<Vector3> points;

	private float height;

	public void Create(HighLandData data)
	{
		Create(gpsToVector3(data.points[0]), "HighLand");
		buildingData = data;
		landMaterial = MeshMakerManager.Instance.GetMaterial(data.material);
		points = new List<Vector3>(gpsToVector3(data.points));
		points = MeshUtility.GetAtlandPos(points);
		height = data.height / 100f;
		CreateConcave(data);
		CreateConvexes();
	}

	private void CreateConcave(HighLandData data)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 205;
		dTxBaseData.points = points;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.SetMaterial(landMaterial);
		baseMesh.gameObject.AddComponent<MeshCollider>();
		baseMesh.transform.position = dTxBaseData.points[0] + Vector3.up * height;
		float maxX = ((ConcaveConvex)baseMesh).maxX;
		float maxY = ((ConcaveConvex)baseMesh).maxY;
		baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetTextureScale("_MainTex", new Vector2(maxX / 50f, maxY / 50f));
	}

	private void CreateConvexes()
	{
		for (int i = 0; i < points.Count; i++)
		{
			if (i == points.Count - 1)
			{
				BaseMesh baseMesh = CreateConvex(GetConvexPoints(points[i], points[0]));
				baseMesh.transform.position = points[i];
			}
			else
			{
				BaseMesh baseMesh2 = CreateConvex(GetConvexPoints(points[i], points[i + 1]));
				baseMesh2.transform.position = points[i];
			}
		}
	}

	private BaseMesh CreateConvex(List<Vector3> convex)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 203;
		dTxBaseData.points = convex;
		dTxBaseData.isAtLand = false;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.SetMaterial(landMaterial);
		return baseMesh;
	}

	private List<Vector3> GetConvexPoints(Vector3 p0, Vector3 p1)
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(p0);
		list.Add(p1);
		list.Add(p1 + Vector3.up * height);
		list.Add(p0 + Vector3.up * height);
		return list;
	}

	public override Vector3 CenterPoint()
	{
		return GetCenterPoint(points);
	}
}
