package cn.mucang.jiakaoyi.uilib.language;

import android.app.Application;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.jiakaoyi.uilib.e;
import cn.mucang.sundial.library.activity.BaseActivity;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.language.LanguageSelectDialog$onCreate$1$1", f = "LanguageSelectDialog.kt", l = {69, 71}, m = "invokeSuspend")
final class LanguageSelectDialog$onCreate$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;

    LanguageSelectDialog$onCreate$1$1(Continuation<? super LanguageSelectDialog$onCreate$1$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new LanguageSelectDialog$onCreate$1$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((LanguageSelectDialog$onCreate$1$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                k.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
            }
            System.exit(0);
            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
        }
        k.b(obj);
        this.label = 1;
        if (s0.a(BaseActivity.INTERVAL, this) == objD) {
            return objD;
        }
        Application context = MucangConfig.getContext();
        e eVar = context instanceof e ? (e) context : null;
        if (eVar != null) {
            eVar.c();
        }
        this.label = 2;
        if (s0.a(200L, this) == objD) {
            return objD;
        }
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }
}
