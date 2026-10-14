package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import cn.mucang.android.jiakaoyi.teachingk2.safe.api.SafeApi;
import cn.mucang.android.jiakaoyi.teachingk2.safe.api.SafeServerModel;
import com.alibaba.fastjson.JSON;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeModeManager$loadConfig$1", f = "SafeModeManager.kt", l = {88}, m = "invokeSuspend")
final class SafeModeManager$loadConfig$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    Object L$0;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeModeManager$loadConfig$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeModeManager$loadConfig$1$1", f = "SafeModeManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Ref$ObjectRef<List<SafeServerModel>> $list;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$ObjectRef<List<SafeServerModel>> ref$ObjectRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$list = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$list, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [T, java.util.List] */
        /* JADX WARN: Type inference failed for: r1v1, types: [T, java.util.List] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            try {
                this.$list.element = new SafeApi().m();
                String jSONString = JSON.toJSONString(this.$list.element);
                cn.mucang.android.jiakaoyi.framework.utils.i0.m(SafeModeManager.f7731a.g(), jSONString);
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("安全配置加载成功:", jSONString));
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.d("MainBusinessManager", e2.toString());
                cn.mucang.android.jiakaoyi.framework.log.f.o("加载安全配置失败");
                String strG = cn.mucang.android.jiakaoyi.framework.utils.i0.g(SafeModeManager.f7731a.g(), "");
                try {
                    this.$list.element = JSON.parseArray(strG, SafeServerModel.class);
                } catch (Exception unused) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("解析本地安全配置失败:", strG));
                }
            }
            return kotlin.v.f15822a;
        }
    }

    SafeModeManager$loadConfig$1(Continuation<? super SafeModeManager$loadConfig$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new SafeModeManager$loadConfig$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((SafeModeManager$loadConfig$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef2, null);
            this.L$0 = ref$ObjectRef2;
            this.label = 1;
            if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                return objD;
            }
            ref$ObjectRef = ref$ObjectRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) this.L$0;
            kotlin.k.b(obj);
        }
        SafeModeManager.c = SafeModeManager.f7731a.e();
        List list = (List) ref$ObjectRef.element;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SafeModeManager.f7731a.j((SafeServerModel) it.next());
            }
        }
        return kotlin.v.f15822a;
    }
}
