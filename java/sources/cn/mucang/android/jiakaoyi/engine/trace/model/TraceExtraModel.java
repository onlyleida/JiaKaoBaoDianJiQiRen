package cn.mucang.android.jiakaoyi.engine.trace.model;

/* JADX INFO: loaded from: classes2.dex */
public class TraceExtraModel extends TraceBaseModel {
    public int cm;
    public String mp = "";

    public TraceExtraModel set(int i, String str) {
        this.mp = str;
        this.cm = i;
        return this;
    }
}
