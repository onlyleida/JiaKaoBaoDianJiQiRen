package cn.mucang.jiakaoyi.sundial.client;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import cn.mucang.android.core.config.MucangConfig;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$showMiniWindow$1", f = "SundialClient.kt", l = {}, m = "invokeSuspend")
final class SundialClient$showMiniWindow$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;

    SundialClient$showMiniWindow$1(Continuation<? super SundialClient$showMiniWindow$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new SundialClient$showMiniWindow$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((SundialClient$showMiniWindow$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        if (!SundialClient.f9112d) {
            SundialClient sundialClient = SundialClient.f9111a;
            SundialClient.f9112d = sundialClient.B();
            if (!SundialClient.f9112d) {
                return v.f15822a;
            }
            sundialClient.w();
        }
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(MucangConfig.getContext())) {
            SundialClient.j.l();
            return v.f15822a;
        }
        MucangConfig.getContext().startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION").addFlags(268435456).setData(Uri.parse(r.m("package:", MucangConfig.getContext().getPackageName()))));
        return v.f15822a;
    }
}
