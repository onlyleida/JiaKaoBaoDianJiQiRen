package cn.mucang.android.jiakaoyi.teachingk2.error;

import android.location.Location;
import cn.mucang.android.jiakaoyi.framework.p002e.o;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker$initTime$1", f = "GlobalChecker.kt", l = {99}, m = "invokeSuspend")
final class GlobalChecker$initTime$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker$initTime$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker$initTime$1$1", f = "GlobalChecker.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Ref$ObjectRef<int[]> $rise;
        final /* synthetic */ Ref$ObjectRef<int[]> $set;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$ObjectRef<int[]> ref$ObjectRef, Ref$ObjectRef<int[]> ref$ObjectRef2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$rise = ref$ObjectRef;
            this.$set = ref$ObjectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$rise, this.$set, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [T, int[]] */
        /* JADX WARN: Type inference failed for: r7v4, types: [T, int[]] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            Location location = o.f3441a;
            this.$rise.element = q0.c(location.getLatitude(), location.getLongitude(), true);
            this.$set.element = q0.c(location.getLatitude(), location.getLongitude(), false);
            return v.f15822a;
        }
    }

    GlobalChecker$initTime$1(Continuation<? super GlobalChecker$initTime$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new GlobalChecker$initTime$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((GlobalChecker$initTime$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            ref$ObjectRef = new Ref$ObjectRef();
            Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef, ref$ObjectRef3, null);
            this.L$0 = ref$ObjectRef;
            this.L$1 = ref$ObjectRef3;
            this.label = 1;
            if (f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                return objD;
            }
            ref$ObjectRef2 = ref$ObjectRef3;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef2 = (Ref$ObjectRef) this.L$1;
            ref$ObjectRef = (Ref$ObjectRef) this.L$0;
            k.b(obj);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("计算日出：");
        int[] iArr = (int[]) ref$ObjectRef.element;
        sb.append(iArr == null ? null : ArraysKt___ArraysKt.A(iArr, 0));
        sb.append(',');
        int[] iArr2 = (int[]) ref$ObjectRef.element;
        sb.append(iArr2 == null ? null : ArraysKt___ArraysKt.A(iArr2, 1));
        sb.append(" 日落：");
        int[] iArr3 = (int[]) ref$ObjectRef2.element;
        sb.append(iArr3 == null ? null : ArraysKt___ArraysKt.A(iArr3, 0));
        sb.append(',');
        int[] iArr4 = (int[]) ref$ObjectRef2.element;
        sb.append(iArr4 != null ? ArraysKt___ArraysKt.A(iArr4, 1) : null);
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        T t = ref$ObjectRef.element;
        if (t != 0) {
            GlobalChecker globalChecker = GlobalChecker.f7068a;
            GlobalChecker.f7070e = ((((int[]) t)[0] + 1) * 60) + ((int[]) t)[1];
        }
        T t2 = ref$ObjectRef2.element;
        if (t2 != 0) {
            GlobalChecker globalChecker2 = GlobalChecker.f7068a;
            GlobalChecker.f7071f = ((((int[]) t2)[0] - 1) * 60) + ((int[]) t2)[1];
        }
        return v.f15822a;
    }
}
