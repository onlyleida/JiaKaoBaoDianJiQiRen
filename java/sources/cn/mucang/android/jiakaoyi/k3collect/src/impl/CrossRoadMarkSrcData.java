package cn.mucang.android.jiakaoyi.k3collect.src.impl;

import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class CrossRoadMarkSrcData extends K3SrcData {
    public int enterType;
    public Gps gps1;
    public Gps gps2;
    public int lineColor = -16776961;
    public int lineWidth = 15;

    public CrossRoadMarkSrcData() {
        this.type = 11;
    }

    public static CrossRoadMarkSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (CrossRoadMarkSrcData) JSON.parseObject(str, CrossRoadMarkSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            CrossRoadMarkSrcData crossRoadMarkSrcData = new CrossRoadMarkSrcData();
            crossRoadMarkSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            crossRoadMarkSrcData.type = jSONObject.optInt("type");
            crossRoadMarkSrcData.gps1 = a.b(jSONObject.optJSONObject("gps1"));
            crossRoadMarkSrcData.gps2 = a.b(jSONObject.optJSONObject("gps2"));
            crossRoadMarkSrcData.enterType = jSONObject.optInt("enterType");
            crossRoadMarkSrcData.lineColor = -16776961;
            crossRoadMarkSrcData.lineWidth = 15;
            return crossRoadMarkSrcData;
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
        arrayList.add(this.gps1);
        arrayList.add(this.gps2);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public boolean isComplete() {
        return this.gps1 != null && this.gps2 != null && this.enterType >= K3ShapeType.ARROW_STRAIGHT.getType() && this.enterType <= K3ShapeType.ARROW_TURN_LEFT_RIGHT.getType();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData transform(int i) {
        CommonSrcData commonSrcData = new CommonSrcData();
        commonSrcData.points.add(0, this.gps1);
        commonSrcData.points.add(1, this.gps2);
        commonSrcData.type = i;
        commonSrcData.shape = this.enterType;
        commonSrcData.width = this.lineWidth;
        commonSrcData.color = -16776961;
        commonSrcData.id = this.id;
        return commonSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public K3SrcData copy() {
        CrossRoadMarkSrcData crossRoadMarkSrcData = new CrossRoadMarkSrcData();
        crossRoadMarkSrcData.type = this.type;
        crossRoadMarkSrcData.id = this.id;
        crossRoadMarkSrcData.gps1 = this.gps1;
        crossRoadMarkSrcData.gps2 = this.gps2;
        crossRoadMarkSrcData.lineWidth = this.lineWidth;
        crossRoadMarkSrcData.lineColor = this.lineColor;
        crossRoadMarkSrcData.enterType = this.enterType;
        return crossRoadMarkSrcData;
    }

    public CrossRoadMarkSrcData(int i) {
        this.enterType = i;
        this.type = 11;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CrossRoadMarkSrcData copy(CommonSrcData commonSrcData, boolean z) {
        CrossRoadMarkSrcData crossRoadMarkSrcData = new CrossRoadMarkSrcData();
        crossRoadMarkSrcData.type = commonSrcData.type;
        crossRoadMarkSrcData.id = commonSrcData.id;
        List<Gps> list = commonSrcData.points;
        if (list != null) {
            if (list.size() > 0) {
                crossRoadMarkSrcData.gps1 = commonSrcData.points.get(0);
            }
            if (commonSrcData.points.size() > 1) {
                List<Gps> list2 = commonSrcData.points;
                crossRoadMarkSrcData.gps2 = list2.get(list2.size() - 1);
            }
        }
        crossRoadMarkSrcData.lineWidth = this.lineWidth;
        crossRoadMarkSrcData.lineColor = -16776961;
        crossRoadMarkSrcData.enterType = commonSrcData.shape;
        return crossRoadMarkSrcData;
    }
}
