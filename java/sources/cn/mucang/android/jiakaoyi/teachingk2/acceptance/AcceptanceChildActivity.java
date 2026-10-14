package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.webview.HTML5Activity;
import cn.mucang.android.core.webview.HtmlExtra;
import cn.mucang.android.core.webview.ParamsMode;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityAcceptanceChildBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemChildBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0014H\u0015J\b\u0010\u0019\u001a\u00020\u0014H\u0002J\b\u0010\u001a\u001a\u00020\u0014H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000b\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceChildBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "module", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "getModule", "()Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "module$delegate", "Lkotlin/Lazy;", "selectItem", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "workOrderId", "", "getWorkOrderId", "()J", "workOrderId$delegate", "changeSelect", "", "item", "getStatName", "", "init", "loadData", "onResume", "ChildItemBinder", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class AcceptanceChildActivity extends BaseViewBindingActivity<ActivityAcceptanceChildBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f5999f = new b(null);
    private final Lazy b = kotlin.i.b(new Function0<AcceptanceModule>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceChildActivity$module$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AcceptanceModule invoke() {
            Intent intent = this.this$0.getIntent();
            Serializable serializableExtra = intent == null ? null : intent.getSerializableExtra("key.module");
            AcceptanceModule acceptanceModule = serializableExtra instanceof AcceptanceModule ? (AcceptanceModule) serializableExtra : null;
            return acceptanceModule == null ? AcceptanceModule.K2Teach : acceptanceModule;
        }
    });
    private final Lazy c = kotlin.i.b(new Function0<Long>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceChildActivity$workOrderId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Long invoke() {
            Intent intent = this.this$0.getIntent();
            return Long.valueOf(intent != null ? intent.getLongExtra("key.workOrderId", 0L) : 0L);
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f6000d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AcceptanceChildModel f6001e;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$ChildItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemChildBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<AcceptanceChildModel, ItemChildBinding> {
        final /* synthetic */ AcceptanceChildActivity b;

        public a(AcceptanceChildActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(AcceptanceChildActivity this$0, AcceptanceChildModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.l(item);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemChildBinding> holder, final AcceptanceChildModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemChildBinding) holder.getViewBinding()).btnTv.setText(item.getSubTypeName());
            ((ItemChildBinding) holder.getViewBinding()).selectIv.setSelected(item.getSelect());
            int status = item.getStatus();
            if (status == 1) {
                ((ItemChildBinding) holder.getViewBinding()).statusTv.setText("验收通过");
                ((ItemChildBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#02C8B7"));
            } else if (status != 2) {
                ((ItemChildBinding) holder.getViewBinding()).statusTv.setText("未验收");
                ((ItemChildBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#707C8C"));
            } else {
                StringBuilder sb = new StringBuilder("验收未通过");
                if (this.b.m() == AcceptanceModule.K2Teach && cn.mucang.android.core.utils.g.d(item.getNotPassSteps())) {
                    sb.append("：");
                    List<Integer> notPassSteps = item.getNotPassSteps();
                    if (notPassSteps != null) {
                        Iterator<T> it = notPassSteps.iterator();
                        while (it.hasNext()) {
                            sb.append(kotlin.jvm.internal.r.m(Step.findWithType(((Number) it.next()).intValue()).stepName, "、"));
                        }
                    }
                    kotlin.jvm.internal.r.d(sb.deleteCharAt(StringsKt__StringsKt.N(sb)), "this.deleteCharAt(index)");
                }
                ((ItemChildBinding) holder.getViewBinding()).statusTv.setText(sb);
                ((ItemChildBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#FF4D4D"));
            }
            ConstraintLayout root = ((ItemChildBinding) holder.getViewBinding()).getRoot();
            final AcceptanceChildActivity acceptanceChildActivity = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AcceptanceChildActivity.a.p(acceptanceChildActivity, item, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity$Companion;", "", "()V", "keyModule", "", "keyWorkOrderId", "launch", "", "context", "Landroid/content/Context;", "mode", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;", "workOrderId", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, AcceptanceModule mode, long j) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(mode, "mode");
            Intent intentPutExtra = new Intent(context, (Class<?>) AcceptanceChildActivity.class).putExtra("key.module", mode).putExtra("key.workOrderId", j);
            kotlin.jvm.internal.r.d(intentPutExtra, "Intent(context, Acceptan…WorkOrderId, workOrderId)");
            ActivityUtils.c(context, intentPutExtra);
        }
    }

    public AcceptanceChildActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(AcceptanceChildModel.class, new a(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f6000d = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(AcceptanceChildModel acceptanceChildModel) {
        this.f6001e = acceptanceChildModel;
        for (Object obj : this.f6000d.c()) {
            if (obj instanceof AcceptanceChildModel) {
                ((AcceptanceChildModel) obj).setSelect(false);
            }
        }
        acceptanceChildModel.setSelect(true);
        this.f6000d.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AcceptanceModule m() {
        return (AcceptanceModule) this.b.getValue();
    }

    private final long n() {
        return ((Number) this.c.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(AcceptanceChildActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(AcceptanceChildActivity this$0, final View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        f.a.a.a.j.a aVarA = f.a.a.a.j.a.a(this$0);
        AcceptanceMapActivity.a aVar = AcceptanceMapActivity.f6003f;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        aVarA.c(aVar.a(context, this$0.m(), this$0.n(), this$0.f6001e), 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.e
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent) {
                AcceptanceChildActivity.q(view, i, i2, intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(View view, int i, int i2, Intent intent) {
        if (i2 == -1) {
            String strG = cn.mucang.android.core.api.request.f.a.g(intent.getStringExtra("reportUrl"), "*#06#mYeab4M9o4xug4mYhpeoQkKP");
            Context context = view.getContext();
            HtmlExtra.b bVar = new HtmlExtra.b();
            bVar.J(strG);
            bVar.F(ParamsMode.NONE);
            HTML5Activity.i(context, bVar.y());
        }
    }

    private final void w() {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.d
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws InternalException {
                AcceptanceChildActivity.x(this.f6024a);
            }
        }, "正在加载数据", "加载失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(final AcceptanceChildActivity this$0) throws InternalException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        final List<AcceptanceChildModel> listN = new AcceptanceApi().n(this$0.m(), this$0.n());
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.b
            @Override // java.lang.Runnable
            public final void run() {
                AcceptanceChildActivity.y(listN, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(List list, AcceptanceChildActivity this$0) {
        kotlin.jvm.internal.r.e(list, "$list");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.d(list)) {
            this$0.f6000d.i(list);
            this$0.f6000d.notifyDataSetChanged();
            this$0.l((AcceptanceChildModel) kotlin.collections.s.c0(list));
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "验收子步骤";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        RobotStatusBarBinding robotStatusBarBinding = g().statusBar;
        kotlin.jvm.internal.r.d(robotStatusBarBinding, "viewBinding.statusBar");
        AcceptanceManager.c(robotStatusBarBinding, androidx.lifecycle.s.a(this), false);
        g().backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AcceptanceChildActivity.o(this.f6008a, view);
            }
        });
        g().startTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AcceptanceChildActivity.p(this.f6026a, view);
            }
        });
        g().infoTv.setText(m().getDesc());
        g().tipTv.setText(m().getTip());
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(this.f6000d);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        w();
    }
}
