package cn.mucang.android.jiakaoyi.mapcollect.select.brand;

import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.CarCollectSelectModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityCommonListSelectBinding;
import cn.mucang.android.jiakaoyi.mapcollect.select.SelectApi;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0014J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/select/brand/CarCollectSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCommonListSelectBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "mBrandId", "", "getMBrandId", "()I", "mBrandId$delegate", "Lkotlin/Lazy;", "getStatName", "", "init", "", "isBrand", "", "loadData", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarCollectSelectActivity extends BaseViewBindingActivity<ActivityCommonListSelectBinding> {
    private final Lazy b = i.b(new Function0<Integer>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.brand.CarCollectSelectActivity$mBrandId$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            Intent intent = this.this$0.getIntent();
            return Integer.valueOf(intent != null ? intent.getIntExtra("brand_id", -1) : -1);
        }
    });
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    private final int j() {
        return ((Number) this.b.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(CarCollectSelectActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(CarCollectSelectActivity this$0) {
        r.e(this$0, "this$0");
        this$0.s();
    }

    private final boolean m() {
        return j() == -1;
    }

    private final void s() {
        g().stateLayout.f();
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.brand.e
            @Override // java.lang.Runnable
            public final void run() {
                CarCollectSelectActivity.t(this.f5198a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(final CarCollectSelectActivity this$0) {
        r.e(this$0, "this$0");
        try {
            SelectApi selectApi = new SelectApi();
            final List<CarCollectSelectModel> listM = this$0.m() ? selectApi.m() : selectApi.p(this$0.j());
            u.c(new SafeRunnable(this$0, new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.brand.d
                @Override // java.lang.Runnable
                public final void run() {
                    CarCollectSelectActivity.u(this.f5197a, listM);
                }
            }));
        } catch (Exception unused) {
            u.c(new SafeRunnable(this$0, new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.brand.b
                @Override // java.lang.Runnable
                public final void run() {
                    CarCollectSelectActivity.v(this.f5195a);
                }
            }));
            u.h("加载列表失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(CarCollectSelectActivity this$0, List list) {
        r.e(this$0, "this$0");
        r.e(list, "$list");
        this$0.g().stateLayout.c();
        this$0.c.i(list);
        this$0.c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(CarCollectSelectActivity this$0) {
        r.e(this$0, "this$0");
        this$0.g().stateLayout.e();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车型品牌选择";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.titleTv.setText(m() ? "选择品牌" : "选择车系");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.brand.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarCollectSelectActivity.k(this.f5196a, view);
            }
        });
        this.c.g(CarCollectSelectModel.class, new CarCollectSelectItemBinder(new Function1<CarCollectSelectModel, v>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.brand.CarCollectSelectActivity.init.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(CarCollectSelectModel carCollectSelectModel) {
                invoke2(carCollectSelectModel);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(CarCollectSelectModel it) {
                r.e(it, "it");
                CarCollectSelectActivity carCollectSelectActivity = CarCollectSelectActivity.this;
                Intent intent = new Intent();
                intent.putExtra("key_result", it);
                v vVar = v.f15822a;
                carCollectSelectActivity.setResult(-1, intent);
                CarCollectSelectActivity.this.finish();
            }
        }));
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(this.c);
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.mapcollect.select.brand.a
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                CarCollectSelectActivity.l(this.f5194a);
            }
        });
        s();
    }
}
