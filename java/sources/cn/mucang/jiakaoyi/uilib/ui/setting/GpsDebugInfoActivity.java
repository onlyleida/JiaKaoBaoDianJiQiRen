package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.os.Bundle;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import com.mucang.android.jiakaoyi.uilib.databinding.DebugGpsConnectionActivityBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.DebugGpsConnectionInfoBinding;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "getAdapter", "()Lcom/drakeet/multitype/MultiTypeAdapter;", "connectionInfos", "", "Lcn/mucang/jiakaoyi/uilib/socket/debug/DebugGpsConnection;", "getConnectionInfos", "()Ljava/util/List;", "observer", "Landroidx/lifecycle/Observer;", "getObserver", "()Landroidx/lifecycle/Observer;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "DebugItemBinder", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GpsDebugInfoActivity extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DebugGpsConnectionActivityBinding f9887a;
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private final List<cn.mucang.jiakaoyi.uilib.socket.x.a> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.lifecycle.a0<cn.mucang.jiakaoyi.uilib.socket.x.a> f9888d = new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.b0
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            GpsDebugInfoActivity.k(this.f9901a, (cn.mucang.jiakaoyi.uilib.socket.x.a) obj);
        }
    };

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity$DebugItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/socket/debug/DebugGpsConnection;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionInfoBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends ViewBindingBinder<cn.mucang.jiakaoyi.uilib.socket.x.a, DebugGpsConnectionInfoBinding> {
        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<DebugGpsConnectionInfoBinding> holder, cn.mucang.jiakaoyi.uilib.socket.x.a item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            if (item.b == null) {
                ((DebugGpsConnectionInfoBinding) holder.getViewBinding()).txtContent.setText(item.f9702a + "  准备连接socket");
                return;
            }
            ((DebugGpsConnectionInfoBinding) holder.getViewBinding()).txtContent.setText(item.f9702a + "  " + ((Object) item.b));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(GpsDebugInfoActivity this$0, cn.mucang.jiakaoyi.uilib.socket.x.a aVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (aVar == null) {
            return;
        }
        if (this$0.h().size() > 50) {
            this$0.h().remove(0);
        }
        this$0.h().add(aVar);
        this$0.getB().i(this$0.h());
        this$0.getB().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(GpsDebugInfoActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final com.drakeet.multitype.f getB() {
        return this.b;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "高精度日志";
    }

    public final List<cn.mucang.jiakaoyi.uilib.socket.x.a> h() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DebugGpsConnectionActivityBinding debugGpsConnectionActivityBindingInflate = DebugGpsConnectionActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(debugGpsConnectionActivityBindingInflate, "inflate(layoutInflater)");
        this.f9887a = debugGpsConnectionActivityBindingInflate;
        if (debugGpsConnectionActivityBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(debugGpsConnectionActivityBindingInflate.getRoot());
        DebugGpsConnectionActivityBinding debugGpsConnectionActivityBinding = this.f9887a;
        if (debugGpsConnectionActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugGpsConnectionActivityBinding.titleLayout.titleTv.setText("高精度实时日志");
        DebugGpsConnectionActivityBinding debugGpsConnectionActivityBinding2 = this.f9887a;
        if (debugGpsConnectionActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugGpsConnectionActivityBinding2.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GpsDebugInfoActivity.l(this.f9904a, view);
            }
        });
        DebugGpsConnectionActivityBinding debugGpsConnectionActivityBinding3 = this.f9887a;
        if (debugGpsConnectionActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugGpsConnectionActivityBinding3.titleLayout.actionTv.setVisibility(8);
        DebugGpsConnectionActivityBinding debugGpsConnectionActivityBinding4 = this.f9887a;
        if (debugGpsConnectionActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugGpsConnectionActivityBinding4.titleLayout.divider.setVisibility(0);
        this.b.g(cn.mucang.jiakaoyi.uilib.socket.x.a.class, new a());
        this.b.i(this.c);
        DebugGpsConnectionActivityBinding debugGpsConnectionActivityBinding5 = this.f9887a;
        if (debugGpsConnectionActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        debugGpsConnectionActivityBinding5.recyclerView.setAdapter(this.b);
        LiveBus.d(cn.mucang.jiakaoyi.uilib.socket.x.a.class).h(this, this.f9888d);
    }
}
