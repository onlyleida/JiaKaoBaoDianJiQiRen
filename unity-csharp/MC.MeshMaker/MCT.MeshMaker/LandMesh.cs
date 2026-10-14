using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class LandMesh : BuildingMesh
{
	private Material landMaterial;

	public void Create(LandData data)
	{
		Create(gpsToVector3(data.points[0]), "Land");
		buildingData = data;
		landMaterial = MeshMakerManager.Instance.GetMaterial(data.material);
		CreateSurface(data);
	}

	private void CreateSurface(LandData data)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 205;
		List<Vector3> points = new List<Vector3>(gpsToVector3(data.points));
		dTxBaseData.points = points;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.SetMaterial(landMaterial);
		baseMesh.gameObject.AddComponent<MeshCollider>();
		baseMesh.transform.localPosition = Vector3.zero;
		float maxX = ((ConcaveConvex)baseMesh).maxX;
		float maxY = ((ConcaveConvex)baseMesh).maxY;
		baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetTextureScale("_MainTex", new Vector2(maxX / 50f, maxY / 50f));
	}

	public override Vector3 CenterPoint()
	{
		LandData landData = (LandData)buildingData;
		return GetCenterPoint(gpsToVector3(landData.points));
	}
}
