package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class SafeCommandManager$advancedBrakeCommand$1 extends Lambda implements Function0<kotlin.v> {
    public static final SafeCommandManager$advancedBrakeCommand$1 INSTANCE = new SafeCommandManager$advancedBrakeCommand$1();

    SafeCommandManager$advancedBrakeCommand$1() {
        super(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final byte[] m64invoke$lambda0() {
        return new byte[0];
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().P(Cmd.OrderAdvancedBrake, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.j
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return SafeCommandManager$advancedBrakeCommand$1.m64invoke$lambda0();
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.d("下发高级解除刹车");
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ kotlin.v invoke() {
        invoke2();
        return kotlin.v.f15822a;
    }
}
