package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1", f = "TeachPictureDialog.kt", l = {67}, m = "invokeSuspend")
final class TeachPictureDialog$showMediaTip$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ TeachPictureDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1$1", f = "TeachPictureDialog.kt", l = {54, 55}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super Integer>, Continuation<? super kotlin.v>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(dVar, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x004a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:14:0x004b  */
        /* JADX WARN: Code duplicated, block: B:17:0x005a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:19:0x005d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0058 -> B:18:0x005b). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:19:0x005d
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
                int r1 = r7.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2e
                if (r1 == r3) goto L22
                if (r1 != r2) goto L1a
                int r1 = r7.I$0
                java.lang.Object r4 = r7.L$0
                kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) r4
                kotlin.k.b(r8)
                r8 = r4
                r4 = r7
                goto L5b
            L1a:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L22:
                int r1 = r7.I$0
                java.lang.Object r4 = r7.L$0
                kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) r4
                kotlin.k.b(r8)
                r8 = r4
                r4 = r7
                goto L4c
            L2e:
                kotlin.k.b(r8)
                java.lang.Object r8 = r7.L$0
                kotlinx.coroutines.flow.d r8 = (kotlinx.coroutines.flow.d) r8
                r1 = 15
                r4 = r7
            L38:
                int r5 = r1 + (-1)
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.a.d(r1)
                r4.L$0 = r8
                r4.I$0 = r5
                r4.label = r3
                java.lang.Object r1 = r8.emit(r1, r4)
                if (r1 != r0) goto L4b
                return r0
            L4b:
                r1 = r5
            L4c:
                r5 = 1000(0x3e8, double:4.94E-321)
                r4.L$0 = r8
                r4.I$0 = r1
                r4.label = r2
                java.lang.Object r5 = kotlinx.coroutines.s0.a(r5, r4)
                if (r5 != r0) goto L5b
                return r0
            L5b:
                if (r3 <= r1) goto L38
                kotlin.v r8 = kotlin.v.f15822a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "cause", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$showMediaTip$1$2", f = "TeachPictureDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.d<? super Integer>, Throwable, Continuation<? super kotlin.v>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ TeachPictureDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(TeachPictureDialog teachPictureDialog, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = teachPictureDialog;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Throwable th, Continuation<? super kotlin.v> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = th;
            return anonymousClass2.invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            if (((Throwable) this.L$0) == null) {
                DialogExtensionKt.b(this.this$0);
            }
            return kotlin.v.f15822a;
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    public static final class a implements kotlinx.coroutines.flow.d<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TeachPictureDialog f6771a;

        public a(TeachPictureDialog teachPictureDialog) {
            this.f6771a = teachPictureDialog;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Integer num, Continuation continuation) {
            int iIntValue = num.intValue();
            this.f6771a.b().timeTv.setText(iIntValue + "s 后自动关闭");
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachPictureDialog$showMediaTip$1(TeachPictureDialog teachPictureDialog, Continuation<? super TeachPictureDialog$showMediaTip$1> continuation) {
        super(2, continuation);
        this.this$0 = teachPictureDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new TeachPictureDialog$showMediaTip$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((TeachPictureDialog$showMediaTip$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            kotlinx.coroutines.flow.c cVarX = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.t(new AnonymousClass1(null)), new AnonymousClass2(this.this$0, null));
            a aVar = new a(this.this$0);
            this.label = 1;
            if (cVarX.d(aVar, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
