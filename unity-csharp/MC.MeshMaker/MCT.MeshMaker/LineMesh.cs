using UnityEngine;

namespace MCT.MeshMaker;

public class LineMesh : BuildingMesh
{
	private BaseMesh cubeMesh;

	public void Create(LineData data)
	{
		Create(gpsToVector3(data.points[0]), "Line");
		buildingData = data;
		float num = 1f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = gpsToVector3(data.points);
		dTxBaseData.height = num / 100f;
		dTxBaseData.width = data.width / 100f;
		dTxBaseData.isAtLand = true;
		cubeMesh = MakerFactory.Instance.Create(dTxBaseData);
		cubeMesh.transform.SetParent(transform);
		cubeMesh.gameObject.name = "lineMesh";
		cubeMesh.transform.localPosition = Vector3.zero;
		Material material = MeshMakerManager.Instance.GetMaterial(data.material);
		cubeMesh.SetMaterial(material);
	}

	public void SetMaterial(Material material)
	{
		if (cubeMesh != null)
		{
			cubeMesh.SetMaterial(material);
		}
	}

	public override Vector3 CenterPoint()
	{
		LineData lineData = (LineData)buildingData;
		return GetCenterPoint(gpsToVector3(lineData.points));
	}
}
