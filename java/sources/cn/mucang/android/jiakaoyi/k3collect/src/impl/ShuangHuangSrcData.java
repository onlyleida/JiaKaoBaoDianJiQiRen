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
public class ShuangHuangSrcData extends K3SrcData {
    public List<Gps> curveList1;
    public List<Gps> curveList2;
    public boolean isCurve;
    public boolean isDashed;
    public Gps line1End;
    public Gps line1Start;
    public Gps line2End;
    public Gps line2Start;
    public int lineColor;
    public int lineWidth;

    public ShuangHuangSrcData() {
        this.lineWidth = 15;
        this.lineColor = -8381;
        this.type = 2;
    }

    public static ShuangHuangSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (ShuangHuangSrcData) JSON.parseObject(str, ShuangHuangSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            ShuangHuangSrcData shuangHuangSrcData = new ShuangHuangSrcData();
            shuangHuangSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            shuangHuangSrcData.type = jSONObject.optInt("type");
            shuangHuangSrcData.lineWidth = jSONObject.optInt("lineWidth");
            shuangHuangSrcData.lineColor = jSONObject.optInt("lineColor");
            shuangHuangSrcData.isDashed = jSONObject.optBoolean("isDashed");
            shuangHuangSrcData.isCurve = jSONObject.optBoolean("isCurve");
            shuangHuangSrcData.line1Start = a.b(jSONObject.optJSONObject("line1Start"));
            shuangHuangSrcData.line1End = a.b(jSONObject.optJSONObject("line1End"));
            shuangHuangSrcData.line2Start = a.b(jSONObject.optJSONObject("line2Start"));
            shuangHuangSrcData.line2End = a.b(jSONObject.optJSONObject("line2End"));
            shuangHuangSrcData.curveList1 = a.c(jSONObject.optJSONArray("curveList1"));
            shuangHuangSrcData.curveList2 = a.c(jSONObject.optJSONArray("curveList2"));
            shuangHuangSrcData.lineColor = -8381;
            return shuangHuangSrcData;
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
        arrayList.add(this.line1Start);
        arrayList.add(this.line1End);
        arrayList.add(this.line2Start);
        arrayList.add(this.line2End);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public boolean isComplete() {
        List<Gps> list;
        if (this.line1Start == null || this.line1End == null || this.line2Start == null || this.line2End == null) {
            return false;
        }
        if (!this.isCurve) {
            return true;
        }
        List<Gps> list2 = this.curveList1;
        return (list2 == null || list2.isEmpty() || (list = this.curveList2) == null || list.isEmpty()) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData transform(int i) {
        CommonSrcData commonSrcData = new CommonSrcData();
        if (this.isCurve) {
            List<Gps> list = this.curveList1;
            if (list != null) {
                commonSrcData.points.addAll(list);
            }
            List<Gps> list2 = this.curveList2;
            if (list2 != null) {
                commonSrcData.points2.addAll(list2);
            }
        } else {
            commonSrcData.points.add(0, this.line1Start);
            commonSrcData.points.add(1, this.line1End);
            commonSrcData.points2.add(0, this.line2Start);
            commonSrcData.points2.add(1, this.line2End);
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
        ShuangHuangSrcData shuangHuangSrcData = new ShuangHuangSrcData();
        shuangHuangSrcData.id = this.id;
        shuangHuangSrcData.type = this.type;
        shuangHuangSrcData.line1Start = this.line1Start;
        shuangHuangSrcData.line1End = this.line1End;
        shuangHuangSrcData.line2Start = this.line2Start;
        shuangHuangSrcData.line2End = this.line2End;
        if (this.curveList1 != null) {
            shuangHuangSrcData.curveList1 = new ArrayList(this.curveList1);
        }
        if (this.curveList2 != null) {
            shuangHuangSrcData.curveList2 = new ArrayList(this.curveList2);
        }
        shuangHuangSrcData.isCurve = this.isCurve;
        shuangHuangSrcData.lineColor = this.lineColor;
        shuangHuangSrcData.isDashed = this.isDashed;
        shuangHuangSrcData.lineWidth = this.lineWidth;
        return shuangHuangSrcData;
    }

    public ShuangHuangSrcData(int i) {
        this(i, false);
    }

    public ShuangHuangSrcData(int i, boolean z) {
        this.lineWidth = 15;
        this.lineColor = -8381;
        this.type = 2;
        this.lineWidth = i;
        this.isDashed = z;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public ShuangHuangSrcData copy(CommonSrcData commonSrcData, boolean z) {
        boolean z2;
        ShuangHuangSrcData shuangHuangSrcData = new ShuangHuangSrcData();
        shuangHuangSrcData.id = commonSrcData.id;
        shuangHuangSrcData.type = commonSrcData.type;
        shuangHuangSrcData.isCurve = commonSrcData.points.size() > 2 || commonSrcData.points2.size() > 2;
        if (commonSrcData.points.size() == 2 && commonSrcData.points2.size() == 2) {
            shuangHuangSrcData.line1Start = commonSrcData.points.get(0);
            List<Gps> list = commonSrcData.points;
            shuangHuangSrcData.line1End = list.get(list.size() - 1);
        }
        K3SrcDataUtils k3SrcDataUtils = K3SrcDataUtils.f4160a;
        if (k3SrcDataUtils.b(commonSrcData.points)) {
            if (commonSrcData.points.size() > 0) {
                shuangHuangSrcData.line1Start = commonSrcData.points.get(0);
                z2 = true;
            } else {
                z2 = false;
            }
            if (commonSrcData.points.size() > 1) {
                List<Gps> list2 = commonSrcData.points;
                shuangHuangSrcData.line1End = list2.get(list2.size() - 1);
            }
        } else {
            z2 = false;
        }
        if (k3SrcDataUtils.b(commonSrcData.points2)) {
            if (commonSrcData.points2.size() > 0) {
                shuangHuangSrcData.line2Start = commonSrcData.points2.get(0);
                z2 = true;
            }
            if (commonSrcData.points2.size() > 1) {
                List<Gps> list3 = commonSrcData.points2;
                shuangHuangSrcData.line2End = list3.get(list3.size() - 1);
            }
        }
        if (shuangHuangSrcData.isCurve) {
            shuangHuangSrcData.curveList1 = new ArrayList(commonSrcData.points);
            shuangHuangSrcData.curveList2 = new ArrayList(commonSrcData.points2);
        }
        shuangHuangSrcData.lineColor = -8381;
        shuangHuangSrcData.isDashed = z;
        if (z2) {
            int i = commonSrcData.width;
            if (i <= 0) {
                i = this.lineWidth;
            }
            shuangHuangSrcData.lineWidth = i;
        } else {
            shuangHuangSrcData.lineWidth = this.lineWidth;
        }
        return shuangHuangSrcData;
    }
}
