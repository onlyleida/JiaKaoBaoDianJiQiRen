package cn.mucang.android.jiakaoyi.teachingk2.ui.settings;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutItemTeachSettingBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.SettingTeachingActivityBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightVideoManager;
import com.mobile.auth.gatewayauth.Constant;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0014J\b\u0010\u0010\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/SettingTeachingActivityBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "loadType", "", "getLoadType", "()I", "loadType$delegate", "Lkotlin/Lazy;", "getStatName", "", "init", "", "speedConfigDesc", "Companion", "Item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachingSettingActivity extends BaseViewBindingActivity<SettingTeachingActivityBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f8249d = new a(null);
    private final Lazy b = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.TeachingSettingActivity$loadType$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.loadType", 0));
        }
    });
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "loadType", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, int i) {
            r.e(context, "context");
            Intent intent = new Intent(context, (Class<?>) TeachingSettingActivity.class);
            intent.putExtra("key.loadType", i);
            v vVar = v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$Item;", "", "config", "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", "key", "", Constant.PROTOCOL_WEBVIEW_NAME, "(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Ljava/lang/String;)V", "getConfig", "()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", "getKey", "()Ljava/lang/String;", "getName", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final LocalConfig f8250a;
        private final String b;
        private final String c;

        public b(LocalConfig localConfig, String str, String str2) {
            this.f8250a = localConfig;
            this.b = str;
            this.c = str2;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final LocalConfig getF8250a() {
            return this.f8250a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getC() {
            return this.c;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.TeachingSettingActivity$init$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001e\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$Item;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutItemTeachSettingBinding;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class AnonymousClass2 extends ViewBindingBinder<b, LayoutItemTeachSettingBinding> {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(TeachingSettingActivity this$0, final b item, final View view) {
            r.e(this$0, "this$0");
            r.e(item, "$item");
            final boolean z = !view.isSelected();
            LocalConfigManager.c(this$0, item.getF8250a(), String.valueOf(z), new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.TeachingSettingActivity$init$2$onBindViewHolder$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    view.setSelected(z);
                    if (item.getF8250a() == LocalConfig.CalibrateWheel) {
                        cn.mucang.android.jiakaoyi.teachingk2.z0.f.h(z);
                    } else if (item.getF8250a() == LocalConfig.Highlight) {
                        HighlightVideoManager.f7136a.g();
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(b item, final LayoutItemTeachSettingBinding this_with, final TeachingSettingActivity this$0, View view) {
            r.e(item, "$item");
            r.e(this_with, "$this_with");
            r.e(this$0, "this$0");
            view.setSelected(!view.isSelected());
            if (r.a("gps_exam_type_use_5", item.getB())) {
                cn.mucang.android.jiakaoyi.signal.handle.gps.f.b(view.isSelected());
                return;
            }
            if (!r.a("key-normal-speed-config", item.getB())) {
                i0.i(item.getB(), view.isSelected());
                return;
            }
            i0.i(item.getB(), view.isSelected());
            this_with.text.setText(this$0.n());
            if (view.isSelected()) {
                final Float[] fArr = {Float.valueOf(1.5f), Float.valueOf(2.0f), Float.valueOf(2.5f), Float.valueOf(3.0f), Float.valueOf(3.5f), Float.valueOf(4.0f)};
                new androidx.appcompat.app.c.a(this$0).setTitle("请选择固定速度").setItems(new String[]{"1.5码", "2码", "2.5码", "3码", "3.5码", "4码"}, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.h
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        TeachingSettingActivity.AnonymousClass2.t(this_with, fArr, this$0, dialogInterface, i);
                    }
                }).create().show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void t(LayoutItemTeachSettingBinding this_with, Float[] values, TeachingSettingActivity this$0, DialogInterface dialogInterface, int i) {
            r.e(this_with, "$this_with");
            r.e(values, "$values");
            r.e(this$0, "this$0");
            i0.j("key-normal-speed-value", values[i].floatValue());
            this_with.text.setText(this$0.n());
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<LayoutItemTeachSettingBinding> holder, final b item) {
            r.e(holder, "holder");
            r.e(item, "item");
            androidx.viewbinding.a viewBinding = holder.getViewBinding();
            final TeachingSettingActivity teachingSettingActivity = TeachingSettingActivity.this;
            final LayoutItemTeachSettingBinding layoutItemTeachSettingBinding = (LayoutItemTeachSettingBinding) viewBinding;
            if (item.getF8250a() != null) {
                layoutItemTeachSettingBinding.text.setText(item.getF8250a().getDesc());
                layoutItemTeachSettingBinding.stepCb.setSelected(LocalConfigManager.f(item.getF8250a()));
                layoutItemTeachSettingBinding.stepCb.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TeachingSettingActivity.AnonymousClass2.r(teachingSettingActivity, item, view);
                    }
                });
            } else {
                layoutItemTeachSettingBinding.text.setText(item.getC());
                layoutItemTeachSettingBinding.stepCb.setSelected(i0.b(item.getB(), false));
                layoutItemTeachSettingBinding.stepCb.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.g
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TeachingSettingActivity.AnonymousClass2.s(item, layoutItemTeachSettingBinding, teachingSettingActivity, view);
                    }
                });
            }
        }
    }

    private final int k() {
        return ((Number) this.b.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(TeachingSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String n() {
        String str;
        if (i0.b("key-normal-speed-config", false)) {
            str = "固定速度-" + i0.c("key-normal-speed-value", 2.0f) + (char) 30721;
        } else {
            str = "实时速度";
        }
        return "教学2.0速度配置(" + str + ')';
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "教学设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().title.titleTv.setText("教学设置");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachingSettingActivity.l(this.f8259a, view);
            }
        });
        this.c.g(b.class, new AnonymousClass2());
        if (AppUtils.b()) {
            this.c.i(u.m(new b(LocalConfig.ChangeStep, "", null), new b(LocalConfig.ShowTrace, "", null), new b(null, "keyShowTeachPosition", "是否展示教学点位"), new b(null, "gps_exam_type_use_5", "GPS信号为5时是否继续考试")));
        } else if (k() == 3) {
            List<? extends Object> listP = u.p(new b(LocalConfig.ChangeStep, "", null), new b(LocalConfig.ShowTrace, "", null), new b(LocalConfig.GlobalError, "", null), new b(LocalConfig.GlobalRemind, "", null), new b(LocalConfig.ShowMap, "", null), new b(LocalConfig.SwitchStep, "", null), new b(LocalConfig.JudgePress, "", null), new b(LocalConfig.CalibrateWheel, "", null), new b(null, "keyShowTeachPosition", "是否展示教学点位"), new b(LocalConfig.RecommendedGuide, "", null), new b(null, "gps_exam_type_use_5", "GPS信号为5时是否继续考试"), new b(LocalConfig.AutoTeach, "", null), new b(null, "key-normal-speed-config", n()), new b(LocalConfig.OtherCarIntrudeTip, "key_other_car_intrude_tip", null), new b(LocalConfig.AutoAssist, "key_auto_assist", null), new b(LocalConfig.HelpTeach, "", null), new b(LocalConfig.Highlight, "", null));
            if (AppUtils.c()) {
                listP.remove(11);
            }
            this.c.i(listP);
        } else {
            this.c.i(u.m(new b(LocalConfig.ChangeStep, "", null), new b(LocalConfig.GlobalError, "", null), new b(LocalConfig.GlobalRemind, "", null), new b(LocalConfig.ShowMap, "", null), new b(LocalConfig.SwitchStep, "", null), new b(LocalConfig.JudgePress, "", null), new b(LocalConfig.OtherCarIntrudeTip, "key_other_car_intrude_tip", null)));
        }
        g().recyclerView.setAdapter(this.c);
    }
}
