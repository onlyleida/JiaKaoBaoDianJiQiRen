package cn.mucang.android.jiakaoyi.mapcollect.collect.source;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class K2SrcData implements Serializable {
    public static final int MinReportDistance = 50;
    public String alias;
    public List<BindCarInfo> carList;
    public String key;
    public double lineWidth;
    public String name;
    public int stepId;
    public long time;
}
