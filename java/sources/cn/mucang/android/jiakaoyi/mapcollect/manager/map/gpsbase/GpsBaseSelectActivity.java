package cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityGpsBaseSelectBinding;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ItemGpsBaseLayoutBinding;
import com.autonavi.base.amap.mapcore.tools.GLMapStaticValue;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\n\u000bB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityGpsBaseSelectBinding;", "()V", "viewModel", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;", "getStatName", "", "init", "", "Companion", "GpsBaseItemBinder", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GpsBaseSelectActivity extends BaseViewBindingActivity<ActivityGpsBaseSelectBinding> {
    public static final a c = new a(null);
    private GpsBaseViewModel b;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u00042\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$Companion;", "", "()V", "TAG", "", "launch", "", "activity", "Landroid/app/Activity;", "cityCode", "callback", "Lkotlin/Function2;", "", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(Function2 function2, int i, int i2, Intent intent) {
            if (i2 == -1) {
                long longExtra = intent.getLongExtra("gpsBaseId", -1L);
                String stringExtra = intent.getStringExtra("gpsBaseName");
                if (stringExtra == null) {
                    stringExtra = "";
                }
                if (function2 == null) {
                    return;
                }
                function2.invoke(Long.valueOf(longExtra), stringExtra);
            }
        }

        public final void b(Activity activity, String str, final Function2<? super Long, ? super String, v> function2) {
            r.e(activity, "activity");
            Intent intent = new Intent(activity, (Class<?>) GpsBaseSelectActivity.class);
            intent.putExtra("cityCode", str);
            f.a.a.a.j.a.a(activity).c(intent, GLMapStaticValue.MAPRENDER_CAN_STOP_AND_FULLSCREEN_RENDEROVER, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.c
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent2) {
                    GpsBaseSelectActivity.a.c(function2, i, i2, intent2);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$GpsBaseItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ItemGpsBaseLayoutBinding;", "clickListener", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getClickListener", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends ViewBindingBinder<GpsBase, ItemGpsBaseLayoutBinding> {
        private final cn.mucang.android.jiakaoyi.framework.h.b<GpsBase> b;

        public b(cn.mucang.android.jiakaoyi.framework.h.b<GpsBase> clickListener) {
            r.e(clickListener, "clickListener");
            this.b = clickListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(b this$0, GpsBase item, View view) {
            r.e(this$0, "this$0");
            r.e(item, "$item");
            this$0.n().callback(item);
        }

        public final cn.mucang.android.jiakaoyi.framework.h.b<GpsBase> n() {
            return this.b;
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemGpsBaseLayoutBinding> holder, final GpsBase item) {
            r.e(holder, "holder");
            r.e(item, "item");
            ((ItemGpsBaseLayoutBinding) holder.getViewBinding()).tvName.setText(item.driveSchoolName);
            ((ItemGpsBaseLayoutBinding) holder.getViewBinding()).getRoot().setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GpsBaseSelectActivity.b.q(this.f5101a, item, view);
                }
            });
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5096a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f5096a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$init$adapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends com.drakeet.multitype.f {
        d() {
            super(null, 0, null, 7, null);
            g(GpsBase.class, new b(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.f
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    GpsBaseSelectActivity.d.k(gpsBaseSelectActivity, (GpsBase) obj);
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void k(GpsBaseSelectActivity this$0, GpsBase gpsBase) {
            r.e(this$0, "this$0");
            Intent intent = new Intent();
            intent.putExtra("gpsBaseId", gpsBase.id);
            intent.putExtra("gpsBaseName", gpsBase.driveSchoolName);
            this$0.setResult(-1, intent);
            this$0.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(GpsBaseSelectActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(d adapter, GpsBaseSelectActivity this$0, List it) {
        r.e(adapter, "$adapter");
        r.e(this$0, "this$0");
        r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
        if (it.isEmpty()) {
            this$0.g().stateLayout.d();
        } else {
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(GpsBaseSelectActivity this$0, LoadingState loadingState) {
        r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : c.f5096a[loadingState.ordinal()];
        if (i == 1) {
            this$0.g().stateLayout.f();
        } else {
            if (i != 2) {
                return;
            }
            this$0.g().stateLayout.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(GpsBaseSelectActivity this$0, String str) {
        r.e(this$0, "this$0");
        GpsBaseViewModel gpsBaseViewModel = this$0.b;
        if (gpsBaseViewModel != null) {
            gpsBaseViewModel.c(str);
        } else {
            r.u("viewModel");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "选择基站";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        j0 j0VarA = new m0(this).a(GpsBaseViewModel.class);
        r.d(j0VarA, "ViewModelProvider(this).…aseViewModel::class.java)");
        this.b = (GpsBaseViewModel) j0VarA;
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GpsBaseSelectActivity.j(this.f5098a, view);
            }
        });
        g().titleLayout.titleTv.setText("选择基站");
        final d dVar = new d();
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(dVar);
        GpsBaseViewModel gpsBaseViewModel = this.b;
        if (gpsBaseViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        gpsBaseViewModel.a().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GpsBaseSelectActivity.k(dVar, this, (List) obj);
            }
        });
        GpsBaseViewModel gpsBaseViewModel2 = this.b;
        if (gpsBaseViewModel2 == null) {
            r.u("viewModel");
            throw null;
        }
        gpsBaseViewModel2.b().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                GpsBaseSelectActivity.l(this.f5099a, (LoadingState) obj);
            }
        });
        final String stringExtra = getIntent().getStringExtra("cityCode");
        GpsBaseViewModel gpsBaseViewModel3 = this.b;
        if (gpsBaseViewModel3 == null) {
            r.u("viewModel");
            throw null;
        }
        gpsBaseViewModel3.c(stringExtra);
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.g
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                GpsBaseSelectActivity.m(this.f5104a, stringExtra);
            }
        });
    }
}
