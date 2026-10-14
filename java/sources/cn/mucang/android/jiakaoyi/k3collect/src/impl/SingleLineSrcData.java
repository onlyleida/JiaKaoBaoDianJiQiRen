package cn.mucang.android.jiakaoyi.k3collect.src.impl;

import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcDataUtils;
import cn.mucang.android.jiakaoyi.k3collect.src.a;
import cn.mucang.android.jiakaoyi.signal.i.b;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SingleLineSrcData extends K3SrcData {
    public Gps end;
    public boolean isCurve;
    public boolean isDashed;
    public int lineColor;
    public List<Gps> lineList;
    public int lineWidth;
    public Gps start;

    public SingleLineSrcData() {
        this.lineColor = -1;
        this.type = 1;
    }

    public static SingleLineSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (SingleLineSrcData) JSON.parseObject(str, SingleLineSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            SingleLineSrcData singleLineSrcData = new SingleLineSrcData();
            singleLineSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            singleLineSrcData.type = jSONObject.optInt("type");
            singleLineSrcData.lineWidth = jSONObject.optInt("lineWidth");
            singleLineSrcData.isDashed = jSONObject.optBoolean("isDashed");
            singleLineSrcData.isCurve = jSONObject.optBoolean("isCurve");
            singleLineSrcData.lineColor = jSONObject.optInt("lineColor");
            singleLineSrcData.start = a.b(jSONObject.optJSONObject(TtmlNode.START));
            singleLineSrcData.end = a.b(jSONObject.optJSONObject(TtmlNode.END));
            singleLineSrcData.lineList = a.c(jSONObject.optJSONArray("lineList"));
            return singleLineSrcData;
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
        arrayList.add(this.start);
        arrayList.add(this.end);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public boolean isComplete() {
        if (this.start == null || this.end == null) {
            return false;
        }
        if (!this.isCurve) {
            return true;
        }
        List<Gps> list = this.lineList;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public SingleLineSrcData merge(SingleLineSrcData singleLineSrcData) {
        List<Gps> listMerge;
        boolean z = this.isCurve;
        if (z && singleLineSrcData.isCurve) {
            List<Gps> listMerge2 = merge(this.lineList, singleLineSrcData.lineList);
            if (listMerge2 == null || listMerge2.size() < 2 || listMerge2.get(this.lineList.size() - 1).distanceTo(listMerge2.get(this.lineList.size())) >= 3.0d) {
                return null;
            }
            this.start = listMerge2.get(0);
            this.end = listMerge2.get(listMerge2.size() - 1);
            this.lineList = listMerge2;
            return this;
        }
        if (z || singleLineSrcData.isCurve || (listMerge = merge(Arrays.asList(this.start, this.end), Arrays.asList(singleLineSrcData.start, singleLineSrcData.end))) == null || listMerge.size() < 4) {
            return null;
        }
        b bVar = new b(listMerge.get(0));
        Pos posA = bVar.a(listMerge.get(0));
        Pos posA2 = bVar.a(listMerge.get(1));
        Pos posA3 = bVar.a(listMerge.get(2));
        Pos posA4 = bVar.a(listMerge.get(listMerge.size() - 1));
        double dDistanceTo = listMerge.get(1).distanceTo(listMerge.get(2));
        Pos posVectorTo = posA.vectorTo(posA2);
        Pos posVectorTo2 = posA3.vectorTo(posA4);
        float fModel = (float) (posVectorTo.model() * posVectorTo2.model());
        if (dDistanceTo >= 3.0d || posVectorTo.dot(posVectorTo2) / ((double) fModel) <= 0.9848d) {
            return null;
        }
        this.start = listMerge.get(0);
        this.end = listMerge.get(listMerge.size() - 1);
        return this;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData transform(int i) {
        CommonSrcData commonSrcData = new CommonSrcData();
        if (this.isCurve) {
            List<Gps> list = this.lineList;
            if (list != null) {
                commonSrcData.points.addAll(list);
            }
        } else {
            commonSrcData.points.add(0, this.start);
            commonSrcData.points.add(1, this.end);
        }
        commonSrcData.type = i;
        commonSrcData.width = this.lineWidth;
        commonSrcData.color = this.lineColor;
        if (this.isCurve) {
            commonSrcData.shape = K3ShapeType.CURVE.getType();
        } else {
            commonSrcData.shape = K3ShapeType.STRAIGHT_LINE.getType();
        }
        commonSrcData.id = this.id;
        return commonSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public K3SrcData copy() {
        SingleLineSrcData singleLineSrcData = new SingleLineSrcData();
        singleLineSrcData.type = this.type;
        singleLineSrcData.id = this.id;
        singleLineSrcData.end = this.end;
        singleLineSrcData.start = this.start;
        if (this.lineList != null) {
            singleLineSrcData.lineList = new ArrayList(this.lineList);
        }
        singleLineSrcData.lineWidth = this.lineWidth;
        singleLineSrcData.isCurve = this.isCurve;
        singleLineSrcData.lineColor = this.lineColor;
        singleLineSrcData.isDashed = this.isDashed;
        return singleLineSrcData;
    }

    public SingleLineSrcData(int i) {
        this.lineColor = -1;
        this.type = i;
    }

    public SingleLineSrcData(int i, int i2) {
        this(i, i2, false);
    }

    public SingleLineSrcData(int i, boolean z) {
        this(1, i, z);
    }

    public SingleLineSrcData(int i, int i2, boolean z) {
        this.lineColor = -1;
        this.type = i;
        this.lineWidth = i2;
        this.isDashed = z;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public SingleLineSrcData copy(CommonSrcData commonSrcData, boolean z) throws IllegalArgumentException {
        SingleLineSrcData singleLineSrcData = new SingleLineSrcData();
        singleLineSrcData.type = commonSrcData.type;
        singleLineSrcData.id = commonSrcData.id;
        if (K3SrcDataUtils.f4160a.b(commonSrcData.points)) {
            if (commonSrcData.points.size() > 2) {
                singleLineSrcData.start = commonSrcData.points.get(0);
                List<Gps> list = commonSrcData.points;
                singleLineSrcData.end = list.get(list.size() - 1);
                singleLineSrcData.lineList = new ArrayList(commonSrcData.points);
            } else if (commonSrcData.points.size() == 2) {
                singleLineSrcData.start = commonSrcData.points.get(0);
                List<Gps> list2 = commonSrcData.points;
                singleLineSrcData.end = list2.get(list2.size() - 1);
            } else if (commonSrcData.points.size() == 1) {
                singleLineSrcData.start = commonSrcData.points.get(0);
            }
            int i = commonSrcData.width;
            if (i <= 0) {
                i = this.lineWidth;
            }
            singleLineSrcData.lineWidth = i;
        } else {
            singleLineSrcData.lineWidth = this.lineWidth;
        }
        singleLineSrcData.isCurve = commonSrcData.shape == K3ShapeType.CURVE.getType();
        int i2 = singleLineSrcData.type;
        if (i2 == 1) {
            int i3 = commonSrcData.color;
            singleLineSrcData.lineColor = i3 != 0 ? i3 : -1;
        } else if (i2 != 10 && i2 != 12) {
            singleLineSrcData.lineColor = -1;
        } else {
            singleLineSrcData.lineColor = -8381;
        }
        singleLineSrcData.isDashed = z;
        return singleLineSrcData;
    }
}
