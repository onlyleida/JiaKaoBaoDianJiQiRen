package cn.mucang.android.jiakaoyi.framework.base.dialog;

import cn.mucang.android.jiakaoyi.framework.databinding.GpsMissCommonBinding;
import com.alibaba.fastjson.asm.Opcodes;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7", f = "CountDownDialog.kt", l = {Opcodes.FCMPL}, m = "invokeSuspend")
final class CountDownDialog$setData$7 extends SuspendLambda implements kotlin.jvm.b.p<i0, kotlin.coroutines.c<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ CountDownDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$1", f = "CountDownDialog.kt", l = {78, 79}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.flow.d<? super Integer>, kotlin.coroutines.c<? super kotlin.v>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ CountDownDialog this$0;

        AnonymousClass1(CountDownDialog r1, kotlin.coroutines.c<? super AnonymousClass1> r2) {
            this.this$0 = r1;
            super(2, r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
            AnonymousClass1 r0 = new AnonymousClass1(this.this$0, r4);
            r0.L$0 = r3;
            return r0;
        }

        @Override // kotlin.jvm.b.p
        public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, kotlin.coroutines.c<? super kotlin.v> r2) {
            return invoke2(r1, r2);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r1, kotlin.coroutines.c<? super kotlin.v> r2) {
            return ((AnonymousClass1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0062 -> B:20:0x0065). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r8) {
            Object r0 = kotlin.coroutines.intrinsics.a.d();
            int r1 = this.label;
            if (r1 == 0) goto L10;
            if (r1 == 1) goto L9;
            if (r1 != 2) goto L8;
            int r2 = this.I$0;
            kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) this.L$0;
            kotlin.k.b(r8);
            kotlinx.coroutines.flow.d r9 = r4;
            AnonymousClass1 r5 = this;
        L20:
            if (1 > r2) goto L22;
        L13:
            int r6 = r2 - 1;
            Integer r3 = kotlin.coroutines.jvm.internal.a.d(r2);
            r5.L$0 = r9;
            r5.I$0 = r6;
            r5.label = 1;
            if (r9.emit(r3, r5) != r0) goto L16;
            return r0;
        L16:
            r2 = r6;
        L17:
            r5.L$0 = r9;
            r5.I$0 = r2;
            r5.label = 2;
            if (s0.a(1000, r5) != r0) goto L20;
            return r0;
        L22:
            return kotlin.v.f15822a;
        L8:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        L9:
            r2 = this.I$0;
            kotlinx.coroutines.flow.d r7 = (kotlinx.coroutines.flow.d) this.L$0;
            kotlin.k.b(r8);
            r9 = r7;
            r5 = this;
            goto L17
        L10:
            kotlin.k.b(r8);
            r9 = (kotlinx.coroutines.flow.d) this.L$0;
            r2 = CountDownDialog.a(this.this$0).i();
            if (1 > r2) goto L22;
            r5 = this;
            goto L13
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$2", f = "CountDownDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements kotlin.jvm.b.q<kotlinx.coroutines.flow.d<? super Integer>, Throwable, kotlin.coroutines.c<? super kotlin.v>, Object> {
        int label;
        final /* synthetic */ CountDownDialog this$0;

        AnonymousClass2(CountDownDialog r1, kotlin.coroutines.c<? super AnonymousClass2> r2) {
            this.this$0 = r1;
            super(3, r2);
        }

        @Override // kotlin.jvm.b.q
        public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, Throwable r2, kotlin.coroutines.c<? super kotlin.v> r3) {
            return invoke2(r1, r2, r3);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r1, Throwable r2, kotlin.coroutines.c<? super kotlin.v> r3) {
            return new AnonymousClass2(this.this$0, r3).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r2) {
            kotlin.coroutines.intrinsics.a.d();
            if (this.label != 0) goto L13;
            kotlin.k.b(r2);
            if (CountDownDialog.a(this.this$0).i() != 1) goto L11;
            cn.mucang.android.jiakaoyi.framework.h.b<Boolean> r3 = CountDownDialog.a(this.this$0).c();
            if (r3 == null) goto L11;
            r3.callback(kotlin.coroutines.jvm.internal.a.a(true));
        L11:
            return kotlin.v.f15822a;
        L13:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    public static final class a implements kotlinx.coroutines.flow.d<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CountDownDialog f3370a;

        public a(CountDownDialog r1) {
            this.f3370a = r1;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Integer r1, kotlin.coroutines.c r2) {
            int r3 = r1.intValue();
            CountDownDialog.a(this.f3370a).k(r3);
            GpsMissCommonBinding r4 = CountDownDialog.b(this.f3370a);
            if (r4 == null) goto L6;
            r4.secondText.setText(String.valueOf(r3));
            return kotlin.v.f15822a;
        L6:
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    CountDownDialog$setData$7(CountDownDialog r1, kotlin.coroutines.c<? super CountDownDialog$setData$7> r2) {
        this.this$0 = r1;
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r2, kotlin.coroutines.c<?> r3) {
        return new CountDownDialog$setData$7(this.this$0, r3);
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((CountDownDialog$setData$7) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r6) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L8;
        if (r1 != 1) goto L7;
        kotlin.k.b(r6);
    L12:
        return kotlin.v.f15822a;
    L7:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L8:
        kotlin.k.b(r6);
        kotlinx.coroutines.flow.c r7 = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.t(new AnonymousClass1(this.this$0, null)), new AnonymousClass2(this.this$0, null));
        a r3 = new a(this.this$0);
        this.label = 1;
        if (r7.d(r3, this) != r0) goto L12;
        return r0;
    }
}
