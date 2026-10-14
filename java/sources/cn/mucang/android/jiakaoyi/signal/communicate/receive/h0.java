package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import com.mobile.auth.gatewayauth.ResultCode;

/* JADX INFO: loaded from: classes3.dex */
public class h0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f5424a;

    public h0(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        rVar.j();
        byte bE = rVar.e();
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        if (absSignalProvider == null || !absSignalProvider.useNonOldProtocol()) {
            this.f5424a = bE == 0 || bE == 16;
        } else {
            this.f5424a = bE == 0;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("消息0x24，响应");
        sb.append(this.f5424a ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
        cn.mucang.android.jiakaoyi.framework.log.f.f(sb.toString());
    }
}
