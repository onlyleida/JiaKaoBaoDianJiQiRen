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
public class GridLineSrcData extends K3SrcData {
    public int gridLineInterval;
    public int gridLineWidth;
    public int lineWidth;
    public Gps p1;
    public Gps p2;
    public Gps p3;
    public Gps p4;

    public GridLineSrcData() {
        this.lineWidth = 20;
        this.gridLineWidth = 10;
        this.gridLineInterval = 150;
        this.type = 8;
    }

    public static GridLineSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (GridLineSrcData) JSON.parseObject(str, GridLineSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            GridLineSrcData gridLineSrcData = new GridLineSrcData();
            gridLineSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            gridLineSrcData.type = jSONObject.optInt("type");
            gridLineSrcData.p1 = a.b(jSONObject.optJSONObject("p1"));
            gridLineSrcData.p2 = a.b(jSONObject.optJSONObject("p2"));
            gridLineSrcData.p3 = a.b(jSONObject.optJSONObject("p3"));
            gridLineSrcData.p4 = a.b(jSONObject.optJSONObject("p4"));
            gridLineSrcData.lineWidth = jSONObject.optInt("lineWidth");
            gridLineSrcData.gridLineInterval = jSONObject.optInt("gridLineInterval");
            gridLineSrcData.gridLineWidth = jSONObject.optInt("gridLineWidth");
            return gridLineSrcData;
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
        arrayList.add(this.p1);
        arrayList.add(this.p2);
        arrayList.add(this.p3);
        arrayList.add(this.p4);
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public boolean isComplete() {
        return (this.p1 == null || this.p2 == null || this.p3 == null || this.p4 == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public CommonSrcData transform(int i) {
        CommonSrcData commonSrcData = new CommonSrcData();
        commonSrcData.points.add(0, this.p1);
        commonSrcData.points.add(1, this.p2);
        commonSrcData.points.add(2, this.p3);
        commonSrcData.points.add(3, this.p4);
        commonSrcData.type = i;
        commonSrcData.width = this.lineWidth;
        commonSrcData.width2 = this.gridLineWidth;
        commonSrcData.interval = this.gridLineInterval;
        commonSrcData.id = this.id;
        return commonSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public K3SrcData copy() {
        GridLineSrcData gridLineSrcData = new GridLineSrcData();
        gridLineSrcData.id = this.id;
        gridLineSrcData.type = this.type;
        gridLineSrcData.p1 = this.p1;
        gridLineSrcData.p2 = this.p2;
        gridLineSrcData.p3 = this.p3;
        gridLineSrcData.p4 = this.p4;
        gridLineSrcData.lineWidth = this.lineWidth;
        gridLineSrcData.gridLineWidth = this.gridLineWidth;
        gridLineSrcData.gridLineInterval = this.gridLineInterval;
        return gridLineSrcData;
    }

    public GridLineSrcData(int i, int i2, int i3) {
        this.lineWidth = 20;
        this.gridLineWidth = 10;
        this.gridLineInterval = 150;
        this.type = 8;
        this.lineWidth = i;
        this.gridLineWidth = i2;
        this.gridLineInterval = i3;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public GridLineSrcData copy(CommonSrcData commonSrcData, boolean z) {
        GridLineSrcData gridLineSrcData = new GridLineSrcData();
        gridLineSrcData.id = commonSrcData.id;
        gridLineSrcData.type = commonSrcData.type;
        if (K3SrcDataUtils.f4160a.b(commonSrcData.points)) {
            if (commonSrcData.points.size() > 0) {
                gridLineSrcData.p1 = commonSrcData.points.get(0);
            }
            if (commonSrcData.points.size() > 1) {
                gridLineSrcData.p2 = commonSrcData.points.get(1);
            }
            if (commonSrcData.points.size() > 2) {
                gridLineSrcData.p3 = commonSrcData.points.get(2);
            }
            if (commonSrcData.points.size() > 3) {
                gridLineSrcData.p4 = commonSrcData.points.get(3);
            }
            int i = commonSrcData.width;
            if (i <= 0) {
                i = this.lineWidth;
            }
            gridLineSrcData.lineWidth = i;
            int i2 = commonSrcData.width2;
            if (i2 <= 0) {
                i2 = this.gridLineWidth;
            }
            gridLineSrcData.gridLineWidth = i2;
            int i3 = commonSrcData.interval;
            if (i3 <= 0) {
                i3 = this.gridLineInterval;
            }
            gridLineSrcData.gridLineInterval = i3;
        } else {
            gridLineSrcData.lineWidth = this.lineWidth;
            gridLineSrcData.gridLineWidth = this.gridLineWidth;
            gridLineSrcData.gridLineInterval = this.gridLineInterval;
        }
        return gridLineSrcData;
    }
}
