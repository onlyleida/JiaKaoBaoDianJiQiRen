package cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.acceptance.teach.TeachAcceptanceImpl$initAndStart$1", f = "TeachAcceptanceImpl.kt", l = {103}, m = "invokeSuspend")
final class TeachAcceptanceImpl$initAndStart$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ androidx.appcompat.app.d $activity;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ TeachAcceptanceImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachAcceptanceImpl$initAndStart$1(TeachAcceptanceImpl teachAcceptanceImpl, androidx.appcompat.app.d dVar, Continuation<? super TeachAcceptanceImpl$initAndStart$1> continuation) {
        super(2, continuation);
        this.this$0 = teachAcceptanceImpl;
        this.$activity = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TeachAcceptanceImpl$initAndStart$1(this.this$0, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TeachAcceptanceImpl$initAndStart$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        HashMap map;
        HashMap map2;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            map = new HashMap();
            HashMap map3 = new HashMap();
            TeachAcceptanceImpl teachAcceptanceImpl = this.this$0;
            this.L$0 = map;
            this.L$1 = map3;
            this.label = 1;
            if (teachAcceptanceImpl.H(map, map3, this) == objD) {
                return objD;
            }
            map2 = map3;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            HashMap map4 = (HashMap) this.L$1;
            map = (HashMap) this.L$0;
            k.b(obj);
            map2 = map4;
        }
        JLoadingDialog jLoadingDialog = this.this$0.j;
        if (jLoadingDialog != null) {
            DialogExtensionKt.b(jLoadingDialog);
        }
        if (map.isEmpty()) {
            u.h("教学数据为空");
            this.$activity.finish();
            return v.f15822a;
        }
        this.this$0.t(new cn.mucang.android.jiakaoyi.teachingk2.t0.b(String.valueOf(ExamSiteUtil.e(0L)), this.this$0.l, this.this$0.m, this.this$0.n, this.this$0.o, this.this$0.p, map, map2, 2));
        this.this$0.k = new TeachChecker(map);
        return v.f15822a;
    }
}
