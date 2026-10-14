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
public class BanMaLineSrcData extends K3SrcData {
    public int interval;
    public int lineWidth;
    public Gps p1;
    public Gps p2;
    public Gps p3;
    public Gps p4;

    public BanMaLineSrcData() {
        this.lineWidth = 40;
        this.interval = 60;
        this.type = 5;
    }

    public static BanMaLineSrcData parse(String str) {
        try {
            if (str.contains("ref")) {
                return (BanMaLineSrcData) JSON.parseObject(str, BanMaLineSrcData.class);
            }
            JSONObject jSONObject = new JSONObject(str);
            BanMaLineSrcData banMaLineSrcData = new BanMaLineSrcData();
            banMaLineSrcData.id = Long.valueOf(jSONObject.optLong(TtmlNode.ATTR_ID));
            banMaLineSrcData.type = jSONObject.optInt("type");
            banMaLineSrcData.p1 = a.b(jSONObject.optJSONObject("p1"));
            banMaLineSrcData.p2 = a.b(jSONObject.optJSONObject("p2"));
            banMaLineSrcData.p3 = a.b(jSONObject.optJSONObject("p3"));
            banMaLineSrcData.p4 = a.b(jSONObject.optJSONObject("p4"));
            banMaLineSrcData.lineWidth = jSONObject.optInt("lineWidth");
            banMaLineSrcData.interval = jSONObject.optInt("interval");
            return banMaLineSrcData;
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
        commonSrcData.interval = this.interval;
        commonSrcData.id = this.id;
        return commonSrcData;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public K3SrcData copy() {
        BanMaLineSrcData banMaLineSrcData = new BanMaLineSrcData();
        banMaLineSrcData.id = this.id;
        banMaLineSrcData.type = this.type;
        banMaLineSrcData.p1 = this.p1;
        banMaLineSrcData.p2 = this.p2;
        banMaLineSrcData.p3 = this.p3;
        banMaLineSrcData.p4 = this.p4;
        banMaLineSrcData.lineWidth = this.lineWidth;
        banMaLineSrcData.interval = this.interval;
        return banMaLineSrcData;
    }

    public BanMaLineSrcData(int i, int i2) {
        this.lineWidth = 40;
        this.interval = 60;
        this.type = 5;
        this.lineWidth = i;
        this.interval = i2;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData
    public BanMaLineSrcData copy(CommonSrcData commonSrcData, boolean z) {
        BanMaLineSrcData banMaLineSrcData = new BanMaLineSrcData();
        banMaLineSrcData.id = commonSrcData.id;
        banMaLineSrcData.type = commonSrcData.type;
        if (K3SrcDataUtils.f4160a.b(commonSrcData.points)) {
            if (commonSrcData.points.size() > 0) {
                banMaLineSrcData.p1 = commonSrcData.points.get(0);
            }
            if (commonSrcData.points.size() > 1) {
                banMaLineSrcData.p2 = commonSrcData.points.get(1);
            }
            if (commonSrcData.points.size() > 2) {
                banMaLineSrcData.p3 = commonSrcData.points.get(2);
            }
            if (commonSrcData.points.size() > 3) {
                banMaLineSrcData.p4 = commonSrcData.points.get(3);
            }
            int i = commonSrcData.width;
            if (i <= 0) {
                i = this.lineWidth;
            }
            banMaLineSrcData.lineWidth = i;
            int i2 = commonSrcData.interval;
            if (i2 <= 0) {
                i2 = this.interval;
            }
            banMaLineSrcData.interval = i2;
        } else {
            banMaLineSrcData.lineWidth = this.lineWidth;
            banMaLineSrcData.interval = this.interval;
        }
        return banMaLineSrcData;
    }
}
