package cn.mucang.jiakaoyi.uilib.actionlog;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.actionlog.c;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.jiakaoyi.uilib.rule.ModifyTimeBinder;
import com.drakeet.multitype.f;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityModifyPersonalBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;", "()V", "getStatName", "", "init", "", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ActionLogActivity extends BaseViewBindingActivity<ActivityModifyPersonalBinding> {
    public static final a b = new a(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) ActionLogActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/actionlog/ActionLogActivity$init$dataAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends f {
        b() {
            super(null, 0, null, 7, null);
            g(c.class, new ActionLogItemBinder());
            g(Long.class, new ModifyTimeBinder());
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.actionlog.ActionLogActivity$init$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.actionlog.ActionLogActivity$init$2", f = "ActionLogActivity.kt", l = {50}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ b $dataAdapter;
        final /* synthetic */ cn.mucang.android.account.ui.a $loadingDialog;
        int label;
        final /* synthetic */ ActionLogActivity this$0;

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.actionlog.ActionLogActivity$init$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.actionlog.ActionLogActivity$init$2$1", f = "ActionLogActivity.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
            final /* synthetic */ b $dataAdapter;
            final /* synthetic */ cn.mucang.android.account.ui.a $loadingDialog;
            final /* synthetic */ List<c> $modifyLogs;
            int label;
            final /* synthetic */ ActionLogActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(cn.mucang.android.account.ui.a aVar, List<? extends c> list, ActionLogActivity actionLogActivity, b bVar, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$loadingDialog = aVar;
                this.$modifyLogs = list;
                this.this$0 = actionLogActivity;
                this.$dataAdapter = bVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$loadingDialog, this.$modifyLogs, this.this$0, this.$dataAdapter, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
                return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
                this.$loadingDialog.dismiss();
                if (!this.$modifyLogs.isEmpty()) {
                    this.this$0.g().stateLayout.c();
                    if (!this.$modifyLogs.isEmpty()) {
                        this.$dataAdapter.i(this.$modifyLogs);
                        this.$dataAdapter.notifyDataSetChanged();
                    } else {
                        this.this$0.g().stateLayout.d();
                    }
                } else {
                    this.this$0.g().stateLayout.d();
                }
                return v.f15822a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(cn.mucang.android.account.ui.a aVar, ActionLogActivity actionLogActivity, b bVar, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$loadingDialog = aVar;
            this.this$0 = actionLogActivity;
            this.$dataAdapter = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$loadingDialog, this.this$0, this.$dataAdapter, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                k.b(obj);
                List<c> listH = ActionLog.f3431a.h();
                d2 d2VarC = w0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$loadingDialog, listH, this.this$0, this.$dataAdapter, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
            }
            return v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ActionLogActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "常规操作日志";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        b bVar = new b();
        g().titleLayout.titleTv.setText("历史操作记录");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.actionlog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActionLogActivity.j(this.f9180a, view);
            }
        });
        g().ruleRecyclerView.setAdapter(bVar);
        cn.mucang.android.account.ui.a aVar = new cn.mucang.android.account.ui.a(this);
        aVar.b("加载中");
        g.b(j0.a(w0.b()), null, null, new AnonymousClass2(aVar, this, bVar, null), 3, null);
    }
}
