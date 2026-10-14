package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import com.mobile.auth.gatewayauth.ResultCode;

/* JADX INFO: loaded from: classes3.dex */
public class s extends m {
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.communicate.r f5441e;

    public s(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        int i2;
        super(i, rVar);
        this.c = -1;
        boolean z = false;
        this.f5440d = 0;
        int iO = rVar.o();
        this.c = iO;
        this.f5441e = rVar;
        int i3 = (iO & 240) >> 4;
        int i4 = iO & 15;
        this.f5440d = i3;
        cn.mucang.android.jiakaoyi.framework.log.f.o("0x77 code " + this.c + " ; high_four " + i3 + " ; low_four " + i4);
        if (i4 == 0 && ((i2 = this.f5440d) == 0 || i2 == 1)) {
            z = true;
        }
        this.f5428a = z;
        if (z) {
            this.b = ResultCode.MSG_SUCCESS;
            return;
        }
        if (i4 == 1) {
            this.b = ResultCode.MSG_FAILED;
            return;
        }
        int i5 = this.f5440d;
        if (i5 == 0 || i5 == 1) {
            this.b = "未知";
        } else {
            this.b = "算法类型错误";
        }
    }

    public int a() {
        return this.f5440d;
    }

    public cn.mucang.android.jiakaoyi.signal.communicate.r b() {
        return this.f5441e;
    }

    public String c() {
        return this.b;
    }
}
