using LitJson;

namespace MC.Simple.Json;

public class SimpleJson
{
	public static T ToObject<T>(string content)
	{
		return JsonMapper.ToObject<T>(content);
	}

	public static string ToJson(object obj)
	{
		return JsonMapper.ToJson(obj);
	}
}
