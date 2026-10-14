package cn.mucang.jiakaoyi.uilib.deduct;

import androidx.fragment.app.FragmentManager;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.rule.dialog.ModifyRulesDialog;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$onCreate$7$1", f = "DeductSettingActivity.kt", l = {cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_GEAR_DATA2}, m = "invokeSuspend")
final class DeductSettingActivity$onCreate$7$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ DeductSettingActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$onCreate$7$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$onCreate$7$1$1", f = "DeductSettingActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ List<DeductEntity> $changeList;
        int label;
        final /* synthetic */ DeductSettingActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(List<? extends DeductEntity> list, DeductSettingActivity deductSettingActivity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$changeList = list;
            this.this$0 = deductSettingActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
        public static final void m107invokeSuspend$lambda0(DeductSettingActivity deductSettingActivity, Boolean it) {
            kotlin.jvm.internal.r.d(it, "it");
            if (it.booleanValue()) {
                DeductSettingViewModel deductSettingViewModel = deductSettingActivity.c;
                if (deductSettingViewModel != null) {
                    DeductSettingViewModel.C(deductSettingViewModel, null, 1, null);
                } else {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$changeList, this.this$0, continuation);
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
            List<DeductEntity> list = this.$changeList;
            if (list == null || !(!list.isEmpty())) {
                cn.mucang.android.core.utils.u.h("没有修改过数据");
            } else {
                ModifyRulesDialog.a aVar = ModifyRulesDialog.c;
                List<DeductEntity> list2 = this.$changeList;
                FragmentManager supportFragmentManager = this.this$0.getSupportFragmentManager();
                kotlin.jvm.internal.r.d(supportFragmentManager, "supportFragmentManager");
                final DeductSettingActivity deductSettingActivity = this.this$0;
                aVar.a(list2, true, supportFragmentManager, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.deduct.u
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj2) {
                        DeductSettingActivity$onCreate$7$1.AnonymousClass1.m107invokeSuspend$lambda0(deductSettingActivity, (Boolean) obj2);
                    }
                });
            }
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeductSettingActivity$onCreate$7$1(DeductSettingActivity deductSettingActivity, Continuation<? super DeductSettingActivity$onCreate$7$1> continuation) {
        super(2, continuation);
        this.this$0 = deductSettingActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new DeductSettingActivity$onCreate$7$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((DeductSettingActivity$onCreate$7$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            DeductSettingViewModel deductSettingViewModel = this.this$0.c;
            if (deductSettingViewModel == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            List<DeductEntity> listT = deductSettingViewModel.t();
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(listT, this.this$0, null);
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
