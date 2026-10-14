package cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.StepChecker;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
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
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.CircleAcceptanceImpl$initAndStart$1", f = "CircleAcceptanceImpl.kt", l = {Opcodes.FCMPL}, m = "invokeSuspend")
final class CircleAcceptanceImpl$initAndStart$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ androidx.appcompat.app.d $activity;
    Object L$0;
    int label;
    final /* synthetic */ CircleAcceptanceImpl this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.CircleAcceptanceImpl$initAndStart$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.CircleAcceptanceImpl$initAndStart$1$1", f = "CircleAcceptanceImpl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Ref$ObjectRef<CircleSaveData> $data;
        int label;
        final /* synthetic */ CircleAcceptanceImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$ObjectRef<CircleSaveData> ref$ObjectRef, CircleAcceptanceImpl circleAcceptanceImpl, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$data = ref$ObjectRef;
            this.this$0 = circleAcceptanceImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$data, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [T, cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.CircleSaveData] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            this.$data.element = this.this$0.K();
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CircleAcceptanceImpl$initAndStart$1(CircleAcceptanceImpl circleAcceptanceImpl, androidx.appcompat.app.d dVar, Continuation<? super CircleAcceptanceImpl$initAndStart$1> continuation) {
        super(2, continuation);
        this.this$0 = circleAcceptanceImpl;
        this.$activity = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final void m32invokeSuspend$lambda0(CircleAcceptanceImpl circleAcceptanceImpl, androidx.appcompat.app.d dVar, View view) {
        circleAcceptanceImpl.E();
        circleAcceptanceImpl.T(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: invokeSuspend$lambda-1, reason: not valid java name */
    public static final void m33invokeSuspend$lambda1(Ref$ObjectRef ref$ObjectRef, CircleAcceptanceImpl circleAcceptanceImpl, androidx.appcompat.app.d dVar, View view) {
        CircleSaveData circleSaveData = (CircleSaveData) ref$ObjectRef.element;
        if (cn.mucang.android.core.utils.g.e(circleSaveData == null ? null : circleSaveData.getBrakeMap())) {
            HashMap map = circleAcceptanceImpl.k;
            CircleSaveData circleSaveData2 = (CircleSaveData) ref$ObjectRef.element;
            HashMap<String, String> brakeMap = circleSaveData2 == null ? null : circleSaveData2.getBrakeMap();
            r.c(brakeMap);
            map.putAll(brakeMap);
        }
        CircleSaveData circleSaveData3 = (CircleSaveData) ref$ObjectRef.element;
        if (cn.mucang.android.core.utils.g.e(circleSaveData3 == null ? null : circleSaveData3.getFaultMap())) {
            HashMap map2 = circleAcceptanceImpl.j;
            CircleSaveData circleSaveData4 = (CircleSaveData) ref$ObjectRef.element;
            HashMap<String, Long> faultMap = circleSaveData4 == null ? null : circleSaveData4.getFaultMap();
            r.c(faultMap);
            map2.putAll(faultMap);
        }
        CircleSaveData circleSaveData5 = (CircleSaveData) ref$ObjectRef.element;
        if (cn.mucang.android.core.utils.g.d(circleSaveData5 == null ? null : circleSaveData5.getGpsDurations())) {
            List list = circleAcceptanceImpl.l;
            CircleSaveData circleSaveData6 = (CircleSaveData) ref$ObjectRef.element;
            List<cn.mucang.android.jiakaoyi.framework.base.model.b<Long, Long>> gpsDurations = circleSaveData6 == null ? null : circleSaveData6.getGpsDurations();
            r.c(gpsDurations);
            list.addAll(gpsDurations);
        }
        CircleSaveData circleSaveData7 = (CircleSaveData) ref$ObjectRef.element;
        if (cn.mucang.android.core.utils.g.d(circleSaveData7 == null ? null : circleSaveData7.getTriggerBoundarySet())) {
            StepChecker stepChecker = circleAcceptanceImpl.i;
            CircleSaveData circleSaveData8 = (CircleSaveData) ref$ObjectRef.element;
            HashSet<String> triggerBoundarySet = circleSaveData8 == null ? null : circleSaveData8.getTriggerBoundarySet();
            r.c(triggerBoundarySet);
            stepChecker.f(triggerBoundarySet);
        }
        CircleSaveData circleSaveData9 = (CircleSaveData) ref$ObjectRef.element;
        if (cn.mucang.android.core.utils.g.d(circleSaveData9 == null ? null : circleSaveData9.getGpsModelList())) {
            circleAcceptanceImpl.m.clear();
            List list2 = circleAcceptanceImpl.m;
            CircleSaveData circleSaveData10 = (CircleSaveData) ref$ObjectRef.element;
            List<CircleGpsItem> gpsModelList = circleSaveData10 != null ? circleSaveData10.getGpsModelList() : null;
            r.c(gpsModelList);
            list2.addAll(gpsModelList);
        }
        circleAcceptanceImpl.T(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new CircleAcceptanceImpl$initAndStart$1(this.this$0, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((CircleAcceptanceImpl$initAndStart$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        final Ref$ObjectRef ref$ObjectRef;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef2, this.this$0, null);
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
        JLoadingDialog jLoadingDialog = this.this$0.r;
        if (jLoadingDialog != null) {
            DialogExtensionKt.b(jLoadingDialog);
        }
        if (ref$ObjectRef.element != 0) {
            final androidx.appcompat.app.d dVar = this.$activity;
            final CircleAcceptanceImpl circleAcceptanceImpl = this.this$0;
            new JCommonDialog(dVar, new JCommonDialog.DialogParams("温馨提示", "当前有跑圈暂存数据，是否继续？", "重新开始", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CircleAcceptanceImpl$initAndStart$1.m32invokeSuspend$lambda0(circleAcceptanceImpl, dVar, view);
                }
            }, "继续", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CircleAcceptanceImpl$initAndStart$1.m33invokeSuspend$lambda1(ref$ObjectRef, circleAcceptanceImpl, dVar, view);
                }
            }, false)).show();
        } else {
            this.this$0.T(this.$activity);
        }
        return v.f15822a;
    }
}
