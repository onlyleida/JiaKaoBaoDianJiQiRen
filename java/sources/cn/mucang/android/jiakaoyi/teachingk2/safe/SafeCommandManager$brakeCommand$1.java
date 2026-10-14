package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class SafeCommandManager$brakeCommand$1 extends Lambda implements Function0<kotlin.v> {
    final /* synthetic */ byte $d;
    final /* synthetic */ String $tip;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SafeCommandManager$brakeCommand$1(String str, byte b) {
        super(0);
        this.$tip = str;
        this.$d = b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final byte[] m65invoke$lambda0(byte b) {
        return new byte[]{b};
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m mVarH = cn.mucang.android.jiakaoyi.signal.communicate.w.m.h();
        Cmd cmd = Cmd.OrderSendBrake;
        final byte b = this.$d;
        mVarH.P(cmd, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.k
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return SafeCommandManager$brakeCommand$1.m65invoke$lambda0(b);
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("下发", this.$tip));
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ kotlin.v invoke() {
        invoke2();
        return kotlin.v.f15822a;
    }
}
