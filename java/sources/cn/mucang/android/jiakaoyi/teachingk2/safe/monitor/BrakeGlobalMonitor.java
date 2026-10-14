package cn.mucang.android.jiakaoyi.teachingk2.safe.monitor;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.location.Location;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeSource;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.z;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.circle.BrakeDialogShowEvent;
import cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.AutoShuttleController;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecorder;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.api.DeviceReportApi;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.NewSafeTriggerDialog;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.x;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.TeachEventHandler;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\"\u001a\u00020#H\u0007J\b\u0010$\u001a\u00020%H\u0007J\u0010\u0010&\u001a\u00020#2\b\u0010'\u001a\u0004\u0018\u00010\u0010J\u0010\u0010(\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0016J\u001a\u0010+\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00182\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0002J\u0010\u0010-\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0002J\u0010\u0010.\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\b\u0010\u0002\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u00020\u00108FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/BrakeGlobalMonitor;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "brakeDataLog", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/BrakeDataLog;", "value", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "brakeModel", "getBrakeModel$annotations", "getBrakeModel", "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "setBrakeModel", "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V", "count", "", TtmlNode.ATTR_ID, "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "lastBrakeState", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;", "lastReason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "lastState", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;", "radarData", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveRadarSignal;", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "triggerDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;", "writeCount", "init", "", "isShowing", "", "missBrake", "barrierDesc", "onBrake", "it", "onSignalChanged", "reason", "recordLog", "updateBrakeReason", "uploadBrake", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BrakeGlobalMonitor implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    private static NewSafeTriggerDialog b;
    private static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static cn.mucang.android.jiakaoyi.signal.c.e f7793d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static CarBrakeSource f7795f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f7796g;
    private static z l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BrakeGlobalMonitor f7792a = new BrakeGlobalMonitor();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static BrakeReason f7794e = BrakeReason.None;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static CarBrakeState f7797h = CarBrakeState.STATE_NONE;
    private static final j i = new j();
    private static String j = "";
    private static volatile BrakeModel k = BrakeModel.INSTANCE.c();

    private BrakeGlobalMonitor() {
    }

    public static final BrakeModel a() {
        return k;
    }

    public static final void c() {
        u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.d
            @Override // java.lang.Runnable
            public final void run() {
                BrakeGlobalMonitor.d();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d() {
        x.b();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(f7792a);
        LiveBus.d(z.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                BrakeGlobalMonitor.e((z) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(z zVar) {
        l = zVar;
        i.c(zVar);
    }

    public static final boolean f() {
        NewSafeTriggerDialog newSafeTriggerDialog = b;
        return newSafeTriggerDialog != null && newSafeTriggerDialog.isShowing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(cn.mucang.android.jiakaoyi.signal.c.e eVar, String str) {
        CarBrakeSource carBrakeSource;
        try {
            Result.Companion companion = Result.INSTANCE;
            DeviceReportApi deviceReportApi = new DeviceReportApi();
            String strB = f7792a.b();
            int code = a().getReason().getCode();
            ReceiveSenorInfo receiveSenorInfo = eVar.d().G;
            String string = null;
            if (receiveSenorInfo != null && (carBrakeSource = receiveSenorInfo.safeModuleBrakeReason) != null) {
                string = Integer.valueOf(carBrakeSource.id).toString();
            }
            Result.m139constructorimpl(Boolean.valueOf(deviceReportApi.m(strB, code, string, true, str, String.valueOf(eVar.d().m.gear))));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    private final void n(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        BrakeModel brakeModelB;
        s(eVar);
        if (eVar.d().b >= 1.0f || (eVar.getCurrentPosition().c() && eVar.d().c > 0.2d)) {
            cn.mucang.android.jiakaoyi.framework.log.f.d("刹车弹窗速度不满足:" + eVar.d().b + ',' + eVar.d().c + ',' + eVar.getCurrentPosition().f5282h + ',' + cn.mucang.android.jiakaoyi.signal.handle.gps.f.f5726a);
            return;
        }
        boolean z = false;
        if (!k.canShowDialog()) {
            f7796g = 0;
            return;
        }
        q(eVar);
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed()) {
            return;
        }
        LiveBus.c(k.getReason());
        f7794e = k.getReason();
        ReceiveSenorInfo receiveSenorInfo = eVar.d().G;
        BrakeReason reason = null;
        f7795f = receiveSenorInfo == null ? null : receiveSenorInfo.safeModuleBrakeReason;
        if (k.getReason() != BrakeReason.None) {
            ComponentCallbacks2 context = MucangConfig.getContext();
            TeachEventHandler teachEventHandler = context instanceof TeachEventHandler ? (TeachEventHandler) context : null;
            if (teachEventHandler != null) {
                AutoTeachEvent autoTeachEvent = AutoTeachEvent.CarBrake;
                autoTeachEvent.setExtraTitle(a().getExtraTitle());
                v vVar = v.f15822a;
                if (teachEventHandler.a(autoTeachEvent)) {
                    z = true;
                }
            }
            if (z || AutoShuttleController.f6239a.n()) {
                return;
            }
        }
        NewSafeTriggerDialog newSafeTriggerDialog = b;
        if (newSafeTriggerDialog != null) {
            if (newSafeTriggerDialog != null && (brakeModelB = newSafeTriggerDialog.getF7839a()) != null) {
                reason = brakeModelB.getReason();
            }
            if (reason == k.getReason()) {
                return;
            }
        }
        NewSafeTriggerDialog newSafeTriggerDialog2 = b;
        if (newSafeTriggerDialog2 != null) {
            DialogExtensionKt.b(newSafeTriggerDialog2);
        }
        NewSafeTriggerDialog newSafeTriggerDialog3 = new NewSafeTriggerDialog(activityI, k);
        b = newSafeTriggerDialog3;
        newSafeTriggerDialog3.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.b
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                BrakeGlobalMonitor.o(dialogInterface);
            }
        });
        NewSafeTriggerDialog newSafeTriggerDialog4 = b;
        if (newSafeTriggerDialog4 != null) {
            newSafeTriggerDialog4.show();
        }
        if (k.getReason() == BrakeReason.HouLiu) {
            UserRecorder.g(RecordEvent.HouLiu.getCode());
        } else if (k.getReason() == BrakeReason.Fence) {
            RecordEvent recordEvent = RecordEvent.Fence;
            UserRecorder.g(recordEvent.getCode());
            RobotTips.f7184a.t(kotlin.l.a("", Integer.valueOf(recordEvent.getCode())));
        } else if (k.getReason() == BrakeReason.Radar) {
            RecordEvent recordEvent2 = RecordEvent.Radar;
            UserRecorder.g(recordEvent2.getCode());
            RobotTips.f7184a.t(kotlin.l.a("", Integer.valueOf(recordEvent2.getCode())));
        }
        t(eVar);
        LiveBus.d(BrakeDialogShowEvent.class).l(new BrakeDialogShowEvent(k.getReason(), System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(DialogInterface dialogInterface) {
        if (r.a(dialogInterface, b)) {
            b = null;
            r(BrakeModel.INSTANCE.c());
        }
    }

    private final String p(BrakeReason brakeReason, cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition;
        Location location;
        cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition2;
        Location location2;
        cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition3;
        CarPos carPosC;
        Pos pos;
        CarPos carPosC2;
        Pos pos2;
        CarPos carPosC3;
        CarModel carModelD;
        cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition4;
        Location location3;
        cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition5;
        Location location4;
        cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition6;
        CarPos carPosC4;
        Pos pos3;
        CarPos carPosC5;
        Pos pos4;
        CarPos carPosC6;
        CarModel carModelD2;
        String string = null;
        if (brakeReason != BrakeReason.Radar || l == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(brakeReason.getZhTitle());
            sb.append(", ");
            sb.append(b());
            sb.append(", 车中心位置:lon=");
            sb.append((eVar == null || (currentPosition = eVar.getCurrentPosition()) == null || (location = currentPosition.f5281g) == null) ? null : Double.valueOf(location.getLongitude()));
            sb.append(", lat=");
            sb.append((eVar == null || (currentPosition2 = eVar.getCurrentPosition()) == null || (location2 = currentPosition2.f5281g) == null) ? null : Double.valueOf(location2.getLatitude()));
            sb.append(", 航向角:");
            sb.append((eVar == null || (currentPosition3 = eVar.getCurrentPosition()) == null) ? null : Float.valueOf(currentPosition3.f5277a));
            sb.append(", x=");
            sb.append((eVar == null || (carPosC = eVar.c()) == null || (pos = carPosC.center) == null) ? null : Double.valueOf(pos.x));
            sb.append(", y=");
            sb.append((eVar == null || (carPosC2 = eVar.c()) == null || (pos2 = carPosC2.center) == null) ? null : Double.valueOf(pos2.y));
            sb.append(", degree=");
            sb.append((eVar == null || (carPosC3 = eVar.c()) == null) ? null : Double.valueOf(carPosC3.degree));
            sb.append("\n信号:");
            if (eVar != null && (carModelD = eVar.d()) != null) {
                string = carModelD.toString();
            }
            sb.append((Object) string);
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(brakeReason.getZhTitle());
        sb2.append(", ");
        sb2.append(b());
        sb2.append(", 车中心位置:lon=");
        sb2.append((eVar == null || (currentPosition4 = eVar.getCurrentPosition()) == null || (location3 = currentPosition4.f5281g) == null) ? null : Double.valueOf(location3.getLongitude()));
        sb2.append(", lat=");
        sb2.append((eVar == null || (currentPosition5 = eVar.getCurrentPosition()) == null || (location4 = currentPosition5.f5281g) == null) ? null : Double.valueOf(location4.getLatitude()));
        sb2.append(", 航向角:");
        sb2.append((eVar == null || (currentPosition6 = eVar.getCurrentPosition()) == null) ? null : Float.valueOf(currentPosition6.f5277a));
        sb2.append(", x=");
        sb2.append((eVar == null || (carPosC4 = eVar.c()) == null || (pos3 = carPosC4.center) == null) ? null : Double.valueOf(pos3.x));
        sb2.append(", y=");
        sb2.append((eVar == null || (carPosC5 = eVar.c()) == null || (pos4 = carPosC5.center) == null) ? null : Double.valueOf(pos4.y));
        sb2.append(", degree=");
        sb2.append((eVar == null || (carPosC6 = eVar.c()) == null) ? null : Double.valueOf(carPosC6.degree));
        sb2.append(", \n雷达:");
        sb2.append((Object) JSON.toJSONString(l));
        sb2.append("\n信号:");
        if (eVar != null && (carModelD2 = eVar.d()) != null) {
            string = carModelD2.toString();
        }
        sb2.append((Object) string);
        return sb2.toString();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    private final void q(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (k.getReason() == f7794e) {
            CarBrakeSource carBrakeSource = f7795f;
            ReceiveSenorInfo receiveSenorInfo = eVar.d().G;
            if (carBrakeSource != (receiveSenorInfo == null ? null : receiveSenorInfo.safeModuleBrakeReason)) {
                f7796g = 0;
            }
        } else {
            f7796g = 0;
        }
        int i2 = f7796g;
        if (i2 < 1) {
            f7796g = i2 + 1;
            cn.mucang.android.jiakaoyi.framework.log.f.d(p(k.getReason(), eVar));
        }
    }

    public static final void r(BrakeModel value) {
        r.e(value, "value");
        if (value.getReason() != k.getReason()) {
            cn.mucang.android.jiakaoyi.framework.log.f.d(r.m("设置刹车理由:", value.getReason()));
            value.mergeBrake(k);
        }
        k = value;
        if (value.getReason() == BrakeReason.None) {
            j = String.valueOf(System.currentTimeMillis());
        } else {
            i.c = value.getReason();
        }
    }

    private final void s(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        String strX;
        String strX2;
        ReceiveSenorInfo receiveSenorInfo = eVar.d().G;
        CarBrakeSource carBrakeSource = receiveSenorInfo == null ? null : receiveSenorInfo.safeModuleBrakeReason;
        if (carBrakeSource != null) {
            if (!carBrakeSource.isBrakedByRadar() && !carBrakeSource.isBrakedByCamera()) {
                if (carBrakeSource.isBrakedBySpeed()) {
                    r(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.HardwareSpeed, null, false, 6, null));
                    return;
                } else if (carBrakeSource.isDrivingOpenDoor()) {
                    r(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.Door, null, false, 6, null));
                    return;
                } else {
                    if (carBrakeSource.isDrivingOpenBelt()) {
                        r(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.Belt, null, false, 6, null));
                        return;
                    }
                    return;
                }
            }
            r(BrakeModel.Companion.b(BrakeModel.INSTANCE, BrakeReason.Radar, null, false, 6, null));
            BrakeModel brakeModel = k;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_xx_obstacle_brake);
            r.d(strA, "getString(R.string.teachbase_xx_obstacle_brake)");
            String str = String.format(strA, Arrays.copyOf(new Object[]{carBrakeSource.src}, 1));
            r.d(str, "java.lang.String.format(format, *args)");
            brakeModel.setExtraTitle(str);
            k.setExtraZhTitle("障碍物刹车(" + ((Object) carBrakeSource.zhSrc) + ')');
            if (AppUtils.b()) {
                BrakeModel brakeModel2 = k;
                String extraTitle = k.getExtraTitle();
                if (extraTitle == null) {
                    strX = null;
                } else {
                    String strA2 = k0.a(R.string.teachbase_left);
                    r.d(strA2, "getString(R.string.teachbase_left)");
                    strX = t.x(extraTitle, strA2, "", false, 4, null);
                }
                brakeModel2.setExtraTitle(strX);
                BrakeModel brakeModel3 = k;
                String extraTitle2 = k.getExtraTitle();
                if (extraTitle2 == null) {
                    strX2 = null;
                } else {
                    String strA3 = k0.a(R.string.teachbase_right);
                    r.d(strA3, "getString(R.string.teachbase_right)");
                    strX2 = t.x(extraTitle2, strA3, "", false, 4, null);
                }
                brakeModel3.setExtraTitle(strX2);
                BrakeModel brakeModel4 = k;
                String extraTitle3 = k.getExtraTitle();
                brakeModel4.setExtraZhTitle(extraTitle3 == null ? null : t.x(extraTitle3, "左", "", false, 4, null));
                BrakeModel brakeModel5 = k;
                String extraTitle4 = k.getExtraTitle();
                brakeModel5.setExtraZhTitle(extraTitle4 == null ? null : t.x(extraTitle4, "右", "", false, 4, null));
            }
            BrakeModel brakeModel6 = k;
            ReceiveSenorInfo receiveSenorInfo2 = eVar.d().G;
            CarBrakeDesc carBrakeDesc = receiveSenorInfo2 != null ? receiveSenorInfo2.brakeDesc : null;
            if (carBrakeDesc == null) {
                carBrakeDesc = CarBrakeDesc.DESC_NONE;
            }
            brakeModel6.setExtraDesc(carBrakeDesc);
        }
    }

    private final void t(final cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.a
            @Override // java.lang.Runnable
            public final void run() {
                BrakeGlobalMonitor.u(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(cn.mucang.android.jiakaoyi.signal.c.e it) {
        CarBrakeSource carBrakeSource;
        r.e(it, "$it");
        try {
            Result.Companion companion = Result.INSTANCE;
            DeviceReportApi deviceReportApi = new DeviceReportApi();
            String strB = f7792a.b();
            int code = a().getReason().getCode();
            ReceiveSenorInfo receiveSenorInfo = it.d().G;
            String string = null;
            if (receiveSenorInfo != null && (carBrakeSource = receiveSenorInfo.safeModuleBrakeReason) != null) {
                string = Integer.valueOf(carBrakeSource.id).toString();
            }
            Result.m139constructorimpl(Boolean.valueOf(deviceReportApi.m(strB, code, string, false, "", String.valueOf(it.d().m.gear))));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    public final String b() {
        if (j.length() == 0) {
            j = String.valueOf(System.currentTimeMillis());
        }
        return j;
    }

    public final void l(final String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.e("误刹:" + b() + ":true");
        cn.mucang.android.jiakaoyi.framework.log.f.d("误刹:" + b() + ":true");
        u.h(k0.a(R.string.teachbase_upload_problem));
        final cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.c
            @Override // java.lang.Runnable
            public final void run() {
                BrakeGlobalMonitor.m(eVarT, str);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e it) {
        CarBrakeState carBrakeState;
        CarBrakeSource carBrakeSource;
        BrakeModel brakeModelB;
        String strA;
        BrakeModel brakeModelB2;
        r.e(it, "it");
        f7793d = it;
        if (it.d().M == 1) {
            ReceiveSenorInfo receiveSenorInfo = it.d().G;
            BrakeReason reason = null;
            if ((receiveSenorInfo == null ? null : receiveSenorInfo.safeBoardBrakeState) != null) {
                ReceiveSenorInfo receiveSenorInfo2 = it.d().G;
                carBrakeState = receiveSenorInfo2 == null ? null : receiveSenorInfo2.safeBoardBrakeState;
                r.c(carBrakeState);
            } else {
                carBrakeState = CarBrakeState.STATE_NONE;
            }
            CarBrakeState carBrakeState2 = CarBrakeState.STATE_BRAKE;
            if (carBrakeState == carBrakeState2 && f7797h == CarBrakeState.STATE_NONE) {
                cn.mucang.android.jiakaoyi.framework.log.f.z("刹车");
            }
            f7797h = carBrakeState;
            ReceiveSenorInfo receiveSenorInfo3 = it.d().G;
            if ((receiveSenorInfo3 == null ? null : receiveSenorInfo3.safeModuleBrakeReason) != null) {
                ReceiveSenorInfo receiveSenorInfo4 = it.d().G;
                carBrakeSource = receiveSenorInfo4 == null ? null : receiveSenorInfo4.safeModuleBrakeReason;
                r.c(carBrakeSource);
            } else {
                carBrakeSource = CarBrakeSource.BRAKE_SOURCE_NONE;
            }
            if (carBrakeState != carBrakeState2 || carBrakeSource == CarBrakeSource.BRAKE_SOURCE_NONE) {
                int i2 = c + 1;
                c = i2;
                if (i2 >= 5) {
                    c = 0;
                    NewSafeTriggerDialog newSafeTriggerDialog = b;
                    if (newSafeTriggerDialog != null) {
                        CarBrakeDesc extraDesc = (newSafeTriggerDialog == null || (brakeModelB = newSafeTriggerDialog.getF7839a()) == null) ? null : brakeModelB.getExtraDesc();
                        if (extraDesc == null) {
                            extraDesc = CarBrakeDesc.DESC_NONE;
                        }
                        NewSafeTriggerDialog newSafeTriggerDialog2 = b;
                        if (newSafeTriggerDialog2 != null) {
                            DialogExtensionKt.b(newSafeTriggerDialog2);
                        }
                        f7796g = 0;
                        if (extraDesc.isFront()) {
                            strA = k0.a(R.string.teachbase_brake_release_back);
                        } else if (extraDesc.isBack()) {
                            strA = k0.a(R.string.teachbase_brake_release_forward);
                        } else {
                            NewSafeTriggerDialog newSafeTriggerDialog3 = b;
                            if (newSafeTriggerDialog3 != null && (brakeModelB2 = newSafeTriggerDialog3.getF7839a()) != null) {
                                reason = brakeModelB2.getReason();
                            }
                            strA = reason == BrakeReason.RemoteLock ? k0.a(R.string.teachbase_lock_car_release) : k0.a(R.string.teachbase_brake_release);
                        }
                        TtsManager.r(strA, TtsGrade.SpecialVoice);
                        LiveBus.c(new ReleaseBrakeModel());
                    } else if (k.getReason().isByHardware()) {
                        r(BrakeModel.INSTANCE.c());
                    }
                }
            } else {
                n(it);
                c = 0;
            }
        }
        i.d(it);
    }
}
