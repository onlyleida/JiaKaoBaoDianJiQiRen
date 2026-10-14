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
public class ArrowMarkSrcData extends K3SrcData {
    public int arrowType;
    public Gps gps1;
    public Gps gps2;

    public ArrowMarkSrcData() {
        this.type = 6;
    }

    public static ArrowMarkSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (ArrowMarkSrcData) JSON.parseObject(str, ArrowMarkSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            ArrowMarkSrcData arrowMarkSrcData = new ArrowMarkSrcData();
            arrowMarkSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            arrowMarkSrcData.type = jSONObject.optInt("type");
            arrowMarkSrcData.gps1 = a.b(jSONObject.optJSONObject("gps1"));
            arrowMarkSrcData.gps2 = a.b(jSONObject.optJSONObject("gps2"));
            arrowMarkSrcData.arrowType = jSONObject.optInt("arrowType");
            return arrowMarkSrcData;
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
        return this.gps1 != null && this.gps2 != null && this.arrowType >= K3ShapeType.ARROW_STRAIGHT.getType() && this.arrowType <= K3ShapeType.ARROW_TURN_LEFT_RIGHT.getType();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData transform(int i) {
        CommonSrcData commonSrcData = new CommonSrcData();
        commonSrcData.points.add(0, this.gps1);
        commonSrcData.points.add(1, this.gps2);
        commonSrcData.shape = this.arrowType;
        commonSrcData.type = i;
        commonSrcData.id = this.id;
        return commonSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public K3SrcData copy() {
        ArrowMarkSrcData arrowMarkSrcData = new ArrowMarkSrcData(this.arrowType);
        arrowMarkSrcData.type = this.type;
        arrowMarkSrcData.id = this.id;
        arrowMarkSrcData.gps1 = this.gps1;
        arrowMarkSrcData.gps2 = this.gps2;
        return arrowMarkSrcData;
    }

    public ArrowMarkSrcData(int i) {
        this.arrowType = i;
        this.type = 6;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public ArrowMarkSrcData copy(CommonSrcData commonSrcData, boolean z) {
        ArrowMarkSrcData arrowMarkSrcData = new ArrowMarkSrcData(commonSrcData.shape);
        arrowMarkSrcData.type = commonSrcData.type;
        arrowMarkSrcData.id = commonSrcData.id;
        List<Gps> list = commonSrcData.points;
        if (list != null) {
            if (list.size() > 0) {
                arrowMarkSrcData.gps1 = commonSrcData.points.get(0);
            }
            if (commonSrcData.points.size() > 1) {
                arrowMarkSrcData.gps2 = commonSrcData.points.get(1);
            }
        }
        arrowMarkSrcData.arrowType = commonSrcData.shape;
        return arrowMarkSrcData;
    }
}
