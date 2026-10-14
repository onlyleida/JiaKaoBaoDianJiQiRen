package cn.mucang.android.jiakaoyi.teachingk2.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityHardwareLogBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ResultItemBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u001f B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0016H\u0014J\b\u0010\u001c\u001a\u00020\u0016H\u0014J\u0010\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/HardwareLogActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityHardwareLogBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "checking", "", "collectBoardAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "collectBoardList", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "list", "mainBoardAdapter", "mainBoardList", "safeBoardAdapter", "safeBoardList", "ultrasonic1Adapter", "ultrasonic1List", "ultrasonic2Adapter", "ultrasonic2List", "checkModule", "", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "getStatName", "", "init", "onDestroy", "onSignalChanged", "showResult", "Companion", "ResultItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HardwareLogActivity extends BaseViewBindingActivity<ActivityHardwareLogBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    public static final a n = new a(null);
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private final com.drakeet.multitype.f c = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.drakeet.multitype.f f8133d = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.drakeet.multitype.f f8134e = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.drakeet.multitype.f f8135f = new com.drakeet.multitype.f(null, 0, null, 7, null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<CheckModuleStatus> f8136g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<CheckModuleStatus> f8137h = new ArrayList();
    private final List<CheckModuleStatus> i = new ArrayList();
    private final List<CheckModuleStatus> j = new ArrayList();
    private final List<CheckModuleStatus> k = new ArrayList();
    private final List<CheckModuleStatus> l = new ArrayList();
    private boolean m = true;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/HardwareLogActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) HardwareLogActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/HardwareLogActivity$ResultItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ResultItemBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/HardwareLogActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<CheckModuleStatus, ResultItemBinding> {
        public b(HardwareLogActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ResultItemBinding> holder, CheckModuleStatus item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ResultItemBinding) holder.getViewBinding()).tvDesc.setText(item.getTitle());
        }
    }

    private final void j(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        Iterator<CheckModuleStatus> it = this.l.iterator();
        while (it.hasNext()) {
            CheckModuleStatus next = it.next();
            if (next.checkPass(next.getCheckInt(eVar))) {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(HardwareLogActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    private final void m() {
        boolean zIsEmpty = this.l.isEmpty();
        this.f8136g.clear();
        this.i.clear();
        this.j.clear();
        this.k.clear();
        this.f8137h.clear();
        if (zIsEmpty) {
            this.b.i(new ArrayList());
            this.b.notifyDataSetChanged();
            this.f8133d.i(new ArrayList());
            this.f8133d.notifyDataSetChanged();
            this.f8134e.i(new ArrayList());
            this.f8134e.notifyDataSetChanged();
            this.f8135f.i(new ArrayList());
            this.f8135f.notifyDataSetChanged();
            this.c.i(new ArrayList());
            this.c.notifyDataSetChanged();
            g().tvNoError.setVisibility(0);
            return;
        }
        for (CheckModuleStatus checkModuleStatus : this.l) {
            int module = checkModuleStatus.getModule();
            if (module == 2) {
                this.i.add(checkModuleStatus);
            } else if (module == 3) {
                this.j.add(checkModuleStatus);
            } else if (module == 4) {
                this.k.add(checkModuleStatus);
            } else if (module != 5) {
                this.f8136g.add(checkModuleStatus);
            } else {
                this.f8137h.add(checkModuleStatus);
            }
        }
        this.b.i(this.f8136g);
        this.b.notifyDataSetChanged();
        this.f8133d.i(this.i);
        this.f8133d.notifyDataSetChanged();
        this.f8134e.i(this.j);
        this.f8134e.notifyDataSetChanged();
        this.f8135f.i(this.k);
        this.f8135f.notifyDataSetChanged();
        this.c.i(this.f8137h);
        this.c.notifyDataSetChanged();
        g().tvNoError.setVisibility(8);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "故障信息";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().title.titleTv.setText(getStatName());
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HardwareLogActivity.k(this.f8223a, view);
            }
        });
        this.l.clear();
        kotlin.collections.z.C(this.l, CheckModuleStatus.values());
        g().rv1.setLayoutManager(new LinearLayoutManager(this));
        g().rv2.setLayoutManager(new LinearLayoutManager(this));
        g().rv3.setLayoutManager(new LinearLayoutManager(this));
        g().rv4.setLayoutManager(new LinearLayoutManager(this));
        g().rv5.setLayoutManager(new LinearLayoutManager(this));
        this.b.g(CheckModuleStatus.class, new b(this));
        this.f8133d.g(CheckModuleStatus.class, new b(this));
        this.f8134e.g(CheckModuleStatus.class, new b(this));
        this.f8135f.g(CheckModuleStatus.class, new b(this));
        this.c.g(CheckModuleStatus.class, new b(this));
        g().rv1.setAdapter(this.b);
        g().rv2.setAdapter(this.c);
        g().rv3.setAdapter(this.f8133d);
        g().rv4.setAdapter(this.f8134e);
        g().rv5.setAdapter(this.f8135f);
        g().tvNoError.setVisibility(8);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        this.l.clear();
        kotlin.collections.z.C(this.l, CheckModuleStatus.values());
        if (this.m) {
            this.m = false;
            j(signalGetter);
            m();
            this.m = true;
        }
    }
}
