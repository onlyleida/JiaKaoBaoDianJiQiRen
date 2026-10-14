package cn.mucang.sundial.library.sdk.coach;

import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.s;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.activity.AdminCheckActivity;
import cn.mucang.sundial.library.databinding.TtActivityCoachLoginBinding;
import cn.mucang.sundial.library.util.ClickController;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.Utils;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.f;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroid/view/View;", "kotlin.jvm.PlatformType", "it", "Lkotlin/v;", "onClick", "(Landroid/view/View;)V", "cn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$1$3", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class CoachLoginActivity$initView$$inlined$with$lambda$3 implements View.OnClickListener {
    final /* synthetic */ ClickController $crl;
    final /* synthetic */ TtActivityCoachLoginBinding $this_with;
    final /* synthetic */ CoachLoginActivity this$0;

    CoachLoginActivity$initView$$inlined$with$lambda$3(TtActivityCoachLoginBinding ttActivityCoachLoginBinding, ClickController clickController, CoachLoginActivity coachLoginActivity) {
        this.$this_with = ttActivityCoachLoginBinding;
        this.$crl = clickController;
        this.this$0 = coachLoginActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.$crl.click(new ClickController.ClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$initView$$inlined$with$lambda$3.1

            /* JADX INFO: renamed from: cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$initView$$inlined$with$lambda$3$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "cn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$1$3$1$onClickCountFull$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
            @DebugMetadata(c = "cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$initView$1$3$1$onClickCountFull$1", f = "CoachLoginActivity.kt", l = {70}, m = "invokeSuspend")
            static final class C01791 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
                int label;

                /* JADX INFO: renamed from: cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$initView$$inlined$with$lambda$3$1$1$1, reason: invalid class name and collision with other inner class name */
                @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/i0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "cn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$1$3$1$onClickCountFull$1$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
                @DebugMetadata(c = "cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$initView$1$3$1$onClickCountFull$1$1", f = "CoachLoginActivity.kt", l = {}, m = "invokeSuspend")
                static final class C01801 extends SuspendLambda implements Function2<i0, Continuation<? super Boolean>, Object> {
                    int label;

                    C01801(Continuation continuation) {
                        super(2, continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<v> create(Object obj, Continuation<?> completion) {
                        r.e(completion, "completion");
                        return new C01801(completion);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(i0 i0Var, Continuation<? super Boolean> continuation) {
                        return ((C01801) create(i0Var, continuation)).invokeSuspend(v.f15822a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) throws Throwable {
                        b.d();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        k.b(obj);
                        return a.a(Utils.initConnection());
                    }
                }

                C01791(Continuation continuation) {
                    super(2, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<v> create(Object obj, Continuation<?> completion) {
                    r.e(completion, "completion");
                    return AnonymousClass1.this.new C01791(completion);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                    return ((C01791) create(i0Var, continuation)).invokeSuspend(v.f15822a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    Object objD = b.d();
                    int i = this.label;
                    if (i == 0) {
                        k.b(obj);
                        TextView titleIv = CoachLoginActivity$initView$$inlined$with$lambda$3.this.$this_with.titleIv;
                        r.d(titleIv, "titleIv");
                        if (titleIv.isSelected()) {
                            return v.f15822a;
                        }
                        TextView titleIv2 = CoachLoginActivity$initView$$inlined$with$lambda$3.this.$this_with.titleIv;
                        r.d(titleIv2, "titleIv");
                        titleIv2.setSelected(true);
                        CoroutineDispatcher coroutineDispatcherB = w0.b();
                        C01801 c01801 = new C01801(null);
                        this.label = 1;
                        obj = f.c(coroutineDispatcherB, c01801, this);
                        if (obj == objD) {
                            return objD;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        k.b(obj);
                    }
                    if (!((Boolean) obj).booleanValue()) {
                        SundialLog.normal("socket未连接，无法进入实施页");
                    } else if (!CoachLoginActivity$initView$$inlined$with$lambda$3.this.this$0.isFinishing()) {
                        KtxsKt.safeStartActivity$default(CoachLoginActivity$initView$$inlined$with$lambda$3.this.this$0, AdminCheckActivity.class, null, 2, null);
                    }
                    TextView titleIv3 = CoachLoginActivity$initView$$inlined$with$lambda$3.this.$this_with.titleIv;
                    r.d(titleIv3, "titleIv");
                    titleIv3.setSelected(false);
                    return v.f15822a;
                }
            }

            @Override // cn.mucang.sundial.library.util.ClickController.ClickListener
            public void onClickCountFull() {
                g.b(s.a(CoachLoginActivity$initView$$inlined$with$lambda$3.this.this$0), null, null, new C01791(null), 3, null);
            }
        });
    }
}
