package cn.mucang.android.jiakaoyi.k3collect.src.impl;

import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class CommonSrcData extends K3SrcData {
    public String desc;
    public int interval;
    public int length;
    public int shape;
    public List<Gps> points = new ArrayList();
    public List<Gps> points2 = new ArrayList();
    public int width = 15;
    public int width2 = 15;
    public int color = -1;

    public CommonSrcData() {
    }

    public static CommonSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (CommonSrcData) JSON.parseObject(str, CommonSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            CommonSrcData commonSrcData = new CommonSrcData();
            commonSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            commonSrcData.type = jSONObject.optInt("type");
            commonSrcData.color = jSONObject.optInt(TtmlNode.ATTR_TTS_COLOR);
            commonSrcData.width = jSONObject.optInt("width");
            commonSrcData.points = a.c(jSONObject.optJSONArray("points"));
            commonSrcData.width2 = jSONObject.optInt("width2");
            commonSrcData.interval = jSONObject.optInt("interval");
            commonSrcData.length = jSONObject.optInt("length");
            commonSrcData.shape = jSONObject.optInt("shape");
            commonSrcData.desc = jSONObject.optString(SocialConstants.PARAM_APP_DESC);
            if (jSONObject.has("points2")) {
                commonSrcData.points2 = a.c(jSONObject.optJSONArray("points2"));
            }
            return commonSrcData;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public List<Gps> center() {
        if (!isComplete()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (this.points.size() > 1) {
            arrayList.add(this.points.get(0));
            List<Gps> list = this.points;
            arrayList.add(list.get(list.size() - 1));
        }
        List<Gps> list2 = this.points2;
        if (list2 != null && list2.size() > 1) {
            arrayList.add(this.points2.get(0));
            List<Gps> list3 = this.points2;
            arrayList.add(list3.get(list3.size() - 1));
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public boolean isComplete() {
        List<Gps> list;
        int i = this.type;
        if (i == 2 || i == 19) {
            List<Gps> list2 = this.points;
            return list2 != null && list2.size() >= 2 && (list = this.points2) != null && list.size() >= 2;
        }
        if (i == 5 || i == 8 || i == 13) {
            List<Gps> list3 = this.points;
            return list3 != null && list3.size() >= 4;
        }
        if (i == 7) {
            List<Gps> list4 = this.points;
            return list4 != null && list4.size() >= 3;
        }
        List<Gps> list5 = this.points;
        return list5 != null && list5.size() >= 2;
    }

    public boolean isEmpty(List<Gps> list) {
        if (list == null || list.size() <= 0) {
            return false;
        }
        Iterator<Gps> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData transform(int i) {
        CommonSrcData commonSrcData = new CommonSrcData();
        commonSrcData.id = this.id;
        commonSrcData.type = i;
        commonSrcData.color = this.color;
        commonSrcData.width = this.width;
        commonSrcData.points = this.points;
        commonSrcData.desc = this.desc;
        commonSrcData.width2 = this.width2;
        commonSrcData.interval = this.interval;
        commonSrcData.length = this.length;
        commonSrcData.shape = this.shape;
        commonSrcData.points2 = this.points2;
        return commonSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public K3SrcData copy() {
        CommonSrcData commonSrcData = new CommonSrcData(this.type);
        commonSrcData.id = this.id;
        commonSrcData.type = this.type;
        commonSrcData.color = this.color;
        commonSrcData.width = this.width;
        if (this.points != null) {
            commonSrcData.points = new ArrayList(this.points);
        }
        commonSrcData.width2 = this.width2;
        commonSrcData.interval = this.interval;
        commonSrcData.length = this.length;
        commonSrcData.shape = this.shape;
        if (this.points2 != null) {
            commonSrcData.points2 = new ArrayList(this.points2);
        }
        commonSrcData.desc = this.desc;
        return commonSrcData;
    }

    public CommonSrcData(int i) {
        this.type = i;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData copy(CommonSrcData commonSrcData, boolean z) {
        CommonSrcData commonSrcData2 = new CommonSrcData(commonSrcData.type);
        commonSrcData2.id = commonSrcData.id;
        commonSrcData2.type = commonSrcData.type;
        commonSrcData2.color = commonSrcData.color;
        commonSrcData2.width = commonSrcData.width;
        if (!isEmpty(commonSrcData.points)) {
            commonSrcData2.points = commonSrcData.points;
        }
        commonSrcData2.width2 = commonSrcData.width2;
        if (z) {
            commonSrcData2.interval = commonSrcData.interval;
            commonSrcData2.length = commonSrcData.length;
        }
        commonSrcData2.shape = commonSrcData.shape;
        commonSrcData2.desc = commonSrcData.desc;
        if (!isEmpty(commonSrcData.points2)) {
            commonSrcData2.points2 = commonSrcData.points2;
        }
        return commonSrcData2;
    }
}
