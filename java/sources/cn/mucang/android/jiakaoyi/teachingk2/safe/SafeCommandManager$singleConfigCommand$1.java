package cn.mucang.android.jiakaoyi.teachingk2.safe;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class SafeCommandManager$singleConfigCommand$1 extends Lambda implements Function0<kotlin.v> {
    final /* synthetic */ byte $cmd;
    final /* synthetic */ int $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SafeCommandManager$singleConfigCommand$1(byte b, int i) {
        super(0);
        this.$cmd = b;
        this.$value = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final byte[] m77invoke$lambda0(byte b, int i) {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        vVar.c(b);
        if (cn.mucang.android.jiakaoyi.signal.com.s.b(b)) {
            short s = (short) ((i >>> 16) & ExifInterface.COLOR_SPACE_UNCALIBRATED);
            short s2 = (short) (i & ExifInterface.COLOR_SPACE_UNCALIBRATED);
            vVar.h(s);
            vVar.h(s2);
        } else {
            int iA = cn.mucang.android.jiakaoyi.signal.com.s.a(b);
            if (iA == 1) {
                vVar.c((byte) i);
            } else if (iA == 2) {
                vVar.h((short) i);
            } else if (iA == 4) {
                vVar.f(i);
            }
        }
        return vVar.b();
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m mVarH = cn.mucang.android.jiakaoyi.signal.communicate.w.m.h();
        Cmd cmd = Cmd.CmdSingleConfig;
        final byte b = this.$cmd;
        final int i = this.$value;
        mVarH.P(cmd, new cn.mucang.android.jiakaoyi.signal.com.x.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.w
            @Override // cn.mucang.android.jiakaoyi.signal.com.x.b
            public final byte[] a() {
                return SafeCommandManager$singleConfigCommand$1.m77invoke$lambda0(b, i);
            }
        });
        cn.mucang.android.jiakaoyi.framework.log.f.o("下发设置参数:" + ((int) this.$cmd) + ',' + this.$value);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ kotlin.v invoke() {
        invoke2();
        return kotlin.v.f15822a;
    }
}
