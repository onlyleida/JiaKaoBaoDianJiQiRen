using UnityEngine;

namespace MCT.MeshMaker;

public class FenceMesh : BuildingMesh
{
	private BaseMesh cubeMesh;

	public void Create(FenceData data)
	{
		Create(gpsToVector3(data.points[0]), "Fence");
		buildingData = data;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.points = gpsToVector3(data.points);
		dTxBaseData.height = data.height / 100f;
		dTxBaseData.width = data.width / 100f;
		dTxBaseData.isAtLand = true;
		cubeMesh = MakerFactory.Instance.Create(dTxBaseData);
		cubeMesh.transform.SetParent(transform);
		cubeMesh.gameObject.name = "fenceMesh";
		cubeMesh.transform.localPosition = Vector3.zero;
		Material material = MeshMakerManager.Instance.GetMaterial(data.material);
		cubeMesh.SetMaterial(material);
	}

	public override Vector3 CenterPoint()
	{
		FenceData fenceData = (FenceData)buildingData;
		return GetCenterPoint(gpsToVector3(fenceData.points));
	}
}
