package cn.mucang.android.jiakaoyi.teachingk2.config;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager", f = "LocalConfigManager.kt", l = {73, 75}, m = "loadConfig")
final class LocalConfigManager$loadConfig$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LocalConfigManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalConfigManager$loadConfig$1(LocalConfigManager localConfigManager, Continuation<? super LocalConfigManager$loadConfig$1> continuation) {
        super(continuation);
        this.this$0 = localConfigManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.n(false, null, this);
    }
}
