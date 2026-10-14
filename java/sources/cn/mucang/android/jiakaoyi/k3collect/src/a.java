package cn.mucang.android.jiakaoyi.k3collect.src;

import android.util.Log;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static List<K3HpMapEntity> a(String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                K3HpMapEntity k3HpMapEntity = new K3HpMapEntity();
                k3HpMapEntity.setType(jSONObjectOptJSONObject.optInt("type"));
                k3HpMapEntity.setId(Long.valueOf(jSONObjectOptJSONObject.optLong(TtmlNode.ATTR_ID)));
                k3HpMapEntity.setExamSiteId(jSONObjectOptJSONObject.optString("examSiteId"));
                k3HpMapEntity.setContent(jSONObjectOptJSONObject.optString(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT));
                arrayList.add(k3HpMapEntity);
            }
            return arrayList;
        } catch (JSONException e2) {
            e2.printStackTrace();
            f.o("解析地图出错 parseMapData " + Log.getStackTraceString(e2));
            return null;
        }
    }

    public static Gps b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Gps gps = new Gps();
        gps.altitude = jSONObject.optDouble("altitude");
        gps.latitude = jSONObject.optDouble("latitude");
        gps.longitude = jSONObject.optDouble("longitude");
        return gps;
    }

    public static List<Gps> c(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(b(jSONArray.optJSONObject(i)));
        }
        return arrayList;
    }

    public static String d(List<K3HpMapEntity> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<K3HpMapEntity> it = list.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next().getJSONObject());
                    }
                    return jSONArray.toString();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                f.o("解析地图出错 toMapDataList " + Log.getStackTraceString(e2));
            }
        }
        return new JSONArray().toString();
    }
}
