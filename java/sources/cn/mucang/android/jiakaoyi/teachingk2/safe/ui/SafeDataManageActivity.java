package cn.mucang.android.jiakaoyi.teachingk2.safe.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivitySafeDataManageBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.error.BrakeCheck;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.FlameOutReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeArgumentModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCmdModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeMenuModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeModeChanged;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeServerConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeSwitchModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.Safer;
import cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.SafeCountDown;
import cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.SafeSwitchChanged;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeLocalParamManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeModeManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SpeedBrakeManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.SafeArgumentsItemBinder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.SafeCmdItemBinder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.SafeMenuItemBinder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.SafeServerItemBinder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.SafeSwitchItemBinder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 +2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001+B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\rH\u0002J\u001a\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0017H\u0002J\u001a\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0017H\u0002J\u001a\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u000fH\u0002J0\u0010\u001b\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006j\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`\nH\u0002J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\"H\u0002J\b\u0010#\u001a\u00020\u000fH\u0014J\b\u0010$\u001a\u00020\u000fH\u0014J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020'H\u0017J\b\u0010(\u001a\u00020\u000fH\u0002J\b\u0010)\u001a\u00020\u000fH\u0002J\b\u0010*\u001a\u00020\u000fH\u0003R6\u0010\u0005\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006j\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`\nX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySafeDataManageBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "itemMap", "Ljava/util/HashMap;", "", "", "", "Lkotlin/collections/HashMap;", "menuList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;", "changeConfig", "", "config", "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", "view", "Landroid/widget/ImageView;", "changeMenu", "clickItem", "createCmdCheckData", "Lkotlin/Pair;", "createSafeArgumentsData", "createSafeModeData", "doRefreshSafeList", "getItemMap", "getMenuList", "getSafeConfigList", "getStatName", "", "handleSwitch", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "", "init", "onDestroy", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "refreshCmd", "refreshSafeMode", "setMode", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class SafeDataManageActivity extends BaseViewBindingActivity<ActivitySafeDataManageBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f7846d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static t1 f7847e;
    private final List<SafeMenuModel> b = w();
    private HashMap<Integer, List<Object>> c;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$Companion;", "", "()V", "TYPE_MENU_CMD_CHECK", "", "TYPE_MENU_SAFE_ARGS", "TYPE_MENU_SAFE_MODE", "job", "Lkotlinx/coroutines/Job;", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            if (CarInfoManager.b()) {
                ActivityUtils.c(context, new Intent(context, (Class<?>) SafeDataManageActivity.class));
            } else {
                cn.mucang.android.core.utils.u.h("尚未绑定车辆信息，请先绑定");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(SafeDataManageActivity this$0, SafeModeChanged safeModeChanged) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.H();
        this$0.G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(SafeDataManageActivity this$0, SafeSwitchChanged safeSwitchChanged) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.F();
    }

    private final void F() {
        for (SafeMenuModel safeMenuModel : this.b) {
            if (safeMenuModel.getId() == 1 && safeMenuModel.getSelected()) {
                List<? extends Object> second = r().getSecond();
                HashMap<Integer, List<Object>> map = this.c;
                if (map == null) {
                    kotlin.jvm.internal.r.u("itemMap");
                    throw null;
                }
                map.put(1, second);
                RecyclerView.Adapter adapter = g().dataRv.getAdapter();
                com.drakeet.multitype.f fVar = adapter instanceof com.drakeet.multitype.f ? (com.drakeet.multitype.f) adapter : null;
                if (fVar != null) {
                    fVar.i(second);
                }
                RecyclerView.Adapter adapter2 = g().dataRv.getAdapter();
                if (adapter2 != null) {
                    adapter2.notifyDataSetChanged();
                }
            }
        }
    }

    private final void G() {
        for (SafeMenuModel safeMenuModel : this.b) {
            if (safeMenuModel.getId() == 2 && safeMenuModel.getSelected()) {
                u();
            }
        }
    }

    @SuppressLint({"SetTextI18n"})
    private final void H() {
        g().modeTv.setText(kotlin.jvm.internal.r.m("安全模式：", Integer.valueOf(SafeModeManager.h())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(final LocalConfig localConfig, final ImageView imageView) {
        LocalConfigManager.c(this, localConfig, String.valueOf(!imageView.isSelected()), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$changeConfig$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ImageView imageView2 = imageView;
                imageView2.setSelected(!imageView2.isSelected());
                if (localConfig == LocalConfig.SpeedBrake) {
                    SpeedBrakeManager.c();
                }
                if (localConfig == LocalConfig.WheelBrake) {
                    BrakeCheck.b();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(SafeMenuModel safeMenuModel) {
        List<? extends Object> listJ;
        for (SafeMenuModel safeMenuModel2 : this.b) {
            safeMenuModel2.setSelected(false);
            if (kotlin.jvm.internal.r.a(safeMenuModel2, safeMenuModel)) {
                safeMenuModel2.setSelected(true);
                if (safeMenuModel2.getId() == 2) {
                    listJ = x();
                } else {
                    HashMap<Integer, List<Object>> map = this.c;
                    if (map == null) {
                        kotlin.jvm.internal.r.u("itemMap");
                        throw null;
                    }
                    listJ = (List) map.get(Integer.valueOf(safeMenuModel2.getId()));
                    if (listJ == null) {
                        listJ = kotlin.collections.u.j();
                    }
                }
                RecyclerView.Adapter adapter = g().dataRv.getAdapter();
                com.drakeet.multitype.f fVar = adapter instanceof com.drakeet.multitype.f ? (com.drakeet.multitype.f) adapter : null;
                if (fVar != null) {
                    fVar.i(listJ);
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

    private final Pair<Integer, List<Object>> r() {
        ArrayList arrayList = new ArrayList();
        SafeCmdModel safeCmdModel = new SafeCmdModel();
        safeCmdModel.setText("刹车");
        safeCmdModel.setResId(R.drawable.safe_ic_shache);
        safeCmdModel.setBtn("刹车");
        safeCmdModel.setBtnClick(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$createCmdCheckData$1$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SafeCommandAdapter.b(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.Manual, null, false, 6, null), (byte) 1);
            }
        });
        kotlin.v vVar = kotlin.v.f15822a;
        arrayList.add(safeCmdModel);
        SafeCmdModel safeCmdModel2 = new SafeCmdModel();
        safeCmdModel2.setText("解刹");
        safeCmdModel2.setResId(R.drawable.safe_ic_jiechu);
        safeCmdModel2.setBtn("解刹");
        safeCmdModel2.setBtnClick(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$createCmdCheckData$2$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SafeCommandAdapter.f((byte) 1);
            }
        });
        arrayList.add(safeCmdModel2);
        if (!AppUtils.b()) {
            SafeCmdModel safeCmdModel3 = new SafeCmdModel();
            safeCmdModel3.setText("熄火");
            safeCmdModel3.setResId(R.drawable.safe_ic_jinneng);
            safeCmdModel3.setBtn("熄火");
            safeCmdModel3.setBtnClick(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$createCmdCheckData$3$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SafeCommandAdapter.e(FlameOutReason.APP);
                }
            });
            arrayList.add(safeCmdModel3);
            SafeCmdModel safeCmdModel4 = new SafeCmdModel();
            safeCmdModel4.setText("解除熄火");
            int i = R.drawable.safe_ic_speed;
            safeCmdModel4.setResId(i);
            safeCmdModel4.setBtn("解除熄火");
            safeCmdModel4.setBtnClick(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$createCmdCheckData$4$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SafeCommandAdapter.h(FlameOutReason.APP, null, 2, null);
                }
            });
            arrayList.add(safeCmdModel4);
            SafeCmdModel safeCmdModel5 = new SafeCmdModel();
            safeCmdModel5.setText("关闭安全30s（关闭后，无法继续刹车，30s后自动解除）");
            safeCmdModel5.setResId(i);
            safeCmdModel5.setBtn("关闭");
            safeCmdModel5.setBtnClick(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$createCmdCheckData$5$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Safer.c();
                }
            });
            arrayList.add(safeCmdModel5);
        }
        SafeSwitchModel safeSwitchModel = new SafeSwitchModel();
        safeSwitchModel.setText("关闭安全（关闭后，遇到障碍物后将无法触发刹车）");
        safeSwitchModel.setChecked(!SafeLocalParamManager.a());
        safeSwitchModel.setOnClick(new Function1<ImageView, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$createCmdCheckData$6$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(ImageView imageView) {
                invoke2(imageView);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ImageView it) {
                kotlin.jvm.internal.r.e(it, "it");
                this.this$0.y(!SafeLocalParamManager.a());
            }
        });
        arrayList.add(safeSwitchModel);
        return new Pair<>(1, arrayList);
    }

    private final Pair<Integer, List<Object>> s() {
        SafeArgumentModel safeArgumentModel = new SafeArgumentModel(LocalConfig.HelpTeachAdvanceTime);
        safeArgumentModel.setDesc("辅助教学提前刹车时间(单位:秒)");
        safeArgumentModel.setValue(cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.f());
        kotlin.v vVar = kotlin.v.f15822a;
        return new Pair<>(3, kotlin.collections.u.p(safeArgumentModel));
    }

    private final Pair<Integer, List<Object>> t() {
        return new Pair<>(2, x());
    }

    private final void u() {
        RecyclerView.Adapter adapter = g().dataRv.getAdapter();
        com.drakeet.multitype.f fVar = adapter instanceof com.drakeet.multitype.f ? (com.drakeet.multitype.f) adapter : null;
        if (fVar != null) {
            fVar.i(x());
        }
        RecyclerView.Adapter adapter2 = g().dataRv.getAdapter();
        if (adapter2 == null) {
            return;
        }
        adapter2.notifyDataSetChanged();
    }

    private final HashMap<Integer, List<Object>> v() {
        return o0.j(r(), t(), s());
    }

    private final List<SafeMenuModel> w() {
        SafeMenuModel safeMenuModel = new SafeMenuModel();
        safeMenuModel.setId(1);
        safeMenuModel.setText("安全命令");
        kotlin.v vVar = kotlin.v.f15822a;
        SafeMenuModel safeMenuModel2 = new SafeMenuModel();
        safeMenuModel2.setId(2);
        safeMenuModel2.setText("安全模式");
        SafeMenuModel safeMenuModel3 = new SafeMenuModel();
        safeMenuModel3.setId(3);
        safeMenuModel3.setText("安全参数");
        return kotlin.collections.u.p(safeMenuModel, safeMenuModel2, safeMenuModel3);
    }

    private final List<Object> x() {
        SafeModeManager.SafeModeParam safeModeParamF = SafeModeManager.f();
        ArrayList arrayList = new ArrayList();
        if (AppUtils.b()) {
            SafeServerConfigModel safeServerConfigModel = new SafeServerConfigModel();
            safeServerConfigModel.setText("模拟高速项目限速：");
            safeServerConfigModel.setValue(safeModeParamF.getB2HighSpeed() + "km/h");
            kotlin.v vVar = kotlin.v.f15822a;
            arrayList.add(safeServerConfigModel);
            SafeServerConfigModel safeServerConfigModel2 = new SafeServerConfigModel();
            safeServerConfigModel2.setText("倒车限速：");
            safeServerConfigModel2.setValue(safeModeParamF.getBackSpeed() + "km/h");
            arrayList.add(safeServerConfigModel2);
            SafeServerConfigModel safeServerConfigModel3 = new SafeServerConfigModel();
            safeServerConfigModel3.setText("其他区域限速：");
            safeServerConfigModel3.setValue(safeModeParamF.getB2Speed() + "km/h");
            arrayList.add(safeServerConfigModel3);
        } else {
            SafeSwitchModel safeSwitchModel = new SafeSwitchModel();
            safeSwitchModel.setText("是否显示雷达探测效果图");
            safeSwitchModel.setChecked(safeModeParamF.getShowRadar());
            safeSwitchModel.setOnClick(new Function1<ImageView, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$getSafeConfigList$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(ImageView imageView) {
                    invoke2(imageView);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ImageView it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    this.this$0.p(LocalConfig.ShowRadar, it);
                }
            });
            kotlin.v vVar2 = kotlin.v.f15822a;
            arrayList.add(safeSwitchModel);
            SafeSwitchModel safeSwitchModel2 = new SafeSwitchModel();
            safeSwitchModel2.setText("是否启用雷达警报声");
            safeSwitchModel2.setChecked(safeModeParamF.getRingRadar());
            safeSwitchModel2.setOnClick(new Function1<ImageView, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$getSafeConfigList$2$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(ImageView imageView) {
                    invoke2(imageView);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ImageView it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    this.this$0.p(LocalConfig.RingRadar, it);
                }
            });
            arrayList.add(safeSwitchModel2);
            SafeSwitchModel safeSwitchModel3 = new SafeSwitchModel();
            safeSwitchModel3.setText("行驶中双手离开方向盘");
            safeSwitchModel3.setChecked(safeModeParamF.getWheel());
            safeSwitchModel3.setOnClick(new Function1<ImageView, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$getSafeConfigList$3$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(ImageView imageView) {
                    invoke2(imageView);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ImageView it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    this.this$0.p(LocalConfig.WheelBrake, it);
                }
            });
            arrayList.add(safeSwitchModel3);
            SafeServerConfigModel safeServerConfigModel4 = new SafeServerConfigModel();
            safeServerConfigModel4.setText("科二项目内前进限制车速：");
            safeServerConfigModel4.setValue(safeModeParamF.getSpeed() + "km/h");
            arrayList.add(safeServerConfigModel4);
            SafeServerConfigModel safeServerConfigModel5 = new SafeServerConfigModel();
            safeServerConfigModel5.setText("科二项目外前进限制车速：");
            safeServerConfigModel5.setValue(safeModeParamF.getProjectOutSpeed() + "km/h");
            arrayList.add(safeServerConfigModel5);
            SafeServerConfigModel safeServerConfigModel6 = new SafeServerConfigModel();
            safeServerConfigModel6.setText("科三限速：");
            safeServerConfigModel6.setValue(safeModeParamF.getK3Speed() + "km/h");
            arrayList.add(safeServerConfigModel6);
            SafeServerConfigModel safeServerConfigModel7 = new SafeServerConfigModel();
            safeServerConfigModel7.setText("科三直线行驶和加减档项目限速：");
            safeServerConfigModel7.setValue(safeModeParamF.getK3StraightSpeed() + "km/h");
            arrayList.add(safeServerConfigModel7);
        }
        SafeSwitchModel safeSwitchModel4 = new SafeSwitchModel();
        safeSwitchModel4.setText("是否启用限制车速");
        safeSwitchModel4.setChecked(safeModeParamF.getHardwareSpeedBrake());
        safeSwitchModel4.setOnClick(new Function1<ImageView, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$getSafeConfigList$11$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(ImageView imageView) {
                invoke2(imageView);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ImageView it) {
                kotlin.jvm.internal.r.e(it, "it");
                this.this$0.p(LocalConfig.SpeedBrake, it);
            }
        });
        kotlin.v vVar3 = kotlin.v.f15822a;
        arrayList.add(safeSwitchModel4);
        if (cn.mucang.android.jiakaoyi.signal.com.p.b()) {
            SafeServerConfigModel safeServerConfigModel8 = new SafeServerConfigModel();
            safeServerConfigModel8.setText("后退限制车速：");
            safeServerConfigModel8.setValue(safeModeParamF.getBackSpeed() + "km/h");
            arrayList.add(safeServerConfigModel8);
        }
        SafeServerConfigModel safeServerConfigModel9 = new SafeServerConfigModel();
        safeServerConfigModel9.setText("行驶中开车门刹车：");
        safeServerConfigModel9.setValue(safeModeParamF.getHardwareDoorBrake() ? "开启" : "关闭");
        arrayList.add(safeServerConfigModel9);
        SafeServerConfigModel safeServerConfigModel10 = new SafeServerConfigModel();
        safeServerConfigModel10.setText("行驶中解安全带刹车：");
        safeServerConfigModel10.setValue(safeModeParamF.getHardwareBeltBrake() ? "开启" : "关闭");
        arrayList.add(safeServerConfigModel10);
        SafeServerConfigModel safeServerConfigModel11 = new SafeServerConfigModel();
        safeServerConfigModel11.setText("后溜安全距离：");
        safeServerConfigModel11.setValue(safeModeParamF.getHouLiu() + "cm");
        arrayList.add(safeServerConfigModel11);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(final boolean z) {
        Safer.d(z, new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$handleSwitch$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(boolean z2) {
                Object next;
                HashMap map = this.this$0.c;
                if (map == null) {
                    kotlin.jvm.internal.r.u("itemMap");
                    throw null;
                }
                List list = (List) map.get(1);
                if (list != null) {
                    Iterator it = list.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!(next instanceof SafeSwitchModel));
                } else {
                    next = null;
                    break;
                }
                SafeSwitchModel safeSwitchModel = next instanceof SafeSwitchModel ? (SafeSwitchModel) next : null;
                if (z) {
                    cn.mucang.android.jiakaoyi.framework.base.l.a.d("安全系统启用成功", R.drawable.ic_safe_ok);
                    if (safeSwitchModel != null) {
                        safeSwitchModel.setChecked(false);
                    }
                    RecyclerView.Adapter adapter = this.this$0.g().dataRv.getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                    RainModeMgr.f();
                    return;
                }
                t1 t1Var = SafeDataManageActivity.f7847e;
                if (t1Var != null) {
                    t1.a.a(t1Var, null, 1, null);
                }
                SafeDataManageActivity.a aVar = SafeDataManageActivity.f7846d;
                SafeDataManageActivity.f7847e = null;
                LiveBus.d(SafeCountDown.class).l(new SafeCountDown(0, true));
                if (safeSwitchModel != null) {
                    safeSwitchModel.setChecked(true);
                }
                RecyclerView.Adapter adapter2 = this.this$0.g().dataRv.getAdapter();
                if (adapter2 == null) {
                    return;
                }
                adapter2.notifyDataSetChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(SafeDataManageActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "安全参数管理";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        this.c = v();
        g().title.titleTv.setText("安全参数管理");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SafeDataManageActivity.z(this.f7885a, view);
            }
        });
        g().menuRv.setLayoutManager(new LinearLayoutManager(this));
        RecyclerView recyclerView = g().menuRv;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(SafeMenuModel.class, new SafeMenuItemBinder(new Function1<SafeMenuModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.SafeDataManageActivity$init$2$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(SafeMenuModel safeMenuModel) {
                invoke2(safeMenuModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SafeMenuModel clickItem) {
                kotlin.jvm.internal.r.e(clickItem, "clickItem");
                this.this$0.q(clickItem);
            }
        }));
        fVar.i(this.b);
        kotlin.v vVar = kotlin.v.f15822a;
        recyclerView.setAdapter(fVar);
        g().dataRv.setLayoutManager(new LinearLayoutManager(this));
        RecyclerView recyclerView2 = g().dataRv;
        com.drakeet.multitype.f fVar2 = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar2.g(SafeCmdModel.class, new SafeCmdItemBinder());
        fVar2.g(SafeArgumentModel.class, new SafeArgumentsItemBinder());
        fVar2.g(SafeSwitchModel.class, new SafeSwitchItemBinder());
        fVar2.g(SafeServerConfigModel.class, new SafeServerItemBinder());
        recyclerView2.setAdapter(fVar2);
        H();
        LiveBus.d(SafeModeChanged.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.w
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SafeDataManageActivity.A(this.f7887a, (SafeModeChanged) obj);
            }
        });
        LiveBus.d(SafeSwitchChanged.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.v
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SafeDataManageActivity.B(this.f7886a, (SafeSwitchChanged) obj);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        q((SafeMenuModel) kotlin.collections.s.c0(this.b));
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    @SuppressLint({"SetTextI18n"})
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        g().speedTv.setText("车速：" + signalGetter.d().b + (char) 30721);
        g().rpmTv.setText(kotlin.jvm.internal.r.m("转速：", Integer.valueOf(signalGetter.d().f5265a)));
    }
}
