using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class PoDaoMesh : BuildingMesh
{
	private PodaoLandMesh podaoMesh;

	private Material landMaterial;

	private List<Material> cubeMaterial = new List<Material>();

	private List<BaseMesh> roadsideList = new List<BaseMesh>();

	public void Create(PoDaoData data)
	{
		Create(gpsToVector3(data.landPoint[0]), "PoDao");
		buildingData = data;
		landMaterial = MeshMakerManager.Instance.GetMaterial(data.landMaterial);
		foreach (int item in data.cubeMaterial)
		{
			cubeMaterial.Add(MeshMakerManager.Instance.GetMaterial(item));
		}
		CreatePodaoLand();
		CreateCube();
	}

	private void CreatePodaoLand()
	{
		PoDaoData data = (PoDaoData)buildingData;
		podaoMesh = new PodaoLandMesh();
		podaoMesh.Create(data);
		podaoMesh.SetMaterial(landMaterial);
		podaoMesh.transform.SetParent(transform);
	}

	private void CreateCube()
	{
		PoDaoData poDaoData = (PoDaoData)buildingData;
		for (int i = 0; i < poDaoData.cubePoint.Count; i++)
		{
			Vector3 vector = gpsToVector3(poDaoData.cubePoint[i]) - gpsToVector3(poDaoData.landPoint[0]);
			DTxBaseData dTxBaseData = new DTxBaseData();
			dTxBaseData.points = new List<Vector3>(podaoMesh.LeftVecs);
			for (int j = 0; j < dTxBaseData.points.Count; j++)
			{
				Vector3 value = dTxBaseData.points[j];
				value += vector;
				dTxBaseData.points[j] = value;
			}
			dTxBaseData.type = 204;
			dTxBaseData.height = poDaoData.cubeHeight[i] / 100f;
			dTxBaseData.width = poDaoData.cubeWidth[i] / 100f;
			dTxBaseData.isAtLand = false;
			BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
			baseMesh.gameObject.name = "side" + i;
			baseMesh.transform.SetParent(transform);
			baseMesh.transform.position = dTxBaseData.points[0];
			baseMesh.SetMaterial(cubeMaterial[i]);
			roadsideList.Add(baseMesh);
		}
	}

	public override Vector3 CenterPoint()
	{
		PoDaoData poDaoData = (PoDaoData)buildingData;
		return GetCenterPoint(gpsToVector3(poDaoData.landPoint));
	}
}
