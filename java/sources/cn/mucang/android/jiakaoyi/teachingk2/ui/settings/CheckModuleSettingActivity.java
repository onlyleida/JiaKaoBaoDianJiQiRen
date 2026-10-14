package cn.mucang.android.jiakaoyi.teachingk2.ui.settings;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityCheckModuleSettingBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemCheckSettingBinding;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TeachSafeProvider;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeMenuModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.SafeMenuItemBinder;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u000f\u0010\u0011B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\bH\u0014J\b\u0010\u000e\u001a\u00020\bH\u0014R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCheckModuleSettingBinding;", "()V", "menuList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;", "changeMenu", "", "clickItem", "getMenuList", "getStatName", "", "init", "onDestroy", "CheckSettingItem", "Companion", "SettingItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class CheckModuleSettingActivity extends BaseViewBindingActivity<ActivityCheckModuleSettingBinding> {
    public static final b c = new b(null);
    private List<SafeMenuModel> b = l();

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$CheckSettingItem;", "", Constant.PROTOCOL_WEBVIEW_NAME, "", "code", "module", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getCode", "()Ljava/lang/String;", "getModule", "()I", "getName", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f8246a;
        private final String b;
        private final int c;

        public a(String name, String code, int i) {
            r.e(name, "name");
            r.e(code, "code");
            this.f8246a = name;
            this.b = code;
            this.c = i;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final int getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getF8246a() {
            return this.f8246a;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) CheckModuleSettingActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$SettingItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity$CheckSettingItem;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCheckSettingBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleSettingActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class c extends ViewBindingBinder<a, ItemCheckSettingBinding> {
        public c(CheckModuleSettingActivity this$0) {
            r.e(this$0, "this$0");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(ViewBindingHolder holder, a item, View view) {
            r.e(holder, "$holder");
            r.e(item, "$item");
            ((ItemCheckSettingBinding) holder.getViewBinding()).checkCb.setSelected(!((ItemCheckSettingBinding) holder.getViewBinding()).checkCb.isSelected());
            CheckModuleManager.b(item.getC(), item.getB(), ((ItemCheckSettingBinding) holder.getViewBinding()).checkCb.isSelected());
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<ItemCheckSettingBinding> holder, final a item) {
            r.e(holder, "holder");
            r.e(item, "item");
            ((ItemCheckSettingBinding) holder.getViewBinding()).titleTv.setText(item.getF8246a());
            ((ItemCheckSettingBinding) holder.getViewBinding()).checkCb.setSelected(CheckModuleManager.a(item.getC(), item.getB()));
            ((ItemCheckSettingBinding) holder.getViewBinding()).checkCb.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CheckModuleSettingActivity.c.p(holder, item, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(SafeMenuModel safeMenuModel) {
        List<CheckModuleStatus> checkModuleStatus;
        for (SafeMenuModel safeMenuModel2 : this.b) {
            safeMenuModel2.setSelected(false);
            if (r.a(safeMenuModel2, safeMenuModel)) {
                safeMenuModel2.setSelected(true);
                ArrayList arrayList = new ArrayList();
                TeachSafeProvider teachSafeProvider = (TeachSafeProvider) DataProviderRegister.b(DataProviderRegister.f3433a, TeachSafeProvider.class, null, 2, null);
                if (teachSafeProvider != null && (checkModuleStatus = teachSafeProvider.getCheckModuleStatus()) != null) {
                    ArrayList<CheckModuleStatus> arrayList2 = new ArrayList();
                    for (Object obj : checkModuleStatus) {
                        if (((CheckModuleStatus) obj).getModule() == safeMenuModel2.getId()) {
                            arrayList2.add(obj);
                        }
                    }
                    for (CheckModuleStatus checkModuleStatus2 : arrayList2) {
                        arrayList.add(new a(checkModuleStatus2.getZhTitle(), checkModuleStatus2.getCode(), safeMenuModel2.getId()));
                    }
                }
                RecyclerView.Adapter adapter = g().dataRv.getAdapter();
                com.drakeet.multitype.f fVar = adapter instanceof com.drakeet.multitype.f ? (com.drakeet.multitype.f) adapter : null;
                if (fVar != null) {
                    fVar.i(arrayList);
                }
                RecyclerView.Adapter adapter2 = g().dataRv.getAdapter();
                if (adapter2 != null) {
                    adapter2.notifyDataSetChanged();
                }
            }
        }
        RecyclerView.Adapter adapter3 = g().menuRv.getAdapter();
        if (adapter3 == null) {
            return;
        }
        adapter3.notifyDataSetChanged();
    }

    private final List<SafeMenuModel> l() {
        if (AppUtils.b()) {
            SafeMenuModel safeMenuModel = new SafeMenuModel();
            safeMenuModel.setId(10);
            safeMenuModel.setText("大车模块");
            safeMenuModel.setSelected(true);
            v vVar = v.f15822a;
            return u.p(safeMenuModel);
        }
        SafeMenuModel safeMenuModel2 = new SafeMenuModel();
        safeMenuModel2.setId(1);
        safeMenuModel2.setText("主控模块");
        safeMenuModel2.setSelected(true);
        v vVar2 = v.f15822a;
        SafeMenuModel safeMenuModel3 = new SafeMenuModel();
        safeMenuModel3.setId(2);
        safeMenuModel3.setText("采集模块");
        safeMenuModel3.setSelected(false);
        SafeMenuModel safeMenuModel4 = new SafeMenuModel();
        safeMenuModel4.setId(3);
        safeMenuModel4.setText("超声波模块1");
        safeMenuModel4.setSelected(false);
        SafeMenuModel safeMenuModel5 = new SafeMenuModel();
        safeMenuModel5.setId(4);
        safeMenuModel5.setText("超声波模块2");
        safeMenuModel5.setSelected(false);
        SafeMenuModel safeMenuModel6 = new SafeMenuModel();
        safeMenuModel6.setId(5);
        safeMenuModel6.setText("安全模块");
        safeMenuModel6.setSelected(false);
        SafeMenuModel safeMenuModel7 = new SafeMenuModel();
        safeMenuModel7.setId(6);
        safeMenuModel7.setText("油门模块");
        safeMenuModel7.setSelected(false);
        SafeMenuModel safeMenuModel8 = new SafeMenuModel();
        safeMenuModel8.setId(7);
        safeMenuModel8.setText("AI模块");
        safeMenuModel8.setSelected(false);
        return u.p(safeMenuModel2, safeMenuModel3, safeMenuModel4, safeMenuModel5, safeMenuModel6, safeMenuModel7, safeMenuModel8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(CheckModuleSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(CheckModuleSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        RecyclerView.Adapter adapter = this$0.g().dataRv.getAdapter();
        com.drakeet.multitype.f fVar = adapter instanceof com.drakeet.multitype.f ? (com.drakeet.multitype.f) adapter : null;
        List<Object> listC = fVar == null ? null : fVar.c();
        List<Object> list = z.l(listC) ? listC : null;
        if (view.isSelected()) {
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    CheckModuleManager.b(aVar.getC(), aVar.getB(), false);
                }
            }
        } else if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                a aVar2 = (a) it2.next();
                CheckModuleManager.b(aVar2.getC(), aVar2.getB(), true);
            }
        }
        RecyclerView.Adapter adapter2 = this$0.g().dataRv.getAdapter();
        if (adapter2 != null) {
            adapter2.notifyDataSetChanged();
        }
        view.setSelected(!view.isSelected());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "自检模块管理";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        g().title.titleTv.setText("自检模块管理");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckModuleSettingActivity.m(this.f8251a, view);
            }
        });
        g().menuRv.setLayoutManager(new LinearLayoutManager(this));
        RecyclerView recyclerView = g().menuRv;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(SafeMenuModel.class, new SafeMenuItemBinder(new Function1<SafeMenuModel, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.CheckModuleSettingActivity$init$2$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(SafeMenuModel safeMenuModel) {
                invoke2(safeMenuModel);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SafeMenuModel clickItem) {
                r.e(clickItem, "clickItem");
                this.this$0.k(clickItem);
            }
        }));
        fVar.i(this.b);
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        RecyclerView.Adapter adapter = g().menuRv.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        g().dataRv.setLayoutManager(new LinearLayoutManager(this));
        RecyclerView recyclerView2 = g().dataRv;
        com.drakeet.multitype.f fVar2 = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar2.g(a.class, new c(this));
        recyclerView2.setAdapter(fVar2);
        g().btnCancelAll.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CheckModuleSettingActivity.n(this.f8252a, view);
            }
        });
        k((SafeMenuModel) s.c0(this.b));
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        CheckModuleManager.c();
    }
}
