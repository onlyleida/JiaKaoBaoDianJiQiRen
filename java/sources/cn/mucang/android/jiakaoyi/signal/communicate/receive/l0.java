package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import androidx.exifinterface.media.ExifInterface;

/* JADX INFO: loaded from: classes3.dex */
public class l0 extends m {
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5427d;

    public l0(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.b = rVar.l();
        this.c = rVar.l() & ExifInterface.COLOR_SPACE_UNCALIBRATED;
        int iO = rVar.o();
        this.f5427d = iO;
        this.f5428a = iO == 0;
    }

    public String toString() {
        return "ReceiverRtcmAckInfo{packageSize=" + this.b + ", index=" + this.c + ", state=" + this.f5427d + ", success=" + this.f5428a + ", type=" + this.type + '}';
    }
}
