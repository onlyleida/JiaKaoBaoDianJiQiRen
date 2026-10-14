package cn.mucang.android.jiakaoyi.k3setting.teach;

import android.view.View;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$init$9$1", f = "K3TeachSettingActivity.kt", l = {203}, m = "invokeSuspend")
final class K3TeachSettingActivity$init$9$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ K3TeachSettingActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$init$9$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$init$9$1$1", f = "K3TeachSettingActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ List<TeachData> $modifyData;
        int label;
        final /* synthetic */ K3TeachSettingActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<TeachData> list, K3TeachSettingActivity k3TeachSettingActivity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$modifyData = list;
            this.this$0 = k3TeachSettingActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
        public static final void m14invokeSuspend$lambda0(K3TeachSettingActivity k3TeachSettingActivity, View view) {
            K3TeachSettingViewModel k3TeachSettingViewModel = k3TeachSettingActivity.b;
            if (k3TeachSettingViewModel != null) {
                k3TeachSettingViewModel.t(null);
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$modifyData, this.this$0, continuation);
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
            List<TeachData> list = this.$modifyData;
            if (list == null || !(!list.isEmpty())) {
                FragmentManager supportFragmentManager = this.this$0.getSupportFragmentManager();
                kotlin.jvm.internal.r.d(supportFragmentManager, "this@K3TeachSettingActivity.supportFragmentManager");
                AddTeachStepDialog.a aVar = AddTeachStepDialog.f4656e;
                K3TeachSettingViewModel k3TeachSettingViewModel = this.this$0.b;
                if (k3TeachSettingViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
                String strValueOf = String.valueOf(k3TeachSettingViewModel.getC().examSiteId);
                final K3TeachSettingActivity k3TeachSettingActivity = this.this$0;
                aVar.a(supportFragmentManager, strValueOf, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity.init.9.1.1.2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        K3TeachSettingViewModel k3TeachSettingViewModel2 = k3TeachSettingActivity.b;
                        if (k3TeachSettingViewModel2 != null) {
                            k3TeachSettingViewModel2.s();
                        } else {
                            kotlin.jvm.internal.r.u("viewModel");
                            throw null;
                        }
                    }
                });
            } else {
                final K3TeachSettingActivity k3TeachSettingActivity2 = this.this$0;
                new JCommonDialog(k3TeachSettingActivity2, new JCommonDialog.DialogParams("提示", "发现有数据修改,请先保存", "取消", null, "保存", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.p
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        K3TeachSettingActivity$init$9$1.AnonymousClass1.m14invokeSuspend$lambda0(k3TeachSettingActivity2, view);
                    }
                }, false)).show();
            }
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3TeachSettingActivity$init$9$1(K3TeachSettingActivity k3TeachSettingActivity, Continuation<? super K3TeachSettingActivity$init$9$1> continuation) {
        super(2, continuation);
        this.this$0 = k3TeachSettingActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3TeachSettingActivity$init$9$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3TeachSettingActivity$init$9$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            K3TeachSettingViewModel k3TeachSettingViewModel = this.this$0.b;
            if (k3TeachSettingViewModel == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            List<TeachData> listP = k3TeachSettingViewModel.p();
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(listP, this.this$0, null);
            this.label = 1;
            if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
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
