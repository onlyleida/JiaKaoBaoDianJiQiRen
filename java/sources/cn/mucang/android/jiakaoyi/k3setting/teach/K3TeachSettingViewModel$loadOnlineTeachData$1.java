package cn.mucang.android.jiakaoyi.k3setting.teach;

import android.util.Log;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import com.alibaba.fastjson.JSON;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$loadOnlineTeachData$1", f = "K3TeachSettingViewModel.kt", l = {cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_Ai_Hand_Result, cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_Ai_Hand_Result, cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_Ai_Hand_Result}, m = "invokeSuspend")
final class K3TeachSettingViewModel$loadOnlineTeachData$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ JLoadingDialog $jLoadingDialog;
    Object L$0;
    int label;
    final /* synthetic */ K3TeachSettingViewModel this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$loadOnlineTeachData$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$loadOnlineTeachData$1$1", f = "K3TeachSettingViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JLoadingDialog jLoadingDialog, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$jLoadingDialog, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.$jLoadingDialog.dismiss();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3TeachSettingViewModel$loadOnlineTeachData$1(K3TeachSettingViewModel k3TeachSettingViewModel, JLoadingDialog jLoadingDialog, Continuation<? super K3TeachSettingViewModel$loadOnlineTeachData$1> continuation) {
        super(2, continuation);
        this.this$0 = k3TeachSettingViewModel;
        this.$jLoadingDialog = jLoadingDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3TeachSettingViewModel$loadOnlineTeachData$1(this.this$0, this.$jLoadingDialog, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3TeachSettingViewModel$loadOnlineTeachData$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            try {
                try {
                    this.this$0.f4667e.clear();
                    this.this$0.r().clear();
                    List<K3TeachEntity> listP = new K3TeachApi().p(String.valueOf(this.this$0.getC().examSiteId));
                    cn.mucang.android.jiakaoyi.framework.log.f.o("考场 " + this.this$0.getC().examSiteId + " 教学数据：" + ((Object) JSON.toJSONString(listP)));
                    List<K3TeachEntity> listK = this.this$0.k(listP);
                    for (K3TeachEntity k3TeachEntity : listK) {
                        List list = this.this$0.f4667e;
                        K3TeachEntity k3TeachEntityCopy = k3TeachEntity.copy();
                        kotlin.jvm.internal.r.d(k3TeachEntityCopy, "k3TeachEntity.copy()");
                        list.add(k3TeachEntityCopy);
                    }
                    this.this$0.q().l(listK);
                    LoadingViewModel.h(this.this$0, true, null, 2, null);
                    d2 d2VarC = w0.c();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$jLoadingDialog, null);
                    this.label = 1;
                    if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                        return objD;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("采集时 获取教学数据报错：", Log.getStackTraceString(e2)));
                    LoadingViewModel.d(this.this$0, true, null, 2, null);
                    d2 d2VarC2 = w0.c();
                    AnonymousClass1 anonymousClass2 = new AnonymousClass1(this.$jLoadingDialog, null);
                    this.label = 2;
                    if (kotlinx.coroutines.f.c(d2VarC2, anonymousClass2, this) == objD) {
                        return objD;
                    }
                }
            } catch (Throwable th) {
                d2 d2VarC3 = w0.c();
                AnonymousClass1 anonymousClass3 = new AnonymousClass1(this.$jLoadingDialog, null);
                this.L$0 = th;
                this.label = 3;
                if (kotlinx.coroutines.f.c(d2VarC3, anonymousClass3, this) == objD) {
                    return objD;
                }
                throw th;
            }
        } else {
            if (i != 1 && i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Throwable th2 = (Throwable) this.L$0;
                kotlin.k.b(obj);
                throw th2;
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
