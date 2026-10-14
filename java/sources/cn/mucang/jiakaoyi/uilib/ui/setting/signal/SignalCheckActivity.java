package cn.mucang.jiakaoyi.uilib.ui.setting.signal;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.consts.BoxVersion;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.BackGearType;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.binder.SignalBaseBinder;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.binder.SignalStandard2Binder;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.binder.SignalStandardBinder;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalBaseItem;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalStandard2Item;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalStandardItem;
import com.mucang.android.jiakaoyi.uilib.databinding.PopupVersionListBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.PopupVersionListItemBinding;
import com.mucang.android.jiakaoyi.uilib.databinding.SignalCheckActivityBinding;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 92\u00020\u00012\u00020\u0002:\u000289B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u001dH\u0003J.\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00120\u001f2\u000e\b\u0001\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u001f2\u000e\b\u0001\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u001fH\u0002J\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\u001dH\u0002J\b\u0010&\u001a\u00020\u001dH\u0002J\b\u0010'\u001a\u00020\u001dH\u0002J\u0012\u0010(\u001a\u00020\u001d2\b\u0010)\u001a\u0004\u0018\u00010*H\u0014J\b\u0010+\u001a\u00020\u001dH\u0014J\b\u0010,\u001a\u00020\u001dH\u0015J\u0010\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020\u001dH\u0002J\b\u00101\u001a\u00020\u001dH\u0002J\b\u00102\u001a\u00020\u001dH\u0002J\b\u00103\u001a\u00020\u001dH\u0002J\u001e\u00104\u001a\u00020\u001d2\u0006\u00105\u001a\u0002062\f\u00107\u001a\b\u0012\u0004\u0012\u00020!0\u001fH\u0002R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\nR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "backTypes", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;", "[Lcn/mucang/android/jiakaoyi/signal/center/model/BackGearType;", "gearTypes", "Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;", "[Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;", "hasChmod", "", "getHasChmod", "()Z", "hasChmod$delegate", "Lkotlin/Lazy;", "loadType", "", "getLoadType", "()I", "loadType$delegate", "selectCarListener", "Landroid/view/View$OnClickListener;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalCheckActivityBinding;", "viewModel", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckViewModel;", "changeVersionInfo", "", "checkDiffIndexes", "", "oldList", "", "newList", "getStatName", "", "initBackGearTypes", "initBoxVersion", "initGearTypes", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "onResume", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "setBackGearTypeTxt", "setGearTypeTxt", "showSelectGearType", "showVersionList", "updateRcvWithDiffItems", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "it", "BoxVersionItemBinder", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalCheckActivity extends BaseActivity implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f10203h = new b(null);
    private SignalCheckActivityBinding b;
    private SignalCheckViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GearType[] f10205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BackGearType[] f10206e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f10204a = kotlin.i.b(new Function0<Integer>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$loadType$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(this.this$0.getIntent().getIntExtra("key.loadType", 0));
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f10207f = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$hasChmod$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getIntent().getBooleanExtra("HAS_CHMOD", true));
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View.OnClickListener f10208g = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.p
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SignalCheckActivity.T(this.f10232a, view);
        }
    };

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$BoxVersionItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/PopupVersionListItemBinding;", "onSelect", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "getOnSelect", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends ViewBindingBinder<BoxVersion, PopupVersionListItemBinding> {
        private final Function1<BoxVersion, kotlin.v> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Function1<? super BoxVersion, kotlin.v> onSelect) {
            kotlin.jvm.internal.r.e(onSelect, "onSelect");
            this.b = onSelect;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(ViewBindingHolder holder, a this$0, BoxVersion item, View view) {
            kotlin.jvm.internal.r.e(holder, "$holder");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            if (((PopupVersionListItemBinding) holder.getViewBinding()).nameTv.isSelected()) {
                return;
            }
            this$0.n().invoke(item);
        }

        public final Function1<BoxVersion, kotlin.v> n() {
            return this.b;
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<PopupVersionListItemBinding> holder, final BoxVersion item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((PopupVersionListItemBinding) holder.getViewBinding()).nameTv.setText(item.versionName);
            ((PopupVersionListItemBinding) holder.getViewBinding()).nameTv.setSelected(DeviceUtils.b() == item.id);
            ((PopupVersionListItemBinding) holder.getViewBinding()).nameTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SignalCheckActivity.a.q(holder, this, item, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0007J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$Companion;", "", "()V", "HAS_CHMOD", "", "launch", "", "context", "Landroid/content/Context;", "hasChmod", "", "loadType", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) SignalCheckActivity.class));
        }

        public final void b(Context context, int i) {
            kotlin.jvm.internal.r.e(context, "context");
            Intent intent = new Intent(context, (Class<?>) SignalCheckActivity.class);
            intent.putExtra("key.loadType", i);
            kotlin.v vVar = kotlin.v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter1$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends com.drakeet.multitype.f {
        c() {
            super(null, 0, null, 7, null);
            g(SignalBaseItem.class, new SignalBaseBinder());
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter2$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends com.drakeet.multitype.f {
        d() {
            super(null, 0, null, 7, null);
            g(SignalStandardItem.class, new SignalStandardBinder());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(SignalCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean M(SignalCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        new AlertDialog.Builder(this$0).setTitle("GPS状态").setMessage(Html.fromHtml(GpsAnalysis.f().c())).setCancelable(true).setPositiveButton("关闭", (DialogInterface.OnClickListener) null).create().show();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(SignalCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.startActivity(new Intent(this$0, (Class<?>) SignalReverseActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(SignalCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ExtensionSelectActivity.f10201a.a(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(SignalCheckActivity this$0, c adapter1, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(adapter1, "$adapter1");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.Z(adapter1, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(SignalCheckActivity this$0, d adapter2, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(adapter2, "$adapter2");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.Z(adapter2, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(SignalCheckActivity this$0, SignalCheckActivity$onCreate$adapter3$1 adapter3, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(adapter3, "$adapter3");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.Z(adapter3, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(SignalCheckActivity this$0, LocalCarModel it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "$it");
        SignalCheckActivityBinding signalCheckActivityBinding = this$0.b;
        if (signalCheckActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = signalCheckActivityBinding.carDescTv;
        StringBuilder sb = new StringBuilder();
        sb.append((Object) it.getModelName());
        sb.append(' ');
        CarItemModel config = it.getConfig();
        sb.append((Object) (config != null ? config.getGearConfig() : null));
        textView.setText(sb.toString());
        this$0.W();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(SignalCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!this$0.m()) {
            cn.mucang.android.core.utils.u.h("没有修改车型权限,请联系代理");
            return;
        }
        if (AppUtils.k()) {
            CarSelectActivity.l.c(this$0, null);
        } else {
            CarSelectActivity.l.b(this$0);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("点击车型选择");
    }

    private final void U() {
        BackGearType[] backGearTypeArr = this.f10206e;
        if (backGearTypeArr == null) {
            kotlin.jvm.internal.r.u("backTypes");
            throw null;
        }
        for (BackGearType backGearType : backGearTypeArr) {
            if (cn.mucang.android.jiakaoyi.signal.utils.a.a() == backGearType.type) {
                SignalCheckActivityBinding signalCheckActivityBinding = this.b;
                if (signalCheckActivityBinding == null) {
                    kotlin.jvm.internal.r.u("viewBinding");
                    throw null;
                }
                signalCheckActivityBinding.backGearSp.setText(backGearType.desc);
            }
        }
    }

    private final void V() {
        int iA = cn.mucang.android.jiakaoyi.signal.utils.f.a();
        GearType[] gearTypeArr = this.f10205d;
        if (gearTypeArr == null) {
            kotlin.jvm.internal.r.u("gearTypes");
            throw null;
        }
        for (GearType gearType : gearTypeArr) {
            if (gearType.type == iA) {
                SignalCheckActivityBinding signalCheckActivityBinding = this.b;
                if (signalCheckActivityBinding == null) {
                    kotlin.jvm.internal.r.u("viewBinding");
                    throw null;
                }
                signalCheckActivityBinding.carGearTypeSp.setText(gearType.gearName);
            }
        }
    }

    private final void W() {
        if (!AppUtils.i()) {
            V();
            U();
        }
        if (n() == 2) {
            SignalCheckActivityBinding signalCheckActivityBinding = this.b;
            if (signalCheckActivityBinding != null) {
                signalCheckActivityBinding.tvGpsSpeedEnable.setVisibility(8);
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (!b0.a().b() && !cn.mucang.android.jiakaoyi.framework.utils.n.a() && !MucangConfig.v()) {
            SignalCheckActivityBinding signalCheckActivityBinding2 = this.b;
            if (signalCheckActivityBinding2 != null) {
                signalCheckActivityBinding2.tvGpsSpeedEnable.setVisibility(8);
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        SignalCheckActivityBinding signalCheckActivityBinding3 = this.b;
        if (signalCheckActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding3.tvGpsSpeedEnable.setVisibility(0);
        SignalCheckActivityBinding signalCheckActivityBinding4 = this.b;
        if (signalCheckActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding4.tvGpsSpeedEnable.setSelected(cn.mucang.android.jiakaoyi.signal.d.i.a());
        SignalCheckActivityBinding signalCheckActivityBinding5 = this.b;
        if (signalCheckActivityBinding5 != null) {
            signalCheckActivityBinding5.tvGpsSpeedEnable.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SignalCheckActivity.X(this.f10222a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(SignalCheckActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.signal.d.i.b(!cn.mucang.android.jiakaoyi.signal.d.i.a());
        SignalCheckActivityBinding signalCheckActivityBinding = this$0.b;
        if (signalCheckActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding.tvGpsSpeedEnable.setSelected(cn.mucang.android.jiakaoyi.signal.d.i.a());
        if (cn.mucang.android.jiakaoyi.signal.d.i.a()) {
            ActionLog.f3431a.m("启用Gps速度设置");
            cn.mucang.android.jiakaoyi.framework.log.f.o("启用Gps速度设置");
        } else {
            ActionLog.f3431a.m("关闭Gps速度设置");
            cn.mucang.android.jiakaoyi.framework.log.f.o("关闭Gps速度设置");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y() {
        PopupVersionListBinding popupVersionListBindingInflate = PopupVersionListBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(popupVersionListBindingInflate, "inflate(layoutInflater)");
        final PopupWindow popupWindow = new PopupWindow(popupVersionListBindingInflate.getRoot());
        popupVersionListBindingInflate.rv.setLayoutManager(new LinearLayoutManager(this, 1, false));
        RecyclerView recyclerView = popupVersionListBindingInflate.rv;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(BoxVersion.class, new a(new Function1<BoxVersion, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$showVersionList$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(BoxVersion boxVersion) {
                invoke2(boxVersion);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(final BoxVersion it) {
                kotlin.jvm.internal.r.e(it, "it");
                popupWindow.dismiss();
                McCommandManager mcCommandManager = McCommandManager.f5380a;
                int i = it.id;
                AnonymousClass1 anonymousClass1 = new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$showVersionList$1$1.1
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ kotlin.v invoke() {
                        invoke2();
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        cn.mucang.android.core.utils.u.h("设置超时");
                    }
                };
                final SignalCheckActivity signalCheckActivity = this;
                mcCommandManager.n(i, anonymousClass1, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.f, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$showVersionList$1$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.f fVar2) {
                        invoke2(fVar2);
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.f fVar2) {
                        boolean z = false;
                        if (fVar2 != null && fVar2.f5428a) {
                            z = true;
                        }
                        if (!z) {
                            cn.mucang.android.core.utils.u.h("设置失败");
                            return;
                        }
                        cn.mucang.android.jiakaoyi.framework.log.f.o("setBoxVersion：" + it.id + ' ' + ((Object) it.versionName) + " isBox2 " + it.useBoxSignal2() + " isBox3 " + it.useBoxSignal3() + " hasOBD " + it.hasOBD());
                        cn.mucang.android.core.utils.u.h("设置成功");
                        DeviceUtils.u(fVar2.b);
                        cn.mucang.android.jiakaoyi.framework.log.f.o("setBoxVersion 导致clearExtendConfig");
                        cn.mucang.android.jiakaoyi.signal.center.config.a.h().d();
                        signalCheckActivity.i();
                    }
                });
            }
        }));
        fVar.i(ArraysKt___ArraysKt.h0(BoxVersion.values()));
        kotlin.v vVar = kotlin.v.f15822a;
        recyclerView.setAdapter(fVar);
        popupWindow.setWidth(320);
        popupWindow.setHeight(-2);
        SignalCheckActivityBinding signalCheckActivityBinding = this.b;
        if (signalCheckActivityBinding != null) {
            popupWindow.showAsDropDown(signalCheckActivityBinding.titleLayout.actionTv, 0, 0, 80);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    private final void Z(com.drakeet.multitype.f fVar, List<? extends Object> list) {
        if (cn.mucang.android.core.utils.g.b(fVar.c()) || fVar.c().size() != list.size()) {
            fVar.i(list);
            fVar.notifyDataSetChanged();
            return;
        }
        List<Integer> listL = l(fVar.c(), list);
        int i = 0;
        int size = listL.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i2 = i + 1;
            int iIntValue = listL.get(i).intValue();
            Object obj = fVar.c().get(iIntValue);
            Object obj2 = list.get(iIntValue);
            if ((obj instanceof SignalBaseItem) && (obj2 instanceof SignalBaseItem)) {
                ((SignalBaseItem) obj).c(((SignalBaseItem) obj2).getValue());
            } else if ((obj instanceof SignalStandardItem) && (obj2 instanceof SignalStandardItem)) {
                SignalStandardItem signalStandardItem = (SignalStandardItem) obj;
                SignalStandardItem signalStandardItem2 = (SignalStandardItem) obj2;
                signalStandardItem.c(signalStandardItem2.getIsOn());
                signalStandardItem.d(signalStandardItem2.getText());
            } else if ((obj instanceof SignalStandard2Item) && (obj2 instanceof SignalStandard2Item)) {
                SignalStandard2Item signalStandard2Item = (SignalStandard2Item) obj;
                SignalStandard2Item signalStandard2Item2 = (SignalStandard2Item) obj2;
                signalStandard2Item.g(signalStandard2Item2.getIsOn());
                signalStandard2Item.h(signalStandard2Item2.getText());
                signalStandard2Item.e(signalStandard2Item2.getChecked());
            }
            fVar.notifyItemChanged(iIntValue);
            if (i2 > size) {
                return;
            } else {
                i = i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetTextI18n"})
    public final void i() {
        BoxVersion boxVersion = BoxVersion.parse(DeviceUtils.b());
        SignalCheckActivityBinding signalCheckActivityBinding = this.b;
        if (signalCheckActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = signalCheckActivityBinding.titleLayout.actionTv;
        StringBuilder sb = new StringBuilder();
        sb.append((Object) (boxVersion == null ? null : boxVersion.versionName));
        sb.append(", 设备号:");
        sb.append(DeviceUtils.c());
        textView.setText(sb.toString());
        if (DeviceUtils.b() != BoxVersion.Version1.id) {
            SignalCheckActivityBinding signalCheckActivityBinding2 = this.b;
            if (signalCheckActivityBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            signalCheckActivityBinding2.allLl.setVisibility(0);
        } else {
            SignalCheckActivityBinding signalCheckActivityBinding3 = this.b;
            if (signalCheckActivityBinding3 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            signalCheckActivityBinding3.allLl.setVisibility(8);
        }
        SignalCheckActivityBinding signalCheckActivityBinding4 = this.b;
        if (signalCheckActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding4.allCheckTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalCheckActivity.j(view);
            }
        });
        SignalCheckActivityBinding signalCheckActivityBinding5 = this.b;
        if (signalCheckActivityBinding5 != null) {
            signalCheckActivityBinding5.allCancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SignalCheckActivity.k(view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(View view) {
        BoxSignalManager.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(View view) {
        BoxSignalManager.j();
    }

    private final List<Integer> l(List<? extends Object> list, List<? extends Object> list2) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        if (size > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (!kotlin.jvm.internal.r.a(list.get(i), list2.get(i))) {
                    arrayList.add(Integer.valueOf(i));
                }
                if (i2 >= size) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    private final boolean m() {
        return ((Boolean) this.f10207f.getValue()).booleanValue();
    }

    private final int n() {
        return ((Number) this.f10204a.getValue()).intValue();
    }

    private final void o() {
        BackGearType[] backGearTypeArrValues = BackGearType.values();
        this.f10206e = backGearTypeArrValues;
        if (backGearTypeArrValues == null) {
            kotlin.jvm.internal.r.u("backTypes");
            throw null;
        }
        int length = backGearTypeArrValues.length;
        final String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            BackGearType[] backGearTypeArr = this.f10206e;
            if (backGearTypeArr == null) {
                kotlin.jvm.internal.r.u("backTypes");
                throw null;
            }
            String str = backGearTypeArr[i].desc;
            kotlin.jvm.internal.r.d(str, "backTypes[it].desc");
            strArr[i] = str;
        }
        SignalCheckActivityBinding signalCheckActivityBinding = this.b;
        if (signalCheckActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding.backGearSp.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalCheckActivity.p(this.f10231a, strArr, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final SignalCheckActivity this$0, String[] types, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(types, "$types");
        new AlertDialog.Builder(this$0).setItems(types, new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.k
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SignalCheckActivity.q(this.f10227a, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SignalCheckActivity this$0, DialogInterface noName_0, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(noName_0, "$noName_0");
        BackGearType[] backGearTypeArr = this$0.f10206e;
        if (backGearTypeArr == null) {
            kotlin.jvm.internal.r.u("backTypes");
            throw null;
        }
        cn.mucang.android.jiakaoyi.signal.utils.a.c(backGearTypeArr[i].type);
        this$0.U();
    }

    private final void r() {
        SignalCheckActivityBinding signalCheckActivityBinding = this.b;
        if (signalCheckActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        boolean z = false;
        signalCheckActivityBinding.titleLayout.actionTv.setVisibility(0);
        i();
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSignalProvider.class, null, 2, null);
        if (absSignalProvider != null && absSignalProvider.useNonOldProtocol()) {
            z = true;
        }
        if (z) {
            return;
        }
        SignalCheckActivityBinding signalCheckActivityBinding2 = this.b;
        if (signalCheckActivityBinding2 != null) {
            signalCheckActivityBinding2.titleLayout.actionTv.setOnClickListener(new MultiClickListener(0, 0L, new Function1<View, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$initBoxVersion$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(View view) {
                    invoke2(view);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    this.this$0.Y();
                }
            }, 3, null));
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    private final void s() {
        GearType[] gearTypeArrValues = GearType.values();
        this.f10205d = gearTypeArrValues;
        if (gearTypeArrValues == null) {
            kotlin.jvm.internal.r.u("gearTypes");
            throw null;
        }
        int length = gearTypeArrValues.length;
        final String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            GearType[] gearTypeArr = this.f10205d;
            if (gearTypeArr == null) {
                kotlin.jvm.internal.r.u("gearTypes");
                throw null;
            }
            String str = gearTypeArr[i].gearName;
            kotlin.jvm.internal.r.d(str, "gearTypes[it].gearName");
            strArr[i] = str;
        }
        SignalCheckActivityBinding signalCheckActivityBinding = this.b;
        if (signalCheckActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding.carGearTypeSp.setVisibility(0);
        V();
        SignalCheckActivityBinding signalCheckActivityBinding2 = this.b;
        if (signalCheckActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding2.carGearTypeSp.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalCheckActivity.t(this.f10236a, strArr, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(final SignalCheckActivity this$0, String[] values, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(values, "$values");
        new AlertDialog.Builder(this$0).setItems(values, new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.q
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SignalCheckActivity.u(this.f10233a, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(SignalCheckActivity this$0, DialogInterface noName_0, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(noName_0, "$noName_0");
        GearType[] gearTypeArr = this$0.f10205d;
        if (gearTypeArr == null) {
            kotlin.jvm.internal.r.u("gearTypes");
            throw null;
        }
        cn.mucang.android.jiakaoyi.signal.utils.f.d(gearTypeArr[i].type);
        this$0.V();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车辆信号调试";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.recyclerview.widget.RecyclerView$Adapter, cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$onCreate$adapter3$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SignalCheckActivityBinding signalCheckActivityBindingInflate = SignalCheckActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(signalCheckActivityBindingInflate, "inflate(layoutInflater)");
        this.b = signalCheckActivityBindingInflate;
        if (signalCheckActivityBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(signalCheckActivityBindingInflate.getRoot());
        SignalCheckActivityBinding signalCheckActivityBinding = this.b;
        if (signalCheckActivityBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalCheckActivity.L(this.f10221a, view);
            }
        });
        SignalCheckActivityBinding signalCheckActivityBinding2 = this.b;
        if (signalCheckActivityBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding2.titleLayout.titleTv.setText("车辆信号调试");
        SignalCheckActivityBinding signalCheckActivityBinding3 = this.b;
        if (signalCheckActivityBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding3.titleLayout.titleTv.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.h
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return SignalCheckActivity.M(this.f10224a, view);
            }
        });
        r();
        SignalCheckActivityBinding signalCheckActivityBinding4 = this.b;
        if (signalCheckActivityBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding4.titleLayout.divider.setVisibility(0);
        SignalCheckActivityBinding signalCheckActivityBinding5 = this.b;
        if (signalCheckActivityBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding5.reverseSettingTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalCheckActivity.N(this.f10226a, view);
            }
        });
        SignalCheckActivityBinding signalCheckActivityBinding6 = this.b;
        if (signalCheckActivityBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding6.extendSettingTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SignalCheckActivity.O(this.f10229a, view);
            }
        });
        final c cVar = new c();
        SignalCheckActivityBinding signalCheckActivityBinding7 = this.b;
        if (signalCheckActivityBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding7.recyclerView1.setAdapter(cVar);
        final d dVar = new d();
        SignalCheckActivityBinding signalCheckActivityBinding8 = this.b;
        if (signalCheckActivityBinding8 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding8.recyclerView2.setAdapter(dVar);
        final ?? r3 = new com.drakeet.multitype.f() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$onCreate$adapter3$1
            {
                g(SignalStandardItem.class, new SignalStandardBinder());
                g(SignalStandard2Item.class, new SignalStandard2Binder(new Function1<Integer, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.SignalCheckActivity$onCreate$adapter3$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(Integer num) {
                        invoke(num.intValue());
                        return kotlin.v.f15822a;
                    }

                    public final void invoke(int i) {
                        BoxSignalManager.d(i);
                    }
                }));
            }
        };
        SignalCheckActivityBinding signalCheckActivityBinding9 = this.b;
        if (signalCheckActivityBinding9 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding9.recyclerView3.setAdapter(r3);
        j0 j0VarA = new m0(this).a(SignalCheckViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…eckViewModel::class.java)");
        SignalCheckViewModel signalCheckViewModel = (SignalCheckViewModel) j0VarA;
        this.c = signalCheckViewModel;
        if (signalCheckViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        signalCheckViewModel.a().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SignalCheckActivity.P(this.f10223a, cVar, (List) obj);
            }
        });
        SignalCheckViewModel signalCheckViewModel2 = this.c;
        if (signalCheckViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        signalCheckViewModel2.c().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.l
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SignalCheckActivity.Q(this.f10228a, dVar, (List) obj);
            }
        });
        SignalCheckViewModel signalCheckViewModel3 = this.c;
        if (signalCheckViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        signalCheckViewModel3.b().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SignalCheckActivity.R(this.f10220a, r3, (List) obj);
            }
        });
        SignalCheckViewModel signalCheckViewModel4 = this.c;
        if (signalCheckViewModel4 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        kotlin.jvm.internal.r.d(eVarT, "signal()");
        signalCheckViewModel4.d(eVarT);
        SignalCheckActivityBinding signalCheckActivityBinding10 = this.b;
        if (signalCheckActivityBinding10 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding10.carDescTv.setOnClickListener(this.f10208g);
        SignalCheckActivityBinding signalCheckActivityBinding11 = this.b;
        if (signalCheckActivityBinding11 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding11.carDescArrow.setOnClickListener(this.f10208g);
        if (AppUtils.i()) {
            SignalCheckActivityBinding signalCheckActivityBinding12 = this.b;
            if (signalCheckActivityBinding12 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            signalCheckActivityBinding12.carGearTypeSp.setVisibility(8);
            SignalCheckActivityBinding signalCheckActivityBinding13 = this.b;
            if (signalCheckActivityBinding13 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            signalCheckActivityBinding13.backGearSp.setVisibility(8);
        } else {
            s();
            o();
        }
        SignalCheckActivityBinding signalCheckActivityBinding14 = this.b;
        if (signalCheckActivityBinding14 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding14.recyclerView1.setItemAnimator(null);
        SignalCheckActivityBinding signalCheckActivityBinding15 = this.b;
        if (signalCheckActivityBinding15 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding15.recyclerView2.setItemAnimator(null);
        SignalCheckActivityBinding signalCheckActivityBinding16 = this.b;
        if (signalCheckActivityBinding16 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        signalCheckActivityBinding16.recyclerView3.setItemAnimator(null);
        if (!m()) {
            SignalCheckActivityBinding signalCheckActivityBinding17 = this.b;
            if (signalCheckActivityBinding17 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            signalCheckActivityBinding17.extendSettingTv.setVisibility(8);
            SignalCheckActivityBinding signalCheckActivityBinding18 = this.b;
            if (signalCheckActivityBinding18 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            signalCheckActivityBinding18.reverseSettingTv.setVisibility(8);
        }
        if (n() == 2) {
            SignalCheckActivityBinding signalCheckActivityBinding19 = this.b;
            if (signalCheckActivityBinding19 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            signalCheckActivityBinding19.carSelectLayout.setVisibility(8);
            SignalCheckActivityBinding signalCheckActivityBinding20 = this.b;
            if (signalCheckActivityBinding20 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            signalCheckActivityBinding20.reverseSettingTv.setVisibility(8);
            SignalCheckActivityBinding signalCheckActivityBinding21 = this.b;
            if (signalCheckActivityBinding21 != null) {
                signalCheckActivityBinding21.extendSettingTv.setVisibility(8);
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    protected void onResume() {
        super.onResume();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        final LocalCarModel localCarModelB = SelectCarManager.b();
        if (localCarModelB == null) {
            return;
        }
        cn.mucang.android.core.utils.u.d(new SafeRunnable(this, new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.signal.r
            @Override // java.lang.Runnable
            public final void run() {
                SignalCheckActivity.S(this.f10234a, localCarModelB);
            }
        }), 100L);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        SignalCheckViewModel signalCheckViewModel = this.c;
        if (signalCheckViewModel != null) {
            signalCheckViewModel.f(signalGetter);
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }
}
