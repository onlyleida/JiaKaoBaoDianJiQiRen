using System;
using System.Collections.Generic;
using UnityEngine;

namespace MC.Simple.Utils;

[DisallowMultipleComponent]
[ExecuteInEditMode]
public class PrefabLightmapData : MonoBehaviour
{
	[Serializable]
	private struct RendererInfo
	{
		public Renderer renderer;

		public int lightmapIndex;

		public Vector4 lightmapOffsetScale;
	}

	[Serializable]
	private struct Texture2D_Remap
	{
		public int originalLightmapIndex;

		public Texture2D originalLightmap;

		public Texture2D lightmap0;

		public Texture2D lightmap1;
	}

	[SerializeField]
	private RendererInfo[] _rendererInfo;

	[SerializeField]
	private Texture2D[] _lightmaps;

	[SerializeField]
	private Texture2D[] _lightmaps2;

	private static List<Texture2D_Remap> sceneLightmaps = new List<Texture2D_Remap>();

	private void Start()
	{
		_ApplyLightmaps(_rendererInfo, _lightmaps, _lightmaps2);
	}

	private static void _ApplyLightmaps(RendererInfo[] rendererInfo, Texture2D[] lightmaps, Texture2D[] lightmaps2)
	{
		bool flag = false;
		int num = 0;
		if (rendererInfo == null || rendererInfo.Length == 0)
		{
			return;
		}
		LightmapData[] lightmaps3 = LightmapSettings.lightmaps;
		List<LightmapData> list = new List<LightmapData>();
		int[] array = new int[lightmaps.Length];
		for (int i = 0; i < lightmaps.Length; i++)
		{
			flag = false;
			for (int j = 0; j < lightmaps3.Length; j++)
			{
				if (lightmaps[i] == lightmaps3[j].lightmapColor)
				{
					array[i] = j;
					flag = true;
				}
			}
			new LightmapData();
			if (!flag)
			{
				array[i] = num + lightmaps3.Length;
				LightmapData lightmapData = new LightmapData();
				lightmapData.lightmapColor = lightmaps[i];
				lightmapData.lightmapDir = lightmaps2[i];
				list.Add(lightmapData);
				num++;
			}
		}
		LightmapData[] array2 = new LightmapData[lightmaps3.Length + num];
		lightmaps3.CopyTo(array2, 0);
		if (num > 0)
		{
			for (int k = 0; k < list.Count; k++)
			{
				array2[k + lightmaps3.Length] = new LightmapData();
				array2[k + lightmaps3.Length].lightmapColor = list[k].lightmapColor;
				array2[k + lightmaps3.Length].lightmapDir = list[k].lightmapDir;
			}
		}
		LightmapSettings.lightmaps = array2;
		_ApplyRendererInfo(rendererInfo, array);
	}

	private static void _ApplyRendererInfo(RendererInfo[] infos, int[] arrayOffsetIndex)
	{
		for (int i = 0; i < infos.Length; i++)
		{
			RendererInfo rendererInfo = infos[i];
			if (rendererInfo.renderer != null)
			{
				rendererInfo.renderer.lightmapIndex = arrayOffsetIndex[rendererInfo.lightmapIndex];
				rendererInfo.renderer.lightmapScaleOffset = rendererInfo.lightmapOffsetScale;
			}
		}
	}
}
