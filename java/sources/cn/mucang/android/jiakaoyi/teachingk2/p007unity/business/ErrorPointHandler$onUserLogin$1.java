package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecordApi;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.y;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.business.ErrorPointHandler$onUserLogin$1", f = "ErrorPointHandler.kt", l = {37}, m = "invokeSuspend")
final class ErrorPointHandler$onUserLogin$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    Object L$0;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.business.ErrorPointHandler$onUserLogin$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.business.ErrorPointHandler$onUserLogin$1$1", f = "ErrorPointHandler.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super Result<? extends v>>, Object> {
        final /* synthetic */ Ref$ObjectRef<List<ErrorPointModel>> $dataList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$ObjectRef<List<ErrorPointModel>> ref$ObjectRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$dataList = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$dataList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(i0 i0Var, Continuation<? super Result<? extends v>> continuation) {
            return invoke2(i0Var, (Continuation<? super Result<v>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(i0 i0Var, Continuation<? super Result<v>> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [T, java.util.List] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM139constructorimpl;
            b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            Ref$ObjectRef<List<ErrorPointModel>> ref$ObjectRef = this.$dataList;
            try {
                Result.Companion companion = Result.INSTANCE;
                ref$ObjectRef.element = new UserRecordApi().m(KeMu.K2);
                objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(k.a(th));
            }
            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null) {
                f.o(r.m("拉取易错点数据失败，", thM142exceptionOrNullimpl.getMessage()));
            }
            return Result.m138boximpl(objM139constructorimpl);
        }
    }

    ErrorPointHandler$onUserLogin$1(Continuation<? super ErrorPointHandler$onUserLogin$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ErrorPointHandler$onUserLogin$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ErrorPointHandler$onUserLogin$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Object objD = b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
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
            k.b(obj);
        }
        List list = (List) ref$ObjectRef.element;
        if (list != null) {
            y.A(list, kotlin.x.b.b(new Function1<ErrorPointModel, Comparable<?>>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.business.ErrorPointHandler$onUserLogin$1.2
                @Override // kotlin.jvm.functions.Function1
                public final Comparable<?> invoke(ErrorPointModel it) {
                    r.e(it, "it");
                    return Integer.valueOf(it.getStep());
                }
            }, new Function1<ErrorPointModel, Comparable<?>>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.business.ErrorPointHandler$onUserLogin$1.3
                @Override // kotlin.jvm.functions.Function1
                public final Comparable<?> invoke(ErrorPointModel it) {
                    r.e(it, "it");
                    return Boolean.valueOf(it.getReverse());
                }
            }));
        }
        if (com.blankj.utilcode.util.b.a((Collection) ref$ObjectRef.element)) {
            return v.f15822a;
        }
        List<ErrorPointModel> list2 = (List) ref$ObjectRef.element;
        if (list2 != null) {
            for (ErrorPointModel errorPointModel : list2) {
                String stepNameDesc = errorPointModel.getStepNameDesc();
                List arrayList = (List) ErrorPointHandler.b.get(stepNameDesc);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    ErrorPointHandler.b.put(stepNameDesc, arrayList);
                }
                arrayList.add(errorPointModel);
            }
        }
        return v.f15822a;
    }
}
