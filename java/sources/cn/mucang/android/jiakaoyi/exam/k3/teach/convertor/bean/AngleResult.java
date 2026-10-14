package cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean;

/* JADX INFO: loaded from: classes2.dex */
public class AngleResult {
    public double angle = Double.MAX_VALUE;

    public boolean isValid() {
        return this.angle < 100000.0d;
    }
}
