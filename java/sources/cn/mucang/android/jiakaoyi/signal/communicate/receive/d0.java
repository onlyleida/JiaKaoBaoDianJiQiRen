package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import com.mobile.auth.gatewayauth.ResultCode;

/* JADX INFO: loaded from: classes3.dex */
public class d0 extends m {
    private String b;
    private int c;

    public d0(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.c = -1;
        int iO = rVar.o();
        this.c = iO;
        this.f5428a = iO == 0;
        if (iO == 0) {
            this.b = ResultCode.MSG_SUCCESS;
            return;
        }
        if (iO == 1) {
            this.b = ResultCode.MSG_FAILED;
            return;
        }
        if (iO == 2) {
            this.b = "档位顺序不对";
        } else if (iO == 3) {
            this.b = "档位点超过30";
        } else {
            this.b = "未知";
        }
    }

    public int a() {
        return this.c;
    }

    public String b() {
        return this.b;
    }
}
