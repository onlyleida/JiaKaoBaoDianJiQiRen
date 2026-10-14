package cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean;

/* JADX INFO: loaded from: classes2.dex */
public class OffsetResult {
    public double offset = Double.MAX_VALUE;

    public boolean isValid() {
        return this.offset < 100000.0d;
    }
}
