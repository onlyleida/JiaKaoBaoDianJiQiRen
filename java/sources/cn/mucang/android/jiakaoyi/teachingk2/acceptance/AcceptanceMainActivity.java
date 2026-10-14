package cn.mucang.android.jiakaoyi.teachingk2.acceptance;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JListDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.p002e.XyToken;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityAcceptanceMainBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemAcceptanceBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0015J\b\u0010\u0010\u001a\u00020\u000fH\u0003J\b\u0010\u0011\u001a\u00020\u000fH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityAcceptanceMainBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "workOrderId", "", "getWorkOrderId", "()J", "workOrderId$delegate", "Lkotlin/Lazy;", "getStatName", "", "init", "", "loadData", "onResume", "AcceptanceItemBinder", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AcceptanceMainActivity extends BaseViewBindingActivity<ActivityAcceptanceMainBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f6002d = new b(null);
    private final com.drakeet.multitype.f b;
    private final Lazy c;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$AcceptanceItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemAcceptanceBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<AcceptanceModel, ItemAcceptanceBinding> {
        final /* synthetic */ AcceptanceMainActivity b;

        public a(AcceptanceMainActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(AcceptanceModel item, AcceptanceMainActivity this$0, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            AcceptanceChildActivity.b bVar = AcceptanceChildActivity.f5999f;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "it.context");
            bVar.a(context, AcceptanceModule.INSTANCE.a(item.getType()), this$0.k());
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemAcceptanceBinding> holder, final AcceptanceModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemAcceptanceBinding) holder.getViewBinding()).btnTv.setText(item.getName());
            TextView textView = ((ItemAcceptanceBinding) holder.getViewBinding()).btnTv;
            final AcceptanceMainActivity acceptanceMainActivity = this.b;
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AcceptanceMainActivity.a.p(item, acceptanceMainActivity, view);
                }
            });
            if (item.getLastSubmitTime() <= 0) {
                ((ItemAcceptanceBinding) holder.getViewBinding()).timeTv.setText("一一");
            } else {
                ((ItemAcceptanceBinding) holder.getViewBinding()).timeTv.setText(FormatUtils.c(item.getLastSubmitTime()));
            }
            int status = item.getStatus();
            if (status == 1) {
                ((ItemAcceptanceBinding) holder.getViewBinding()).statusTv.setText("验收通过");
                ((ItemAcceptanceBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#02C8B7"));
            } else if (status != 2) {
                ((ItemAcceptanceBinding) holder.getViewBinding()).statusTv.setText("未验收");
                ((ItemAcceptanceBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#707C8C"));
            } else {
                ((ItemAcceptanceBinding) holder.getViewBinding()).statusTv.setText("验收未通过");
                ((ItemAcceptanceBinding) holder.getViewBinding()).statusTv.setTextColor(Color.parseColor("#FF4D4D"));
            }
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u001e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$Companion;", "", "()V", "keyWorkOrderId", "", "launch", "", "context", "Landroid/content/Context;", "showWorkList", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(final Context context) throws InternalException {
            kotlin.jvm.internal.r.e(context, "$context");
            final List<WorkOrderModel> listO = new AcceptanceApi().o();
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.o
                @Override // java.lang.Runnable
                public final void run() {
                    AcceptanceMainActivity.b.f(context, listO);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(Context context, List list) {
            kotlin.jvm.internal.r.e(context, "$context");
            kotlin.jvm.internal.r.e(list, "$list");
            AcceptanceMainActivity.f6002d.g(context, list);
        }

        private final void g(final Context context, final List<WorkOrderModel> list) {
            if (cn.mucang.android.core.utils.g.b(list)) {
                new CommonAlertDialog(context, new CommonAlertDialog.DialogParams("未查询到工单信息", "请完成工单的实施车辆添加", "关闭", null, null, 24, null)).show();
                return;
            }
            if (list.size() == 1) {
                Intent intentPutExtra = new Intent(context, (Class<?>) AcceptanceMainActivity.class).putExtra("key.workOrderId", ((WorkOrderModel) kotlin.collections.s.c0(list)).getWorkOrderId());
                kotlin.jvm.internal.r.d(intentPutExtra, "Intent(context, Acceptan…list.first().workOrderId)");
                ActivityUtils.c(context, intentPutExtra);
                return;
            }
            JListDialog.d dVar = new JListDialog.d();
            dVar.b("工单选择");
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new JListDialog.c("工单【" + ((WorkOrderModel) it.next()).getWorkOrderId() + (char) 12305, new JListDialog.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.n
                    @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.JListDialog.b
                    public final void a(int i) {
                        AcceptanceMainActivity.b.h(context, list, i);
                    }
                }));
            }
            JListDialog jListDialog = new JListDialog(context, dVar, arrayList);
            jListDialog.setCancelable(false);
            jListDialog.setCanceledOnTouchOutside(false);
            jListDialog.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(Context context, List list, int i) {
            kotlin.jvm.internal.r.e(context, "$context");
            kotlin.jvm.internal.r.e(list, "$list");
            Intent intentPutExtra = new Intent(context, (Class<?>) AcceptanceMainActivity.class).putExtra("key.workOrderId", ((WorkOrderModel) list.get(i)).getWorkOrderId());
            kotlin.jvm.internal.r.d(intentPutExtra, "Intent(context, Acceptan…Id, list[it].workOrderId)");
            ActivityUtils.c(context, intentPutExtra);
        }

        public final void d(final Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            if (ExamSiteUtil.e(0L) <= 0) {
                cn.mucang.android.core.utils.u.h("未启用考场");
            } else if (x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L))) == null) {
                cn.mucang.android.core.utils.u.h("暂无地图数据");
            } else {
                new cn.mucang.android.jiakaoyi.framework.base.dialog.u(ActivityUtils.a(context)).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.p
                    @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
                    public final void a() throws InternalException {
                        AcceptanceMainActivity.b.e(context);
                    }
                }, "正在获取工单", "获取失败");
            }
        }
    }

    public AcceptanceMainActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(AcceptanceModel.class, new a(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.b = fVar;
        this.c = kotlin.i.b(new Function0<Long>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceMainActivity$workOrderId$2
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long k() {
        return ((Number) this.c.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(AcceptanceMainActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void p() {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.l
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws InternalException {
                AcceptanceMainActivity.q(this.f6037a);
            }
        }, "正在加载数据", "加载数据失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(final AcceptanceMainActivity this$0) throws InternalException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        final List<AcceptanceModel> listM = new AcceptanceApi().m(this$0.k());
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.q
            @Override // java.lang.Runnable
            public final void run() {
                AcceptanceMainActivity.r(listM, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(List list, AcceptanceMainActivity this$0) {
        kotlin.jvm.internal.r.e(list, "$list");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.d(list)) {
            this$0.b.i(list);
            this$0.b.notifyDataSetChanged();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "验收首页";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        RobotStatusBarBinding robotStatusBarBinding = g().statusBar;
        kotlin.jvm.internal.r.d(robotStatusBarBinding, "viewBinding.statusBar");
        AcceptanceManager.c(robotStatusBarBinding, androidx.lifecycle.s.a(this), false);
        g().backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AcceptanceMainActivity.l(this.f6036a, view);
            }
        });
        g().infoTv.setText("设备编号：" + DeviceUtils.c() + "      验收人员：" + ((Object) XyToken.f3444a.b()));
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(this.b);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        p();
    }
}
