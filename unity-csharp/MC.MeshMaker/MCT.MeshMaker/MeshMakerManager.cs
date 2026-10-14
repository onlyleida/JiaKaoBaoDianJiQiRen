using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class MeshMakerManager : MonoBehaviour
{
	private Dictionary<int, Material> materialDic = new Dictionary<int, Material>();

	private Dictionary<int, GameObject> prefabDic = new Dictionary<int, GameObject>();

	private Dictionary<int, Sprite> spriteDic = new Dictionary<int, Sprite>();

	private MakerFactory factory;

	public DefaultConverter converter;

	public static bool isShowStartLine = false;

	public static bool allowAltitude = true;

	private Dictionary<int, int> objectCountDic = new Dictionary<int, int>();

	public static MeshMakerManager Instance;

	public void Start()
	{
		Instance = this;
		if (factory == null)
		{
			factory = new MakerFactory(this);
		}
	}

	public void SetOragin(Gps gps)
	{
		converter = new DefaultConverter(gps);
	}

	public K2Mesh CreateMesh(K2Data data)
	{
		K2Type stepId = (K2Type)data.stepId;
		if (objectCountDic.ContainsKey(data.stepId))
		{
			objectCountDic[data.stepId]++;
		}
		else
		{
			objectCountDic.Add(data.stepId, 1);
		}
		switch (stepId)
		{
		case K2Type.cefang:
		{
			K2CeFang data16 = (K2CeFang)data;
			K2CeFangMesh k2CeFangMesh = new K2CeFangMesh();
			k2CeFangMesh.Create(data16);
			return k2CeFangMesh;
		}
		case K2Type.daoche:
		{
			K2DaoChe data15 = (K2DaoChe)data;
			K2DaoCheMesh k2DaoCheMesh = new K2DaoCheMesh();
			k2DaoCheMesh.Create(data15);
			return k2DaoCheMesh;
		}
		case K2Type.quxian:
		{
			K2QuXian data14 = (K2QuXian)data;
			K2QuXianMesh k2QuXianMesh = new K2QuXianMesh();
			k2QuXianMesh.Create(data14);
			return k2QuXianMesh;
		}
		case K2Type.zhijiao:
		{
			K2ZhiJiao data13 = (K2ZhiJiao)data;
			K2ZhiJiaoMesh k2ZhiJiaoMesh = new K2ZhiJiaoMesh();
			k2ZhiJiaoMesh.Create(data13);
			return k2ZhiJiaoMesh;
		}
		case K2Type.shangpo:
		{
			K2ShangPo data12 = (K2ShangPo)data;
			K2ShangPoMesh k2ShangPoMesh = new K2ShangPoMesh();
			k2ShangPoMesh.Create(data12);
			return k2ShangPoMesh;
		}
		case K2Type.tingche:
		{
			K2TingChe data11 = (K2TingChe)data;
			K2TingCheMesh k2TingCheMesh = new K2TingCheMesh();
			k2TingCheMesh.Create(data11);
			return k2TingCheMesh;
		}
		case K2Type.qidian:
		{
			K2QiDian data10 = (K2QiDian)data;
			K2QiDianMesh k2QiDianMesh = new K2QiDianMesh();
			k2QiDianMesh.Create(data10);
			return k2QiDianMesh;
		}
		case K2Type.zhailu:
		{
			K2ZhaiLu data9 = (K2ZhaiLu)data;
			K2ZhaiLuMesh k2ZhaiLuMesh = new K2ZhaiLuMesh();
			k2ZhaiLuMesh.Create(data9);
			return k2ZhaiLuMesh;
		}
		case K2Type.jinji:
		{
			K2JinJi data8 = (K2JinJi)data;
			K2JinJiMesh k2JinJiMesh = new K2JinJiMesh();
			k2JinJiMesh.Create(data8);
			return k2JinJiMesh;
		}
		case K2Type.bianxian:
		{
			K2BianXian data7 = (K2BianXian)data;
			K2BianXianMesh k2BianXianMesh = new K2BianXianMesh();
			k2BianXianMesh.Create(data7);
			return k2BianXianMesh;
		}
		case K2Type.shihua:
		{
			K2ShiHua data6 = (K2ShiHua)data;
			K2ShiHuaMesh k2ShiHuaMesh = new K2ShiHuaMesh();
			k2ShiHuaMesh.Create(data6);
			return k2ShiHuaMesh;
		}
		case K2Type.suidao:
		{
			K2SuiDao data5 = (K2SuiDao)data;
			K2SuiDaoMesh k2SuiDaoMesh = new K2SuiDaoMesh();
			k2SuiDaoMesh.Create(data5);
			return k2SuiDaoMesh;
		}
		case K2Type.etc:
		{
			K2ETC data4 = (K2ETC)data;
			K2ETCMesh k2ETCMesh = new K2ETCMesh();
			k2ETCMesh.Create(data4);
			return k2ETCMesh;
		}
		case K2Type.yuanhuan:
		{
			K2YuanHuan data3 = (K2YuanHuan)data;
			K2YuanHuanMesh k2YuanHuanMesh = new K2YuanHuanMesh();
			k2YuanHuanMesh.Create(data3);
			return k2YuanHuanMesh;
		}
		case K2Type.bazi:
		{
			K2BaZi data2 = (K2BaZi)data;
			K2BaZiMesh k2BaZiMesh = new K2BaZiMesh();
			k2BaZiMesh.Create(data2);
			return k2BaZiMesh;
		}
		default:
			Debug.Log("无法识别的stepId:" + data.stepId);
			return null;
		}
	}

	public K3Mesh CreateMesh(K3Data data)
	{
		K3Type type = (K3Type)data.type;
		if (objectCountDic.ContainsKey(data.type))
		{
			objectCountDic[data.type]++;
		}
		else
		{
			objectCountDic.Add(data.type, 1);
		}
		switch (type)
		{
		case K3Type.Type_ArrowMark:
		{
			K3ArrowMark data9 = (K3ArrowMark)data;
			K3ArrowMarkMesh k3ArrowMarkMesh = new K3ArrowMarkMesh();
			k3ArrowMarkMesh.Create(data9);
			return k3ArrowMarkMesh;
		}
		case K3Type.Type_BanMaLine:
		{
			K3BanMaXian data14 = (K3BanMaXian)data;
			K3BanMaXianMesh k3BanMaXianMesh = new K3BanMaXianMesh();
			k3BanMaXianMesh.Create(data14);
			return k3BanMaXianMesh;
		}
		case K3Type.Type_CenterCircle:
		{
			K3CenterCircle data13 = (K3CenterCircle)data;
			K3CenterCircleMesh k3CenterCircleMesh = new K3CenterCircleMesh();
			k3CenterCircleMesh.Create(data13);
			return k3CenterCircleMesh;
		}
		case K3Type.Type_CrossRoadMark:
		{
			K3CrossRoadMark data12 = (K3CrossRoadMark)data;
			K3CrossRoadMarkMesh k3CrossRoadMarkMesh = new K3CrossRoadMarkMesh();
			k3CrossRoadMarkMesh.Create(data12);
			return k3CrossRoadMarkMesh;
		}
		case K3Type.Type_GridLine:
		{
			K3GridLine data11 = (K3GridLine)data;
			K3GridLineMesh k3GridLineMesh = new K3GridLineMesh();
			k3GridLineMesh.Create(data11);
			return k3GridLineMesh;
		}
		case K3Type.Type_StopLine:
		{
			K3StopLine data10 = (K3StopLine)data;
			K3StopLineMesh k3StopLineMesh = new K3StopLineMesh();
			k3StopLineMesh.Create(data10);
			return k3StopLineMesh;
		}
		default:
			if (type != K3Type.Type_CenterCircleFullLine)
			{
				switch (type)
				{
				case K3Type.Type_ShuangHuang:
				{
					K3ShuangHuang data7 = (K3ShuangHuang)data;
					K3ShuangHuangMesh k3ShuangHuangMesh = new K3ShuangHuangMesh();
					k3ShuangHuangMesh.Create(data7);
					return k3ShuangHuangMesh;
				}
				case K3Type.Type_JinTingArea:
				{
					K3Common data6 = (K3Common)data;
					K3JinTingAreaMesh k3JinTingAreaMesh = new K3JinTingAreaMesh();
					k3JinTingAreaMesh.Create(data6);
					return k3JinTingAreaMesh;
				}
				case K3Type.Type_DiaoTouArea:
				{
					K3Common data5 = (K3Common)data;
					K3DiaoTouAreaMesh k3DiaoTouAreaMesh = new K3DiaoTouAreaMesh();
					k3DiaoTouAreaMesh.Create(data5);
					return k3DiaoTouAreaMesh;
				}
				case K3Type.Type_JudgeLine:
				{
					K3Common data4 = (K3Common)data;
					K3JudgeLineMesh k3JudgeLineMesh = new K3JudgeLineMesh();
					k3JudgeLineMesh.Create(data4);
					return k3JudgeLineMesh;
				}
				case K3Type.Type_Building:
				{
					K3Common data3 = (K3Common)data;
					K3BuildingMesh k3BuildingMesh = new K3BuildingMesh();
					k3BuildingMesh.Create(data3);
					return k3BuildingMesh;
				}
				case K3Type.Type_NoEnterArea:
				{
					K3Common data2 = (K3Common)data;
					K3NoEnterAreaMesh k3NoEnterAreaMesh = new K3NoEnterAreaMesh();
					k3NoEnterAreaMesh.Create(data2);
					return k3NoEnterAreaMesh;
				}
				default:
					return null;
				}
			}
			goto case K3Type.Type_SingleLine;
		case K3Type.Type_SingleLine:
		case K3Type.Type_SideStopLine:
		case K3Type.Type_NonMotorVehicleLine:
		case K3Type.Type_CenterDashLine:
		{
			K3SingleLine data8 = (K3SingleLine)data;
			K3SingleLineMesh k3SingleLineMesh = new K3SingleLineMesh();
			k3SingleLineMesh.Create(data8);
			return k3SingleLineMesh;
		}
		}
	}

	public B2Mesh CreateMesh(B2Data data)
	{
		B2Type stepId = (B2Type)data.stepId;
		if (objectCountDic.ContainsKey(data.stepId))
		{
			objectCountDic[data.stepId]++;
		}
		else
		{
			objectCountDic.Add(data.stepId, 1);
		}
		switch (stepId)
		{
		case B2Type.shangpo:
		{
			B2ShangPo data18 = (B2ShangPo)data;
			B2ShangPoMesh b2ShangPoMesh = new B2ShangPoMesh();
			b2ShangPoMesh.Create(data18);
			return b2ShangPoMesh;
		}
		case B2Type.quxian:
		{
			B2QuXian data17 = (B2QuXian)data;
			B2QuXianMesh b2QuXianMesh = new B2QuXianMesh();
			b2QuXianMesh.Create(data17);
			return b2QuXianMesh;
		}
		case B2Type.cefang:
		{
			B2CeFang data16 = (B2CeFang)data;
			B2CeFangMesh b2CeFangMesh = new B2CeFangMesh();
			b2CeFangMesh.Create(data16);
			return b2CeFangMesh;
		}
		case B2Type.zhijiao:
		{
			B2ZhiJiao data15 = (B2ZhiJiao)data;
			B2ZhiJiaoMesh b2ZhiJiaoMesh = new B2ZhiJiaoMesh();
			b2ZhiJiaoMesh.Create(data15);
			return b2ZhiJiaoMesh;
		}
		case B2Type.qidian:
		{
			B2QiDian data14 = (B2QiDian)data;
			B2QiDianMesh b2QiDianMesh = new B2QiDianMesh();
			b2QiDianMesh.Create(data14);
			return b2QiDianMesh;
		}
		case B2Type.zhailu:
		{
			B2ZhaiLu data13 = (B2ZhaiLu)data;
			B2ZhaiLuMesh b2ZhaiLuMesh = new B2ZhaiLuMesh();
			b2ZhaiLuMesh.Create(data13);
			return b2ZhaiLuMesh;
		}
		case B2Type.jinji:
		{
			B2JinJi data12 = (B2JinJi)data;
			B2JinJiMesh b2JinJiMesh = new B2JinJiMesh();
			b2JinJiMesh.Create(data12);
			return b2JinJiMesh;
		}
		case B2Type.shihua:
		{
			B2ShiHua data11 = (B2ShiHua)data;
			B2ShiHuaMesh b2ShiHuaMesh = new B2ShiHuaMesh();
			b2ShiHuaMesh.Create(data11);
			return b2ShiHuaMesh;
		}
		case B2Type.suidao:
		{
			B2SuiDao data10 = (B2SuiDao)data;
			B2SuiDaoMesh b2SuiDaoMesh = new B2SuiDaoMesh();
			b2SuiDaoMesh.Create(data10);
			return b2SuiDaoMesh;
		}
		case B2Type.zhuangkao:
		{
			B2ZhuangKao data9 = (B2ZhuangKao)data;
			B2ZhuangKaoMesh b2ZhuangKaoMesh = new B2ZhuangKaoMesh();
			b2ZhuangKaoMesh.Create(data9);
			return b2ZhuangKaoMesh;
		}
		case B2Type.danbian:
		{
			B2DanBian data8 = (B2DanBian)data;
			B2DanBianMesh b2DanBianMesh = new B2DanBianMesh();
			b2DanBianMesh.Create(data8);
			return b2DanBianMesh;
		}
		case B2Type.xiankuan:
		{
			B2XianKuan data7 = (B2XianKuan)data;
			B2XianKuanMesh b2XianKuanMesh = new B2XianKuanMesh();
			b2XianKuanMesh.Create(data7);
			return b2XianKuanMesh;
		}
		case B2Type.zhangai:
		{
			B2ZhangAi data6 = (B2ZhangAi)data;
			B2ZhangAiMesh b2ZhangAiMesh = new B2ZhangAiMesh();
			b2ZhangAiMesh.Create(data6);
			return b2ZhangAiMesh;
		}
		case B2Type.qifu:
		{
			B2QiFu data5 = (B2QiFu)data;
			B2QiFuMesh b2QiFuMesh = new B2QiFuMesh();
			b2QiFuMesh.Create(data5);
			return b2QiFuMesh;
		}
		case B2Type.shanlu:
		{
			B2ShanLu data4 = (B2ShanLu)data;
			B2ShanLuMesh b2ShanLuMesh = new B2ShanLuMesh();
			b2ShanLuMesh.Create(data4);
			return b2ShanLuMesh;
		}
		case B2Type.gaosu:
		{
			B2GaoSu data3 = (B2GaoSu)data;
			B2GaoSuMesh b2GaoSuMesh = new B2GaoSuMesh();
			b2GaoSuMesh.Create(data3);
			return b2GaoSuMesh;
		}
		case B2Type.chunhualu:
		{
			B2ChunHuaLu data2 = (B2ChunHuaLu)data;
			B2ChunHuaLuMesh b2ChunHuaLuMesh = new B2ChunHuaLuMesh();
			b2ChunHuaLuMesh.Create(data2);
			return b2ChunHuaLuMesh;
		}
		default:
			Debug.Log("无法识别的stepId:" + data.stepId);
			return null;
		}
	}

	public BuildingMesh CreateMesh(BuildingData data)
	{
		switch ((BuildingType)data.type)
		{
		case BuildingType.land:
		{
			LandData data8 = (LandData)data;
			LandMesh landMesh = new LandMesh();
			landMesh.Create(data8);
			return landMesh;
		}
		case BuildingType.podao:
		{
			PoDaoData data7 = (PoDaoData)data;
			PoDaoMesh poDaoMesh = new PoDaoMesh();
			poDaoMesh.Create(data7);
			return poDaoMesh;
		}
		case BuildingType.flower_bed:
		{
			FlowerBedData data6 = (FlowerBedData)data;
			FlowerBedMesh flowerBedMesh = new FlowerBedMesh();
			flowerBedMesh.Create(data6);
			return flowerBedMesh;
		}
		case BuildingType.line:
		{
			LineData data5 = (LineData)data;
			LineMesh lineMesh = new LineMesh();
			lineMesh.Create(data5);
			return lineMesh;
		}
		case BuildingType.fence:
		{
			FenceData data4 = (FenceData)data;
			FenceMesh fenceMesh = new FenceMesh();
			fenceMesh.Create(data4);
			return fenceMesh;
		}
		case BuildingType.half_podao:
		{
			HalfPoDaoData data3 = (HalfPoDaoData)data;
			HalfPoDaoMesh halfPoDaoMesh = new HalfPoDaoMesh();
			halfPoDaoMesh.Create(data3);
			return halfPoDaoMesh;
		}
		case BuildingType.high_land:
		{
			HighLandData data2 = (HighLandData)data;
			HighLandMesh highLandMesh = new HighLandMesh();
			highLandMesh.Create(data2);
			return highLandMesh;
		}
		default:
			Debug.Log("无法识别的building type:" + data.type);
			return null;
		}
	}

	public OtherMesh CreateMesh(OtherData data)
	{
		switch ((OtherType)data.type)
		{
		case OtherType.ornament:
		{
			OrnamentData data7 = (OrnamentData)data;
			OrnamentMesh ornamentMesh = new OrnamentMesh();
			ornamentMesh.Create(data7);
			return ornamentMesh;
		}
		case OtherType.scenePoint:
		{
			ScenePointData data6 = (ScenePointData)data;
			ScenePointMesh scenePointMesh = new ScenePointMesh();
			scenePointMesh.Create(data6);
			return scenePointMesh;
		}
		case OtherType.electricFence:
		{
			ElectricFenceData data5 = (ElectricFenceData)data;
			ElectricFenceMesh electricFenceMesh = new ElectricFenceMesh();
			electricFenceMesh.Create(data5);
			return electricFenceMesh;
		}
		case OtherType.specialArea:
		{
			SpecialAreaData data4 = (SpecialAreaData)data;
			SpecialAreaMesh specialAreaMesh = new SpecialAreaMesh();
			specialAreaMesh.Create(data4);
			return specialAreaMesh;
		}
		case OtherType.connectionArea:
		{
			ConnectionAreaData data3 = (ConnectionAreaData)data;
			ConnectionAreaMesh connectionAreaMesh = new ConnectionAreaMesh();
			connectionAreaMesh.Create(data3);
			return connectionAreaMesh;
		}
		case OtherType.gpsMaskArea:
		{
			GpsMaskAreaData data2 = (GpsMaskAreaData)data;
			GpsMaskAreaMesh gpsMaskAreaMesh = new GpsMaskAreaMesh();
			gpsMaskAreaMesh.Create(data2);
			return gpsMaskAreaMesh;
		}
		default:
			Debug.LogError("无法识别的other type:" + data.type);
			return null;
		}
	}

	public void SetMaterial(int material, Material m)
	{
		if (materialDic.ContainsKey(material))
		{
			materialDic[material] = m;
		}
		else
		{
			materialDic.Add(material, m);
		}
	}

	public Material GetMaterial(int material)
	{
		if (materialDic.ContainsKey(material))
		{
			return materialDic[material];
		}
		return null;
	}

	public void SetPrefab(int id, GameObject res)
	{
		if (prefabDic.ContainsKey(id))
		{
			prefabDic[id] = res;
		}
		else
		{
			prefabDic.Add(id, res);
		}
	}

	public GameObject GetPrefab(int id)
	{
		if (prefabDic.ContainsKey(id))
		{
			return Object.Instantiate(prefabDic[id]);
		}
		return null;
	}

	public void SetSprite(int id, Sprite sp)
	{
		if (spriteDic.ContainsKey(id))
		{
			spriteDic[id] = sp;
		}
		else
		{
			spriteDic.Add(id, sp);
		}
	}

	public Sprite GetSprite(int id)
	{
		if (spriteDic.ContainsKey(id))
		{
			return spriteDic[id];
		}
		return null;
	}

	public DefaultConverter GetConverter()
	{
		if (converter == null)
		{
			Debug.LogError("为设置原点");
		}
		return converter;
	}

	public int GetObjectCount(int id)
	{
		if (objectCountDic.ContainsKey(id))
		{
			return objectCountDic[id];
		}
		return 0;
	}
}
