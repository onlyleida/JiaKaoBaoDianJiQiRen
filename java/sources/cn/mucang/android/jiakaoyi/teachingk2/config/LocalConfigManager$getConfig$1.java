package cn.mucang.android.jiakaoyi.teachingk2.config;

import cn.mucang.jiakaoyi.uilib.model.ConfigModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager$getConfig$1", f = "LocalConfigManager.kt", l = {38}, m = "invokeSuspend")
final class LocalConfigManager$getConfig$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ boolean $needRetry;
    final /* synthetic */ Function0<v> $onLoaded;
    Object L$0;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager$getConfig$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager$getConfig$1$1", f = "LocalConfigManager.kt", l = {39}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ boolean $needRetry;
        final /* synthetic */ List<ConfigModel> $serverList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z, List<ConfigModel> list, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$needRetry = z;
            this.$serverList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$needRetry, this.$serverList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                k.b(obj);
                LocalConfigManager localConfigManager = LocalConfigManager.f6976a;
                boolean z = this.$needRetry;
                List<ConfigModel> list = this.$serverList;
                this.label = 1;
                if (localConfigManager.n(z, list, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalConfigManager$getConfig$1(Function0<v> function0, boolean z, Continuation<? super LocalConfigManager$getConfig$1> continuation) {
        super(2, continuation);
        this.$onLoaded = function0;
        this.$needRetry = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new LocalConfigManager$getConfig$1(this.$onLoaded, this.$needRetry, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((LocalConfigManager$getConfig$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List list;
        Object next;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            ArrayList arrayList = new ArrayList();
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$needRetry, arrayList, null);
            this.L$0 = arrayList;
            this.label = 1;
            if (f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                return objD;
            }
            list = arrayList;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) this.L$0;
            k.b(obj);
        }
        for (LocalConfig localConfig : LocalConfig.values()) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!r.a(((ConfigModel) next).getCode(), localConfig.getCode()));
            ConfigModel configModel = (ConfigModel) next;
            String value = configModel == null ? null : configModel.getValue();
            if (value != null) {
                localConfig.setValue(value);
            } else {
                value = localConfig.getValue();
            }
            LocalConfigManager.b.put(localConfig.getCode(), value);
        }
        Function0<v> function0 = this.$onLoaded;
        if (function0 != null) {
            function0.invoke();
        }
        return v.f15822a;
    }
}
