package cn.mucang.android.jiakaoyi.k3collect.src.impl;

import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcDataUtils;
import cn.mucang.android.jiakaoyi.k3collect.src.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class StopLineSrcData extends K3SrcData {
    public Gps lineEnd;
    public Gps lineStart;
    public int lineWidth;

    public StopLineSrcData() {
        this.type = 9;
    }

    public static StopLineSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (StopLineSrcData) JSON.parseObject(str, StopLineSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            StopLineSrcData stopLineSrcData = new StopLineSrcData();
            stopLineSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            stopLineSrcData.type = jSONObject.optInt("type");
            stopLineSrcData.lineStart = a.b(jSONObject.optJSONObject("lineStart"));
            stopLineSrcData.lineEnd = a.b(jSONObject.optJSONObject("lineEnd"));
            stopLineSrcData.lineWidth = jSONObject.optInt("lineWidth");
            return stopLineSrcData;
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
        arrayList.add(this.lineStart);
        arrayList.add(this.lineEnd);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public boolean isComplete() {
        return (this.lineStart == null || this.lineEnd == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData transform(int i) {
        CommonSrcData commonSrcData = new CommonSrcData();
        commonSrcData.points.add(0, this.lineStart);
        commonSrcData.points.add(1, this.lineEnd);
        commonSrcData.type = i;
        commonSrcData.width = this.lineWidth;
        commonSrcData.id = this.id;
        return commonSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public K3SrcData copy() {
        StopLineSrcData stopLineSrcData = new StopLineSrcData();
        stopLineSrcData.type = this.type;
        stopLineSrcData.id = this.id;
        stopLineSrcData.lineStart = this.lineStart;
        stopLineSrcData.lineEnd = this.lineEnd;
        stopLineSrcData.lineWidth = this.lineWidth;
        return stopLineSrcData;
    }

    public StopLineSrcData(int i) {
        this.type = 9;
        this.lineWidth = i;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public StopLineSrcData copy(CommonSrcData commonSrcData, boolean z) {
        StopLineSrcData stopLineSrcData = new StopLineSrcData();
        stopLineSrcData.type = this.type;
        stopLineSrcData.id = commonSrcData.id;
        if (K3SrcDataUtils.f4160a.b(commonSrcData.points)) {
            if (commonSrcData.points.size() > 0) {
                stopLineSrcData.lineStart = commonSrcData.points.get(0);
            }
            if (commonSrcData.points.size() > 1) {
                List<Gps> list = commonSrcData.points;
                stopLineSrcData.lineEnd = list.get(list.size() - 1);
            }
            int i = commonSrcData.width;
            if (i <= 0) {
                i = this.lineWidth;
            }
            stopLineSrcData.lineWidth = i;
        } else {
            stopLineSrcData.lineWidth = this.lineWidth;
        }
        return stopLineSrcData;
    }
}
