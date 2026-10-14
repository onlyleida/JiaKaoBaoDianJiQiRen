package cn.mucang.android.jiakaoyi.k3collect.src.impl;

import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
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
public class CenterCircleSrcData extends K3SrcData {
    public int inLineInterval;
    public int inLineWidth;
    public int outLineWidth;
    public Gps p1;
    public Gps p2;
    public Gps p3;
    public Gps p4;
    public int shape;

    public CenterCircleSrcData() {
        this.shape = K3ShapeType.CENTRAL_CIRCLE_ROUND.getType();
        this.outLineWidth = 15;
        this.inLineWidth = 15;
        this.inLineInterval = 30;
        this.type = 7;
    }

    public static CenterCircleSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (CenterCircleSrcData) JSON.parseObject(str, CenterCircleSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            CenterCircleSrcData centerCircleSrcData = new CenterCircleSrcData();
            centerCircleSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            centerCircleSrcData.type = jSONObject.optInt("type");
            centerCircleSrcData.p1 = a.b(jSONObject.optJSONObject("p1"));
            centerCircleSrcData.p2 = a.b(jSONObject.optJSONObject("p2"));
            centerCircleSrcData.p3 = a.b(jSONObject.optJSONObject("p3"));
            centerCircleSrcData.p4 = a.b(jSONObject.optJSONObject("p4"));
            centerCircleSrcData.shape = jSONObject.optInt("shape");
            centerCircleSrcData.inLineWidth = jSONObject.optInt("inLineWidth");
            centerCircleSrcData.outLineWidth = jSONObject.optInt("outLineWidth");
            centerCircleSrcData.inLineInterval = jSONObject.optInt("inLineInterval");
            return centerCircleSrcData;
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
        int i = this.shape;
        if (i != 2 && i != K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.p1);
            arrayList.add(this.p2);
            arrayList.add(this.p3);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.p1);
        arrayList2.add(this.p2);
        arrayList2.add(this.p3);
        arrayList2.add(this.p4);
        return arrayList2;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public boolean isComplete() {
        int i;
        if (this.p1 == null || this.p2 == null || this.p3 == null) {
            return false;
        }
        int i2 = this.shape;
        if ((i2 == 2 || i2 == K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType()) && this.p4 == null) {
            return false;
        }
        return this.shape == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType() || this.shape == K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType() || (i = this.shape) == 2 || i == 1;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData transform(int i) {
        CommonSrcData commonSrcData = new CommonSrcData();
        commonSrcData.points.add(0, this.p1);
        commonSrcData.points.add(1, this.p2);
        commonSrcData.points.add(2, this.p3);
        commonSrcData.points.add(3, this.p4);
        commonSrcData.type = i;
        commonSrcData.width = this.outLineWidth;
        commonSrcData.width2 = this.inLineWidth;
        commonSrcData.interval = this.inLineInterval;
        if (this.shape == 2) {
            commonSrcData.shape = K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType();
        } else {
            commonSrcData.shape = K3ShapeType.CENTRAL_CIRCLE_ROUND.getType();
        }
        commonSrcData.id = this.id;
        return commonSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public K3SrcData copy() {
        CenterCircleSrcData centerCircleSrcData = new CenterCircleSrcData();
        centerCircleSrcData.id = this.id;
        centerCircleSrcData.type = this.type;
        centerCircleSrcData.shape = this.shape;
        centerCircleSrcData.p1 = this.p1;
        centerCircleSrcData.p2 = this.p2;
        centerCircleSrcData.p3 = this.p3;
        centerCircleSrcData.p4 = this.p4;
        centerCircleSrcData.outLineWidth = this.outLineWidth;
        centerCircleSrcData.inLineWidth = this.inLineWidth;
        centerCircleSrcData.inLineInterval = this.inLineInterval;
        return centerCircleSrcData;
    }

    public CenterCircleSrcData(int i) {
        this.shape = K3ShapeType.CENTRAL_CIRCLE_ROUND.getType();
        this.outLineWidth = 15;
        this.inLineWidth = 15;
        this.inLineInterval = 30;
        this.shape = i;
        this.type = 7;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CenterCircleSrcData copy(CommonSrcData commonSrcData, boolean z) {
        CenterCircleSrcData centerCircleSrcData = new CenterCircleSrcData();
        centerCircleSrcData.id = commonSrcData.id;
        centerCircleSrcData.type = commonSrcData.type;
        int i = commonSrcData.shape;
        K3ShapeType k3ShapeType = K3ShapeType.CENTRAL_CIRCLE_RHOMB;
        if (i != k3ShapeType.getType() && commonSrcData.shape != 2) {
            centerCircleSrcData.shape = K3ShapeType.CENTRAL_CIRCLE_ROUND.getType();
        } else {
            centerCircleSrcData.shape = k3ShapeType.getType();
        }
        if (commonSrcData.shape != k3ShapeType.getType() && (commonSrcData.shape != K3ShapeType.CENTRAL_CIRCLE_ROUND.getType() || !K3SrcDataUtils.f4160a.b(commonSrcData.points))) {
            centerCircleSrcData.outLineWidth = this.outLineWidth;
            centerCircleSrcData.inLineWidth = this.inLineWidth;
            centerCircleSrcData.inLineInterval = this.inLineInterval;
        } else {
            if (commonSrcData.points.size() > 0) {
                centerCircleSrcData.p1 = commonSrcData.points.get(0);
            }
            if (commonSrcData.points.size() > 1) {
                centerCircleSrcData.p2 = commonSrcData.points.get(1);
            }
            if (commonSrcData.points.size() > 3) {
                centerCircleSrcData.p3 = commonSrcData.points.get(2);
            }
            if (commonSrcData.shape == k3ShapeType.getType() && commonSrcData.points.size() > 4) {
                centerCircleSrcData.p4 = commonSrcData.points.get(3);
            }
            int i2 = commonSrcData.width;
            if (i2 <= 0) {
                i2 = this.outLineWidth;
            }
            centerCircleSrcData.outLineWidth = i2;
            int i3 = commonSrcData.width2;
            if (i3 <= 0) {
                i3 = this.inLineWidth;
            }
            centerCircleSrcData.inLineWidth = i3;
            int i4 = commonSrcData.interval;
            if (i4 <= 0) {
                i4 = this.inLineInterval;
            }
            centerCircleSrcData.inLineInterval = i4;
        }
        return centerCircleSrcData;
    }
}
