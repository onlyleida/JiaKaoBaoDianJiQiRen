using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class HalfPoDaoMesh : BuildingMesh
{
	private Material landMaterial;

	private List<Vector3> points;

	private float height;

	public void Create(HalfPoDaoData data)
	{
		Create(gpsToVector3(data.points[0]), "HalfPoDao");
		buildingData = data;
		landMaterial = MeshMakerManager.Instance.GetMaterial(data.material);
		points = new List<Vector3>(gpsToVector3(data.points));
		points = MeshUtility.GetAtlandPos(points);
		height = data.height / 100f;
		CreateSurface1();
		CreateSurface2();
		CreateSurface3();
		CreateSurface4();
	}

	private void CreateSurface1()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(points[2]);
		list.Add(points[3]);
		list.Add(points[3] + Vector3.up * height);
		list.Add(points[2] + Vector3.up * height);
		CreateSurface(list);
	}

	private void CreateSurface2()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(points[0]);
		list.Add(points[1]);
		list.Add(points[2] + Vector3.up * height);
		list.Add(points[3] + Vector3.up * height);
		CreateSurface(list).gameObject.AddComponent<MeshCollider>();
	}

	private void CreateSurface3()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(points[3] + Vector3.up * height);
		list.Add(points[3]);
		list.Add((points[0] + points[3]) / 2f);
		list.Add(points[0]);
		CreateSurface(list);
	}

	private void CreateSurface4()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(points[1]);
		list.Add((points[1] + points[2]) / 2f);
		list.Add(points[2]);
		list.Add(points[2] + Vector3.up * height);
		CreateSurface(list);
	}

	private BaseMesh CreateSurface(List<Vector3> points)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 201;
		dTxBaseData.points = points;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.gameObject.name = "surface";
		baseMesh.transform.SetParent(transform);
		baseMesh.transform.position = points[0];
		baseMesh.SetMaterial(landMaterial);
		return baseMesh;
	}

	public override Vector3 CenterPoint()
	{
		return GetCenterPoint(points);
	}
}
