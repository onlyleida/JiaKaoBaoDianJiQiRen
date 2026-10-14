package cn.mucang.android.jiakaoyi.teachingk2.calibration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.q;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityCalibartionBinding;
import cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.AutoAssistParamsSender;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeMenuModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.binder.SafeMenuItemBinder;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;
import cn.mucang.jiakaoyi.uilib.ui.widget.ListPopupHelper;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001*B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\rH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u001a\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\f0\u0017H\u0002J\u001a\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\f0\u0017H\u0002J\u001a\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\f0\u0017H\u0002J\u001a\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\f0\u0017H\u0002J\u001a\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\f0\u0017H\u0002J\u001a\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\f0\u0017H\u0002J0\u0010\u001d\u001a*\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006j\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`\nH\u0002J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\b\u0010\u001f\u001a\u00020\u0011H\u0016J\b\u0010 \u001a\u00020\u000fH\u0014J\b\u0010!\u001a\u00020\u000fH\u0002J\b\u0010\"\u001a\u00020\u000fH\u0002J\b\u0010#\u001a\u00020\u000fH\u0002J\b\u0010$\u001a\u00020\u000fH\u0014J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020'H\u0017J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\tH\u0002R:\u0010\u0005\u001a.\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0018\u00010\u0006j\u0016\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0018\u0001`\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCalibartionBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "itemMap", "Ljava/util/HashMap;", "", "", "Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;", "Lkotlin/collections/HashMap;", "menuList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;", "calibrationHalfClutch", "", "value", "", "type", "changeMenu", "clickItem", "chooseHalfClutchType", "createBrakeData", "Lkotlin/Pair;", "createClutchData", "createGasData", "createHalfClutchData", "createThrottleData", "createWheelData", "getItemMap", "getMenuList", "getStatName", "init", "initAutoAssist", "initHalfClutch", "initMotor", "onDestroy", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "saveValue", "data", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class CalibartionActivity extends BaseViewBindingActivity<ActivityCalibartionBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f6442d = new a(null);
    private List<SafeMenuModel> b = u();
    private HashMap<Integer, List<CalibrationItem>> c;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$Companion;", "", "()V", "TYPE_MENU_AUTO_ASSIST", "", "TYPE_MENU_AUTO_MOTOR", "TYPE_MENU_BRAKE", "TYPE_MENU_CLUTCH", "TYPE_MENU_GAS_PEDAL", "TYPE_MENU_HALF_CLUTCH", "TYPE_MENU_MANUAL_MOTOR", "TYPE_MENU_STEERING_WHEEL", "TYPE_MENU_THROTTLE", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            if (CarInfoManager.b()) {
                ActivityUtils.c(context, new Intent(context, (Class<?>) CalibartionActivity.class));
            } else {
                u.h("尚未绑定车辆信息，请先绑定");
            }
        }
    }

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0017J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000e"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initMotor$3", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        @SuppressLint({"SetTextI18n"})
        public void afterTextChanged(Editable s) {
            CalibartionActivity calibartionActivity = CalibartionActivity.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                if (Integer.parseInt(String.valueOf(s)) > 100) {
                    calibartionActivity.g().motorLayout.etValue.setText("100");
                }
                Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(CalibartionActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.n(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(CalibartionActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.n(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(CalibartionActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.l(this$0.g().halfClutchLayout.etHalfClutchStart.getText().toString(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(CalibartionActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.l(this$0.g().halfClutchLayout.etHalfClutchEnd.getText().toString(), 2);
    }

    private final void E() {
        g().motorLayout.targetTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.F(view);
            }
        });
        g().motorLayout.wayTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.G(view);
            }
        });
        g().motorLayout.etValue.addTextChangedListener(new b());
        g().motorLayout.confirm.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.H(this.f6456a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(View it) {
        r.d(it, "it");
        ListPopupHelper.c(it, kotlin.collections.u.m("刹车电机", "离合电机"), null, 0, false, 28, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(View it) {
        r.d(it, "it");
        ListPopupHelper.c(it, kotlin.collections.u.m("上安装", "下安装"), null, 0, false, 28, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(CalibartionActivity this$0, View view) {
        r.e(this$0, "this$0");
        byte b2 = r.a(this$0.g().motorLayout.targetTv.getText().toString(), "刹车电机") ? (byte) 1 : (byte) 2;
        boolean z = !r.a(this$0.g().motorLayout.wayTv.getText().toString(), "上安装");
        int i = Integer.parseInt(this$0.g().motorLayout.etValue.getText().toString());
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
        jLoadingDialog.setCancelable(false);
        jLoadingDialog.setCanceledOnTouchOutside(false);
        jLoadingDialog.b("正在标定");
        TextView textView = this$0.g().motorLayout.wayTv;
        r.d(textView, "viewBinding.motorLayout.wayTv");
        q.p(!(textView.getVisibility() == 0), b2, z ? (byte) 1 : (byte) 0, (byte) i, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.j
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                CalibartionActivity.I(jLoadingDialog, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(JLoadingDialog dialog, Boolean bool) {
        r.e(dialog, "$dialog");
        DialogExtensionKt.b(dialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(final CalibrationItem calibrationItem) {
        Cmd cmd = calibrationItem.cmd;
        Cmd cmd2 = Cmd.OrderCalibarWheel;
        if (!cmd.equals(cmd2)) {
            q.n(calibrationItem.cmd, calibrationItem.calibrationType);
            return;
        }
        int i = calibrationItem.value;
        if (i > 0 || !calibrationItem.needInputValue) {
            q.o(cmd2, calibrationItem.calibrationType, i, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.d
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    CalibartionActivity.W(calibrationItem, (cn.mucang.android.jiakaoyi.signal.communicate.receive.i) obj);
                }
            });
        } else {
            u.h("标定角度请输入正数");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(CalibrationItem data, cn.mucang.android.jiakaoyi.signal.communicate.receive.i iVar) {
        r.e(data, "$data");
        int i = data.calibrationType;
        if (i == 0) {
            CalibarDataUtil.r(data.value);
            return;
        }
        if (i == 2) {
            CalibarDataUtil.s(data.value);
        } else {
            if (i != 3) {
                return;
            }
            CalibarDataUtil.r(Videoio.CAP_PROP_XI_HDR_KNEEPOINT_COUNT);
            CalibarDataUtil.s(Videoio.CAP_PROP_XI_HDR_KNEEPOINT_COUNT);
        }
    }

    private final void l(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            u.h("输入不能为空");
            return;
        }
        int i2 = Integer.parseInt(str);
        if (i2 <= 0) {
            u.h("标定离合半联动请输入正数");
            return;
        }
        if (i2 > 100) {
            u.h("离合半联动不能超过100");
            return;
        }
        if (i == 0) {
            CalibarDataUtil.p(i2);
        } else if (i == 2) {
            CalibarDataUtil.o(i2);
        }
        u.h("标定成功");
        Object systemService = getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(SafeMenuModel safeMenuModel) {
        List<CalibrationItem> list;
        HashMap<Integer, List<CalibrationItem>> map;
        List<CalibrationItem> list2;
        if (safeMenuModel.getId() == 6 || safeMenuModel.getId() == 7 || safeMenuModel.getId() == 9 || safeMenuModel.getId() == 5) {
            RecyclerView recyclerView = g().dataRv;
            r.d(recyclerView, "viewBinding.dataRv");
            recyclerView.setVisibility(8);
            g().motorLayout.getRoot().setVisibility(8);
            g().assistLayout.getRoot().setVisibility(8);
            g().halfClutchLayout.getRoot().setVisibility(8);
            g().motorLayout.getRoot().setVisibility(8);
            int id = safeMenuModel.getId();
            if (id == 5) {
                g().halfClutchLayout.getRoot().setVisibility(0);
            } else if (id == 6 || id == 7) {
                g().motorLayout.getRoot().setVisibility(0);
                TextView textView = g().motorLayout.wayTv;
                r.d(textView, "viewBinding.motorLayout.wayTv");
                textView.setVisibility(safeMenuModel.getIsAuto() ^ true ? 0 : 8);
                TextView textView2 = g().motorLayout.temp2;
                r.d(textView2, "viewBinding.motorLayout.temp2");
                textView2.setVisibility(safeMenuModel.getIsAuto() ^ true ? 0 : 8);
            } else if (id == 9) {
                g().assistLayout.getRoot().setVisibility(0);
            }
        } else {
            RecyclerView recyclerView2 = g().dataRv;
            r.d(recyclerView2, "viewBinding.dataRv");
            recyclerView2.setVisibility(0);
            g().motorLayout.getRoot().setVisibility(8);
            g().assistLayout.getRoot().setVisibility(8);
            g().halfClutchLayout.getRoot().setVisibility(8);
        }
        for (SafeMenuModel safeMenuModel2 : this.b) {
            safeMenuModel2.setSelected(false);
            if (r.a(safeMenuModel2, safeMenuModel)) {
                safeMenuModel2.setSelected(true);
                if (safeMenuModel.getId() == 1 && (map = this.c) != null && (list2 = map.get(Integer.valueOf(safeMenuModel2.getId()))) != null) {
                    list2.get(0).value = CalibarDataUtil.h();
                    list2.get(2).value = CalibarDataUtil.i();
                }
                HashMap<Integer, List<CalibrationItem>> map2 = this.c;
                if (map2 != null && (list = map2.get(Integer.valueOf(safeMenuModel2.getId()))) != null) {
                    RecyclerView.Adapter adapter = g().dataRv.getAdapter();
                    com.drakeet.multitype.f fVar = adapter instanceof com.drakeet.multitype.f ? (com.drakeet.multitype.f) adapter : null;
                    if (fVar != null) {
                        fVar.i(list);
                    }
                    RecyclerView.Adapter adapter2 = g().dataRv.getAdapter();
                    if (adapter2 != null) {
                        adapter2.notifyDataSetChanged();
                    }
                }
            }
        }
        RecyclerView.Adapter adapter3 = g().menuRv.getAdapter();
        if (adapter3 == null) {
            return;
        }
        adapter3.notifyDataSetChanged();
    }

    private final void n(int i) {
        g().halfClutchLayout.ivRpm.setSelected(i == 1);
        g().halfClutchLayout.ivXc.setSelected(i == 0);
        CalibarDataUtil.q(i);
    }

    private final Pair<Integer, List<CalibrationItem>> o() {
        CalibrationItem calibrationItem = new CalibrationItem();
        calibrationItem.stepName = "第一步：松开脚刹";
        calibrationItem.head = "松开脚刹";
        Cmd cmd = Cmd.OrderCalibarBrake;
        calibrationItem.cmd = cmd;
        calibrationItem.isStart = true;
        calibrationItem.calibrationType = 0;
        calibrationItem.startText = "开始标定脚刹行程";
        v vVar = v.f15822a;
        CalibrationItem calibrationItem2 = new CalibrationItem();
        calibrationItem2.stepName = "第二步：踩满脚刹";
        calibrationItem2.head = "踩满脚刹";
        calibrationItem2.cmd = cmd;
        calibrationItem2.calibrationType = 2;
        return new Pair<>(3, kotlin.collections.u.p(calibrationItem, calibrationItem2));
    }

    private final Pair<Integer, List<CalibrationItem>> p() {
        CalibrationItem calibrationItem = new CalibrationItem();
        calibrationItem.stepName = "第一步：松开离合";
        calibrationItem.head = "松开离合";
        Cmd cmd = Cmd.OrderCalibarClutch;
        calibrationItem.cmd = cmd;
        calibrationItem.calibrationType = 0;
        calibrationItem.isStart = true;
        calibrationItem.startText = "开始标定离合行程";
        v vVar = v.f15822a;
        CalibrationItem calibrationItem2 = new CalibrationItem();
        calibrationItem2.stepName = "第二步：踩满离合";
        calibrationItem2.head = "踩满离合";
        calibrationItem2.cmd = cmd;
        calibrationItem2.calibrationType = 2;
        return new Pair<>(2, kotlin.collections.u.p(calibrationItem, calibrationItem2));
    }

    private final Pair<Integer, List<CalibrationItem>> q() {
        CalibrationItem calibrationItem = new CalibrationItem();
        calibrationItem.stepName = "第一步：请松开油门后，点击确认";
        calibrationItem.head = "松开油门";
        Cmd cmd = Cmd.OrderCalibarGas;
        calibrationItem.cmd = cmd;
        calibrationItem.isStart = true;
        calibrationItem.calibrationType = 0;
        calibrationItem.startText = "开始标定油门";
        v vVar = v.f15822a;
        CalibrationItem calibrationItem2 = new CalibrationItem();
        calibrationItem2.stepName = "第二步：踩满油门后，点击确认";
        calibrationItem2.head = "踩满油门";
        calibrationItem2.cmd = cmd;
        calibrationItem2.calibrationType = 1;
        calibrationItem2.tip = "注意：油门标定，需要将车辆熄火，避免出现危险情况。";
        return new Pair<>(8, kotlin.collections.u.p(calibrationItem, calibrationItem2));
    }

    private final Pair<Integer, List<CalibrationItem>> r() {
        CalibrationItem calibrationItem = new CalibrationItem();
        calibrationItem.stepName = "第一步：松开油门";
        calibrationItem.head = "松开油门";
        Cmd cmd = Cmd.OrderCalibarThrottle;
        calibrationItem.cmd = cmd;
        calibrationItem.isStart = true;
        calibrationItem.calibrationType = 0;
        calibrationItem.startText = "开始标定油门行程";
        v vVar = v.f15822a;
        CalibrationItem calibrationItem2 = new CalibrationItem();
        calibrationItem2.stepName = "第二步：踩满油门";
        calibrationItem2.head = "踩满油门";
        calibrationItem2.cmd = cmd;
        calibrationItem2.calibrationType = 2;
        return new Pair<>(4, kotlin.collections.u.p(calibrationItem, calibrationItem2));
    }

    private final Pair<Integer, List<CalibrationItem>> s() {
        CalibrationItem calibrationItem = new CalibrationItem();
        calibrationItem.stepName = "第一步：方向盘左方向打满";
        calibrationItem.head = "左打满方向";
        calibrationItem.value = CalibarDataUtil.h();
        Cmd cmd = Cmd.OrderCalibarWheel;
        calibrationItem.cmd = cmd;
        calibrationItem.isStart = true;
        calibrationItem.startText = "开始标定方向盘";
        calibrationItem.calibrationType = 0;
        calibrationItem.needInputValue = true;
        v vVar = v.f15822a;
        CalibrationItem calibrationItem2 = new CalibrationItem();
        calibrationItem2.stepName = "第二步：方向盘回正";
        calibrationItem2.head = "打回正方向";
        calibrationItem2.value = 0;
        calibrationItem2.cmd = cmd;
        calibrationItem2.calibrationType = 1;
        CalibrationItem calibrationItem3 = new CalibrationItem();
        calibrationItem3.stepName = "第三步：方向盘右方向打满";
        calibrationItem3.head = "右打满方向";
        calibrationItem3.value = CalibarDataUtil.i();
        calibrationItem3.cmd = cmd;
        calibrationItem3.calibrationType = 2;
        calibrationItem3.needInputValue = true;
        CalibrationItem calibrationItem4 = new CalibrationItem();
        calibrationItem4.stepName = "复位参数(方向盘重新标定时需要)";
        calibrationItem4.head = "复位参数";
        calibrationItem4.cmd = cmd;
        calibrationItem4.calibrationType = 3;
        return new Pair<>(1, kotlin.collections.u.p(calibrationItem, calibrationItem2, calibrationItem3, calibrationItem4));
    }

    private final HashMap<Integer, List<CalibrationItem>> t() {
        return o0.j(s(), p(), o(), r(), q());
    }

    private final List<SafeMenuModel> u() {
        ArrayList arrayList = new ArrayList();
        SafeMenuModel safeMenuModel = new SafeMenuModel();
        safeMenuModel.setId(1);
        safeMenuModel.setText("方向盘标定");
        safeMenuModel.setSelected(true);
        v vVar = v.f15822a;
        arrayList.add(safeMenuModel);
        if (AppUtils.c()) {
            SafeMenuModel safeMenuModel2 = new SafeMenuModel();
            safeMenuModel2.setId(4);
            safeMenuModel2.setText("油门行程标定");
            safeMenuModel2.setSelected(false);
            arrayList.add(safeMenuModel2);
            SafeMenuModel safeMenuModel3 = new SafeMenuModel();
            safeMenuModel3.setId(8);
            safeMenuModel3.setText("油门标定");
            safeMenuModel3.setSelected(true);
            arrayList.add(safeMenuModel3);
            return arrayList;
        }
        if (!AppUtils.b()) {
            SafeMenuModel safeMenuModel4 = new SafeMenuModel();
            safeMenuModel4.setId(2);
            safeMenuModel4.setText("离合行程标定");
            safeMenuModel4.setSelected(false);
            arrayList.add(safeMenuModel4);
            SafeMenuModel safeMenuModel5 = new SafeMenuModel();
            safeMenuModel5.setId(3);
            safeMenuModel5.setText("刹车行程标定");
            safeMenuModel5.setSelected(false);
            arrayList.add(safeMenuModel5);
            SafeMenuModel safeMenuModel6 = new SafeMenuModel();
            safeMenuModel6.setId(4);
            safeMenuModel6.setText("油门行程标定");
            safeMenuModel6.setSelected(false);
            arrayList.add(safeMenuModel6);
            SafeMenuModel safeMenuModel7 = new SafeMenuModel();
            safeMenuModel7.setId(5);
            safeMenuModel7.setText("离合半联动标定");
            safeMenuModel7.setSelected(false);
            arrayList.add(safeMenuModel7);
            SafeMenuModel safeMenuModel8 = new SafeMenuModel();
            safeMenuModel8.setId(9);
            safeMenuModel8.setText("自动辅助标定");
            safeMenuModel8.setSelected(false);
            arrayList.add(safeMenuModel8);
            SafeMenuModel safeMenuModel9 = new SafeMenuModel();
            safeMenuModel9.setId(6);
            safeMenuModel9.setText("手动电机标定");
            safeMenuModel9.setSelected(false);
            arrayList.add(safeMenuModel9);
            SafeMenuModel safeMenuModel10 = new SafeMenuModel();
            safeMenuModel10.setId(7);
            safeMenuModel10.setText("自动电机标定");
            safeMenuModel10.setSelected(false);
            safeMenuModel10.setAuto(true);
            arrayList.add(safeMenuModel10);
            SafeMenuModel safeMenuModel11 = new SafeMenuModel();
            safeMenuModel11.setId(8);
            safeMenuModel11.setText("油门标定");
            safeMenuModel11.setSelected(false);
            arrayList.add(safeMenuModel11);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(CalibartionActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    private final void w() {
        g().assistLayout.etHalfClutchStart.setText(String.valueOf(CalibarDataUtil.a()));
        g().assistLayout.etThrottle.setText(String.valueOf(CalibarDataUtil.j()));
        g().assistLayout.etCtrlSpeedBrake.setText(String.valueOf(CalibarDataUtil.c()));
        g().assistLayout.etCtrSpeedClutch.setText(String.valueOf(CalibarDataUtil.d()));
        g().assistLayout.etCtrBackClutch.setText(String.valueOf(CalibarDataUtil.b()));
        g().assistLayout.brakeDistanceEt.setText(String.valueOf(cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.c()));
        g().assistLayout.brakeCoefficientEt.setText(String.valueOf(cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.b()));
        g().assistLayout.confirm.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.x(this.f6449a, view);
            }
        });
        g().assistLayout.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.y(this.f6450a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(CalibartionActivity this$0, View view) {
        r.e(this$0, "this$0");
        final String string = this$0.g().assistLayout.etHalfClutchStart.getText().toString();
        final String string2 = this$0.g().assistLayout.etThrottle.getText().toString();
        final String string3 = this$0.g().assistLayout.etCtrlSpeedBrake.getText().toString();
        final String string4 = this$0.g().assistLayout.etCtrSpeedClutch.getText().toString();
        final String string5 = this$0.g().assistLayout.etCtrBackClutch.getText().toString();
        if (TextUtils.isEmpty(string)) {
            u.h("请输入离合半联动开始值");
            return;
        }
        if (TextUtils.isEmpty(string2)) {
            u.h("请输入油门值");
            return;
        }
        if (TextUtils.isEmpty(string3)) {
            u.h("请输入控速刹车空行程值");
            return;
        }
        if (TextUtils.isEmpty(string4)) {
            u.h("请输入前进控速半联动离合行程值");
        } else if (TextUtils.isEmpty(string5)) {
            u.h("请输入后退控速半联动离合行程值");
        } else {
            AutoAssistParamsSender.f6144a.a(Integer.parseInt(string), Integer.parseInt(string2), Integer.parseInt(string3), Integer.parseInt(string4), Integer.parseInt(string5), true, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.CalibartionActivity$initAutoAssist$1$1
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
                    CalibarDataUtil.k(Integer.parseInt(string));
                    CalibarDataUtil.t(Integer.parseInt(string2));
                    CalibarDataUtil.m(Integer.parseInt(string3));
                    CalibarDataUtil.n(Integer.parseInt(string4));
                    CalibarDataUtil.l(Integer.parseInt(string5));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(CalibartionActivity this$0, View view) {
        r.e(this$0, "this$0");
        String string = this$0.g().assistLayout.brakeDistanceEt.getText().toString();
        String string2 = this$0.g().assistLayout.brakeCoefficientEt.getText().toString();
        if (TextUtils.isEmpty(string)) {
            u.h("请输入刹车距离");
        } else {
            if (TextUtils.isEmpty(string2)) {
                u.h("请输入刹车距离系数");
                return;
            }
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.m(Integer.parseInt(string));
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d.l(Integer.parseInt(string2));
            u.h("保存成功");
        }
    }

    private final void z() {
        TextView textView = g().halfClutchLayout.tipTv;
        SpannableString spannableString = new SpannableString(g().halfClutchLayout.tipTv.getText());
        spannableString.setSpan(new StyleSpan(1), 0, 5, 33);
        v vVar = v.f15822a;
        textView.setText(spannableString);
        g().halfClutchLayout.etHalfClutchStart.setText(String.valueOf(CalibarDataUtil.f()));
        g().halfClutchLayout.etHalfClutchEnd.setText(String.valueOf(CalibarDataUtil.e()));
        g().halfClutchLayout.ivRpm.setSelected(CalibarDataUtil.g() == 1);
        g().halfClutchLayout.ivXc.setSelected(CalibarDataUtil.g() == 0);
        g().halfClutchLayout.ivXc.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.A(this.f6446a, view);
            }
        });
        g().halfClutchLayout.ivRpm.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.B(this.f6452a, view);
            }
        });
        g().halfClutchLayout.btnHalfClutchStart.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.C(this.f6457a, view);
            }
        });
        g().halfClutchLayout.btnHalfClutchEnd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.D(this.f6454a, view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车机参数标定";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().title.titleTv.setText("车机参数标定");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibartionActivity.v(this.f6455a, view);
            }
        });
        g().menuRv.setLayoutManager(new LinearLayoutManager(this));
        RecyclerView recyclerView = g().menuRv;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(SafeMenuModel.class, new SafeMenuItemBinder(new Function1<SafeMenuModel, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.CalibartionActivity$init$2$1
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
                this.this$0.m(clickItem);
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
        fVar2.g(CalibrationItem.class, new CalibarItemBinder(new Function1<CalibrationItem, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.calibration.CalibartionActivity$init$3$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(CalibrationItem calibrationItem) {
                invoke2(calibrationItem);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(CalibrationItem it) {
                r.e(it, "it");
                this.this$0.V(it);
            }
        }));
        recyclerView2.setAdapter(fVar2);
        z();
        E();
        w();
        this.c = t();
        m(this.b.get(0));
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    @SuppressLint({"SetTextI18n"})
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        g().wheelDegree.setText(r.m("方向盘：", Integer.valueOf(signalGetter.d().r)));
        g().clutchTravel.setText(r.m("离合行程：", Integer.valueOf(signalGetter.d().I)));
        g().brakeTravel.setText(r.m("刹车行程：", Integer.valueOf(signalGetter.d().H)));
        g().throttleTravel.setText(r.m("油门行程：", Integer.valueOf(signalGetter.d().i)));
        g().speedTv.setText("速度：" + signalGetter.d().b + (char) 30721);
        g().rpmTv.setText("转速：" + signalGetter.d().f5265a + (char) 30721);
    }
}
