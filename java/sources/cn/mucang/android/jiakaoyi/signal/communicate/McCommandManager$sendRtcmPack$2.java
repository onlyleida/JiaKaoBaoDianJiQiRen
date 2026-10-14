package cn.mucang.android.jiakaoyi.signal.communicate;

import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class McCommandManager$sendRtcmPack$2 extends Lambda implements Function0<kotlin.v> {
    final /* synthetic */ byte[] $rtcmBytes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    McCommandManager$sendRtcmPack$2(byte[] bArr) {
        super(0);
        this.$rtcmBytes = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final byte[] m29invoke$lambda0(byte[] rtcmBytes) {
        kotlin.jvm.internal.r.e(rtcmBytes, "$rtcmBytes");
        v vVar = new v(true);
        vVar.h((short) rtcmBytes.length);
        vVar.d(rtcmBytes);
        return vVar.b();
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m mVarH = cn.mucang.android.jiakaoyi.signal.communicate.w.m.h();
        Cmd cmd = Cmd.OrderSendRtcm;
        final byte[] bArr = this.$rtcmBytes;
        mVarH.P(cmd, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.signal.communicate.j
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return McCommandManager$sendRtcmPack$2.m29invoke$lambda0(bArr);
            }
        });
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ kotlin.v invoke() {
        invoke2();
        return kotlin.v.f15822a;
    }
}
