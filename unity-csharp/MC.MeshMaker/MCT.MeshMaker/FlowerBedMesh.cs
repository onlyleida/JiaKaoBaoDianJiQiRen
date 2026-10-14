using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class FlowerBedMesh : BuildingMesh
{
	private Material cubeMaterial;

	private Material landMaterial;

	public void Create(FlowerBedData data)
	{
		Create(gpsToVector3(data.points[0]), "FlowerBed");
		buildingData = data;
		landMaterial = MeshMakerManager.Instance.GetMaterial(data.landMaterial);
		cubeMaterial = MeshMakerManager.Instance.GetMaterial(data.cubeMaterial);
		CreateCube(data);
		CreateLand(data);
	}

	private void CreateCube(FlowerBedData data)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.points = gpsToVector3(data.points);
		dTxBaseData.points = cutPoints(dTxBaseData.points);
		dTxBaseData.height = data.cubeHeight / 100f;
		dTxBaseData.width = data.cubeWidth / 100f;
		dTxBaseData.type = 204;
		dTxBaseData.isAtLand = true;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.gameObject.name = "cube";
		baseMesh.SetMaterial(cubeMaterial);
		baseMesh.transform.localPosition = Vector3.zero;
	}

	private void CreateLand(FlowerBedData data)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.points = gpsToVector3(data.points);
		dTxBaseData.points = MeshUtility.GetAtlandPos(dTxBaseData.points);
		dTxBaseData.points = cutPoints(dTxBaseData.points);
		dTxBaseData.type = 205;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.SetMaterial(landMaterial);
		baseMesh.transform.position = dTxBaseData.points[0] + Vector3.up * 0.001f;
		float maxX = ((ConcaveConvex)baseMesh).maxX;
		float maxY = ((ConcaveConvex)baseMesh).maxY;
		baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetTextureScale("_MainTex", new Vector2(maxX / 5f, maxY / 5f));
	}

	public override Vector3 CenterPoint()
	{
		FlowerBedData flowerBedData = (FlowerBedData)buildingData;
		return GetCenterPoint(gpsToVector3(flowerBedData.points));
	}

	private new static List<Vector3> cutPoints(List<Vector3> points)
	{
		List<Vector3> list = new List<Vector3>();
		Vector3 a = points[0];
		list.Add(points[0]);
		for (int i = 0; i < points.Count; i++)
		{
			if (i == points.Count - 1)
			{
				list.Add(points[i]);
			}
			else if (Vector3.Distance(a, points[i]) > 0.2f)
			{
				list.Add(points[i]);
				a = points[i];
			}
		}
		return list;
	}
}
