package cn.mucang.android.jiakaoyi.mapcollect.select;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityCommonListSelectBinding;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0007H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0014J\b\u0010\u0014\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000b\u001a\u0004\b\r\u0010\t¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "cityCode", "", "getCityCode", "()Ljava/lang/String;", "cityCode$delegate", "Lkotlin/Lazy;", "schoolId", "getSchoolId", "schoolId$delegate", "chooseSchool", "", "getStatName", "init", "", "loadData", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SelectSchoolCarActivity extends BaseViewBindingActivity<ActivityCommonListSelectBinding> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f5190e = new a(null);
    private final Lazy b = i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.SelectSchoolCarActivity$cityCode$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra;
            Intent intent = this.this$0.getIntent();
            return (intent == null || (stringExtra = intent.getStringExtra("key.cityCode")) == null) ? "" : stringExtra;
        }
    });
    private final Lazy c = i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.SelectSchoolCarActivity$schoolId$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra;
            Intent intent = this.this$0.getIntent();
            return (intent == null || (stringExtra = intent.getStringExtra("key.schoolId")) == null) ? "" : stringExtra;
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f5191d = new com.drakeet.multitype.f(null, 0, null, 7, null);

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010\f\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$Companion;", "", "()V", "KEY_CITY_CODE", "", "KEY_RESULT", "KEY_SCHOOL_ID", "createIntentForCar", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "schoolId", "createIntentForSchool", "cityCode", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final Intent a(Context context, String str) {
            Intent intent = new Intent(context, (Class<?>) SelectSchoolCarActivity.class);
            intent.putExtra("key.schoolId", str);
            return intent;
        }

        public final Intent b(Context context, String str) {
            Intent intent = new Intent(context, (Class<?>) SelectSchoolCarActivity.class);
            intent.putExtra("key.cityCode", str);
            return intent;
        }
    }

    private final boolean j() {
        return n0.g(k());
    }

    private final String k() {
        return (String) this.b.getValue();
    }

    private final String l() {
        return (String) this.c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(SelectSchoolCarActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(SelectSchoolCarActivity this$0) {
        r.e(this$0, "this$0");
        this$0.t();
    }

    private final void t() {
        g().stateLayout.f();
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.e
            @Override // java.lang.Runnable
            public final void run() {
                SelectSchoolCarActivity.u(this.f5202a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(final SelectSchoolCarActivity this$0) {
        r.e(this$0, "this$0");
        try {
            final List<HpCarMapModel> listO = this$0.j() ? new SelectApi().o(this$0.k()) : new SelectApi().n(this$0.l());
            u.c(new SafeRunnable(this$0, new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.c
                @Override // java.lang.Runnable
                public final void run() {
                    SelectSchoolCarActivity.v(this.f5200a, listO);
                }
            }));
        } catch (Exception unused) {
            u.c(new SafeRunnable(this$0, new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.b
                @Override // java.lang.Runnable
                public final void run() {
                    SelectSchoolCarActivity.w(this.f5193a);
                }
            }));
            u.h("加载列表失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(SelectSchoolCarActivity this$0, List list) {
        r.e(this$0, "this$0");
        r.e(list, "$list");
        this$0.g().stateLayout.c();
        this$0.f5191d.i(list);
        this$0.f5191d.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(SelectSchoolCarActivity this$0) {
        r.e(this$0, "this$0");
        this$0.g().stateLayout.e();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "驾校选择页";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText(j() ? "选择驾校" : "选择车牌号");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectSchoolCarActivity.m(this.f5201a, view);
            }
        });
        this.f5191d.g(HpCarMapModel.class, new SchoolCarItemBinder(j(), new Function1<HpCarMapModel, v>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.SelectSchoolCarActivity.init.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(HpCarMapModel hpCarMapModel) {
                invoke2(hpCarMapModel);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HpCarMapModel it) {
                r.e(it, "it");
                SelectSchoolCarActivity selectSchoolCarActivity = SelectSchoolCarActivity.this;
                Intent intent = new Intent();
                intent.putExtra("key.result", it);
                v vVar = v.f15822a;
                selectSchoolCarActivity.setResult(-1, intent);
                SelectSchoolCarActivity.this.finish();
            }
        }));
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(this.f5191d);
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.f
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                SelectSchoolCarActivity.n(this.f5203a);
            }
        });
        t();
    }
}
