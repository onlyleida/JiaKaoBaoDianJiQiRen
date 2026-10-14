package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1", f = "TeachPictureDialog.kt", l = {67}, m = "invokeSuspend")
final class TeachPictureDialog$showMediaTip$1 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.i0, kotlin.coroutines.c<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ TeachPictureDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1$1", f = "TeachPictureDialog.kt", l = {54, 55}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.flow.d<? super Integer>, kotlin.coroutines.c<? super kotlin.v>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(kotlin.coroutines.c<? super AnonymousClass1> r2) {
            super(2, r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<kotlin.v> create(Object r2, kotlin.coroutines.c<?> r3) {
            AnonymousClass1 r0 = new AnonymousClass1(r3);
            r0.L$0 = r2;
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

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0058 -> B:18:0x005b). Please report as a decompilation issue!!! */
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
        L18:
            if (1 > r2) goto L20;
        L11:
            int r6 = r2 - 1;
            Integer r3 = kotlin.coroutines.jvm.internal.a.d(r2);
            r5.L$0 = r9;
            r5.I$0 = r6;
            r5.label = 1;
            if (r9.emit(r3, r5) != r0) goto L14;
            return r0;
        L14:
            r2 = r6;
        L15:
            r5.L$0 = r9;
            r5.I$0 = r2;
            r5.label = 2;
            if (kotlinx.coroutines.s0.a(1000, r5) != r0) goto L18;
            return r0;
        L20:
            return kotlin.v.f15822a;
        L8:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        L9:
            r2 = this.I$0;
            kotlinx.coroutines.flow.d r7 = (kotlinx.coroutines.flow.d) this.L$0;
            kotlin.k.b(r8);
            r9 = r7;
            r5 = this;
            goto L15
        L10:
            kotlin.k.b(r8);
            r9 = (kotlinx.coroutines.flow.d) this.L$0;
            r2 = 15;
            r5 = this;
            goto L11
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "cause", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1$2", f = "TeachPictureDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements kotlin.jvm.b.q<kotlinx.coroutines.flow.d<? super Integer>, Throwable, kotlin.coroutines.c<? super kotlin.v>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ TeachPictureDialog this$0;

        AnonymousClass2(TeachPictureDialog r1, kotlin.coroutines.c<? super AnonymousClass2> r2) {
            this.this$0 = r1;
            super(3, r2);
        }

        @Override // kotlin.jvm.b.q
        public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, Throwable r2, kotlin.coroutines.c<? super kotlin.v> r3) {
            return invoke2(r1, r2, r3);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r2, Throwable r3, kotlin.coroutines.c<? super kotlin.v> r4) {
            AnonymousClass2 r5 = new AnonymousClass2(this.this$0, r4);
            r5.L$0 = r3;
            return r5.invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r2) {
            kotlin.coroutines.intrinsics.a.d();
            if (this.label != 0) goto L10;
            kotlin.k.b(r2);
            if (((Throwable) this.L$0) != null) goto L8;
            DialogExtensionKt.b(this.this$0);
        L8:
            return kotlin.v.f15822a;
        L10:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    public static final class a implements kotlinx.coroutines.flow.d<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TeachPictureDialog f6771a;

        public a(TeachPictureDialog r1) {
            this.f6771a = r1;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Integer r2, kotlin.coroutines.c r3) {
            int r4 = r2.intValue();
            TeachPictureDialog.a(this.f6771a).timeTv.setText(r4 + "s 后自动关闭");
            return kotlin.v.f15822a;
        }
    }

    TeachPictureDialog$showMediaTip$1(TeachPictureDialog r1, kotlin.coroutines.c<? super TeachPictureDialog$showMediaTip$1> r2) {
        this.this$0 = r1;
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r2, kotlin.coroutines.c<?> r3) {
        return new TeachPictureDialog$showMediaTip$1(this.this$0, r3);
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(kotlinx.coroutines.i0 r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((TeachPictureDialog$showMediaTip$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
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
        kotlinx.coroutines.flow.c r7 = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.t(new AnonymousClass1(null)), new AnonymousClass2(this.this$0, null));
        a r3 = new a(this.this$0);
        this.label = 1;
        if (r7.d(r3, this) != r0) goto L12;
        return r0;
    }
}
