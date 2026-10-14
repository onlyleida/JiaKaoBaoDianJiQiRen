package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class SafeCommandManager$brakeWithStrokeCommand$1 extends Lambda implements Function0<kotlin.v> {
    final /* synthetic */ String $brake;
    final /* synthetic */ byte $brakeDis;
    final /* synthetic */ byte $clutchDis;
    final /* synthetic */ byte $reason;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SafeCommandManager$brakeWithStrokeCommand$1(String str, byte b, byte b2, byte b3) {
        super(0);
        this.$brake = str;
        this.$brakeDis = b;
        this.$clutchDis = b2;
        this.$reason = b3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final byte[] m66invoke$lambda0(byte b, byte b2, byte b3) {
        return new byte[]{b, b2, b3};
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m mVarH = cn.mucang.android.jiakaoyi.signal.communicate.w.m.h();
        Cmd cmd = Cmd.OrderSpeedBrake;
        final byte b = this.$reason;
        final byte b2 = this.$brakeDis;
        final byte b3 = this.$clutchDis;
        mVarH.P(cmd, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.l
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return SafeCommandManager$brakeWithStrokeCommand$1.m66invoke$lambda0(b, b2, b3);
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.d("下发带行程" + this.$brake + ", 行程: " + ((int) this.$brakeDis) + ", 离合: " + ((int) this.$clutchDis));
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ kotlin.v invoke() {
        invoke2();
        return kotlin.v.f15822a;
    }
}
