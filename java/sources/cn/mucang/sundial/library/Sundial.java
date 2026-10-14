package cn.mucang.sundial.library;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.d;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.CourseTimeChangeEvent;
import cn.mucang.sundial.android.eventbus.event.StudentLogoutResponseEvent;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.timer.train.TrainManager;
import cn.mucang.sundial.library.activity.MainActivity;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.entity.ServerStudentInfo;
import cn.mucang.sundial.library.http.BindInfoApi;
import cn.mucang.sundial.library.http.StudentApi;
import cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity;
import cn.mucang.sundial.library.sdk.coach.CoachLoginActivity;
import cn.mucang.sundial.library.tts.Speaker;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.util.ToastUtil;
import cn.mucang.sundial.library.viewmodel.StudentInfoViewModel;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.f;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.iflytek.speech.UtilityConfig;
import com.mobile.auth.gatewayauth.ResultCode;
import f.a.a.a.j.a;
import f.a.a.a.j.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bE\u0010+J/\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0013\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0019\u0010\u0012JS\u0010\"\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u001a2\b\b\u0002\u0010\u001e\u001a\u00020\u001a2\b\b\u0002\u0010\u001f\u001a\u00020\b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 H\u0007¢\u0006\u0004\b\"\u0010#JI\u0010$\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u001a2\b\b\u0002\u0010\u001f\u001a\u00020\b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b$\u0010%J-\u0010&\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u001e\u001a\u00020\u001a2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 H\u0007¢\u0006\u0004\b&\u0010'J#\u0010(\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\nH\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\nH\u0002¢\u0006\u0004\b,\u0010+J\u000f\u0010.\u001a\u00020-H\u0007¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\n2\u0006\u00100\u001a\u00020\u001aH\u0007¢\u0006\u0004\b1\u00102J\u0017\u00104\u001a\u00020\n2\u0006\u00103\u001a\u00020\u001aH\u0007¢\u0006\u0004\b4\u00102J/\u00106\u001a\u0004\u0018\u0001052\b\b\u0002\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u001aH\u0007¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001aH\u0007¢\u0006\u0004\b8\u00109J\u0017\u0010:\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001aH\u0007¢\u0006\u0004\b:\u00109J\r\u0010;\u001a\u00020\n¢\u0006\u0004\b;\u0010+R\u001c\u0010>\u001a\b\u0012\u0004\u0012\u00020=0<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010@\u001a\u00020\u001a8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u0010AR \u0010C\u001a\f0BR\b\u0012\u0004\u0012\u00020=0<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcn/mucang/sundial/library/Sundial;", "", "Landroid/app/Application;", "app", "Lcn/mucang/sundial/library/device/SundialDevice;", UtilityConfig.KEY_DEVICE_INFO, "Lcn/mucang/sundial/library/tts/Speaker;", "speaker", "", "uiProcess", "Lkotlin/v;", "init", "(Landroid/app/Application;Lcn/mucang/sundial/library/device/SundialDevice;Lcn/mucang/sundial/library/tts/Speaker;Z)V", "Landroid/content/Context;", "context", "startSundialPage", "(Landroid/content/Context;)V", "isLearning", "()Z", "needCoachLogin", "Lf/a/a/a/j/c;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "startCoachLogin", "(Landroid/content/Context;Lf/a/a/a/j/c;)V", "needStudentLogin", "needStudentLogout", "", "idCardNo", "authToken", "xyToken", "photoPath", "isK2", "Lcn/mucang/sundial/library/SundialCallBack;", "callBack", "startStudentLogin", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/sundial/library/SundialCallBack;)V", "startStudentLoginActivity", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/sundial/library/SundialCallBack;)V", "startStudentLogout", "(Landroid/content/Context;Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V", "startStudentLogoutActivity", "(Landroid/content/Context;Lcn/mucang/sundial/library/SundialCallBack;)V", "startTrainManager", "()V", "stopTrainManager", "", "getLearningTime", "()J", "imei", "support", "(Ljava/lang/String;)V", "deviceNum", "bindDeviceNum", "Lcn/mucang/sundial/library/entity/ServerStudentInfo;", "getSundialStudent", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerStudentInfo;", "isSameLoginStudent", "(Ljava/lang/String;)Z", "isDiffLoginStudent", "forceStudentLogout", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;", "timeChangeEvent", "Landroidx/lifecycle/i0;", "TAG", "Ljava/lang/String;", "Landroidx/lifecycle/i0$b;", "timeChangeObserver", "Landroidx/lifecycle/i0$b;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class Sundial {
    public static final Sundial INSTANCE = new Sundial();
    public static final String TAG = "-Sundial";
    private static final i0<CourseTimeChangeEvent> timeChangeEvent;
    private static final i0<CourseTimeChangeEvent>.b timeChangeObserver;

    /* JADX INFO: renamed from: cn.mucang.sundial.library.Sundial$startStudentLogin$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"cn/mucang/sundial/library/Sundial$startStudentLogin$1", "Lcn/mucang/sundial/library/SundialCallBack;", "", "success", "Lkotlin/v;", "onResult", "(Z)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C03781 implements SundialCallBack {
        final /* synthetic */ String $authToken;
        final /* synthetic */ SundialCallBack $callBack;
        final /* synthetic */ Context $context;
        final /* synthetic */ String $idCardNo;
        final /* synthetic */ boolean $isK2;
        final /* synthetic */ String $xyToken;

        C03781(SundialCallBack sundialCallBack, Context context, String str, String str2, String str3, boolean z) {
            this.$callBack = sundialCallBack;
            this.$context = context;
            this.$idCardNo = str;
            this.$authToken = str2;
            this.$xyToken = str3;
            this.$isK2 = z;
        }

        @Override // cn.mucang.sundial.library.SundialCallBack
        public void onResult(boolean success) {
            if (success) {
                Sundial.INSTANCE.startTrainManager();
                u.c(new Runnable() { // from class: cn.mucang.sundial.library.Sundial$startStudentLogin$1$onResult$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SundialCallBack sundialCallBack = this.this$0.$callBack;
                        if (sundialCallBack != null) {
                            sundialCallBack.onResult(true);
                        }
                    }
                });
            } else {
                SundialLog.normal("-Sundial 静默签到失败，弹出学员签到页面");
                u.c(new Runnable() { // from class: cn.mucang.sundial.library.Sundial$startStudentLogin$1$onResult$2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Sundial sundial = Sundial.INSTANCE;
                        Sundial.C03781 c03781 = this.this$0;
                        sundial.startStudentLoginActivity(c03781.$context, c03781.$idCardNo, c03781.$authToken, c03781.$xyToken, c03781.$isK2, c03781.$callBack);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.sundial.library.Sundial$startStudentLogout$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"cn/mucang/sundial/library/Sundial$startStudentLogout$1", "Lcn/mucang/sundial/library/SundialCallBack;", "", "success", "Lkotlin/v;", "onResult", "(Z)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class C03801 implements SundialCallBack {
        final /* synthetic */ SundialCallBack $callBack;
        final /* synthetic */ Context $context;

        C03801(SundialCallBack sundialCallBack, Context context) {
            this.$callBack = sundialCallBack;
            this.$context = context;
        }

        @Override // cn.mucang.sundial.library.SundialCallBack
        public void onResult(boolean success) {
            if (success) {
                Sundial.INSTANCE.stopTrainManager();
                u.c(new Runnable() { // from class: cn.mucang.sundial.library.Sundial$startStudentLogout$1$onResult$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SundialCallBack sundialCallBack = this.this$0.$callBack;
                        if (sundialCallBack != null) {
                            sundialCallBack.onResult(true);
                        }
                    }
                });
            } else {
                SundialLog.normal("-Sundial 静默签退失败，弹出学员签退页面");
                u.c(new Runnable() { // from class: cn.mucang.sundial.library.Sundial$startStudentLogout$1$onResult$2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Sundial sundial = Sundial.INSTANCE;
                        Sundial.C03801 c03801 = this.this$0;
                        sundial.startStudentLogoutActivity(c03801.$context, c03801.$callBack);
                    }
                });
            }
        }
    }

    static {
        i0<CourseTimeChangeEvent> i0VarWith = LiveBus.INSTANCE.with(CourseTimeChangeEvent.class);
        timeChangeEvent = i0VarWith;
        timeChangeObserver = new i0.b(i0VarWith, new a0<CourseTimeChangeEvent>() { // from class: cn.mucang.sundial.library.Sundial$timeChangeObserver$1
            @Override // androidx.lifecycle.a0
            public final void onChanged(CourseTimeChangeEvent it) {
                if (LoginUtil.INSTANCE.studentLoginSuccess()) {
                    StudentInfoViewModel studentInfoModel = GlobalData.INSTANCE.getStudentInfoModel();
                    long j = studentInfoModel != null ? studentInfoModel.get_savedCourseTime() : 0L;
                    r.d(it, "it");
                    long courseTime = j + it.getCourseTime();
                    if (studentInfoModel != null) {
                        studentInfoModel.saveCourseTimeAndDistance(courseTime, it.getTotalDistance());
                    }
                }
            }
        });
    }

    private Sundial() {
    }

    public static final void bindDeviceNum(String deviceNum) {
        r.e(deviceNum, "deviceNum");
        String imei = DeviceUtils.getImei();
        SundialLog.normal("绑定IMEI和设备号:" + imei + "  " + deviceNum);
        if (imei.length() != 15 || t.r(deviceNum)) {
            SundialLog.normal("绑定失败: 参数异常");
            return;
        }
        BindInfoApi bindInfoApi = new BindInfoApi();
        r.d(imei, "imei");
        Boolean boolBind = bindInfoApi.bind(imei, deviceNum);
        StringBuilder sb = new StringBuilder();
        sb.append("绑定");
        sb.append(r.a(boolBind, Boolean.TRUE) ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
        SundialLog.normal(sb.toString());
    }

    public static final long getLearningTime() {
        if (isLearning()) {
            return StudentInfoViewModel.INSTANCE.getLastCourseTime();
        }
        return -1L;
    }

    public static final ServerStudentInfo getSundialStudent(String idCardNo, String authToken, String xyToken) {
        r.e(idCardNo, "idCardNo");
        r.e(authToken, "authToken");
        r.e(xyToken, "xyToken");
        try {
            ServerStudentInfo studentInfo = new StudentApi().getStudentInfo(idCardNo, authToken, xyToken);
            boolean z = studentInfo != null && n0.g(studentInfo.getGlobalCode());
            SundialLog.normal("-Sundial 是否是计时学员：" + z);
            if (z) {
                return studentInfo;
            }
            return null;
        } catch (Exception e2) {
            SundialLog.normal("-Sundial 是否是计时学员获取学员信息失败 " + e2.getLocalizedMessage());
            return null;
        }
    }

    public static /* synthetic */ ServerStudentInfo getSundialStudent$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        if ((i & 2) != 0) {
            str2 = "";
        }
        if ((i & 4) != 0) {
            str3 = "";
        }
        return getSundialStudent(str, str2, str3);
    }

    public static final void init(Application app, SundialDevice device, Speaker speaker, boolean uiProcess) {
        r.e(app, "app");
        r.e(device, "device");
        r.e(speaker, "speaker");
        GlobalData globalData = GlobalData.INSTANCE;
        globalData.setDevice(device);
        Tts.INSTANCE.setSpeaker$library_release(speaker);
        if (uiProcess) {
            GlobalEventListeners.INSTANCE.register();
        }
        app.registerActivityLifecycleCallbacks(new SundialActivityLifecycleCallbacks());
        if (DeviceUtils.isSingleApk(app)) {
            return;
        }
        i0<CourseTimeChangeEvent> i0Var = timeChangeEvent;
        i0<CourseTimeChangeEvent>.b bVar = timeChangeObserver;
        i0Var.m(bVar);
        i0Var.p(bVar);
        AppLocation appLocation = AppLocation.INSTANCE;
        if (appLocation.getLocationStrategy() == null) {
            SundialDevice device2 = globalData.getDevice();
            Application applicationD = Utils.d();
            r.d(applicationD, "Utils.getApp()");
            appLocation.setLocationStrategy(device2.locationStrategy(applicationD));
        }
        OBDManager.start(Utils.d(), globalData.getDevice().dataStrategy());
        LoginUtil loginUtil = LoginUtil.INSTANCE;
        loginUtil.registerLoginLogoutTimeoutCallback();
        if (loginUtil.coachLoginSuccess() && loginUtil.studentLoginSuccess()) {
            SundialLog.normal("-Sundial 教练学员都已经签到，开始计时");
            INSTANCE.startTrainManager();
        }
    }

    public static final boolean isDiffLoginStudent(String xyToken) {
        r.e(xyToken, "xyToken");
        try {
            if (!LoginUtil.INSTANCE.studentLoginSuccess()) {
                return false;
            }
            SundialManager sundialManager = SundialManager.getInstance();
            r.d(sundialManager, "SundialManager.getInstance()");
            StudentInfo lastStudent = sundialManager.getLastStudent();
            ServerStudentInfo studentInfo$default = StudentApi.getStudentInfo$default(new StudentApi(), null, null, xyToken, 3, null);
            StringBuilder sb = new StringBuilder();
            sb.append("-Sundial 判断是否是不同计时学员 ");
            sb.append(studentInfo$default != null ? studentInfo$default.getGlobalCode() : null);
            sb.append(" != ");
            sb.append(lastStudent != null ? lastStudent.getStudentNo() : null);
            SundialLog.normal(sb.toString());
            if (studentInfo$default != null) {
                return r.a(studentInfo$default.getGlobalCode(), lastStudent != null ? lastStudent.getStudentNo() : null) ^ true;
            }
            return false;
        } catch (Exception e2) {
            SundialLog.normal("-Sundial 判断是否是不同计时学员失败 " + e2.getLocalizedMessage());
            return false;
        }
    }

    public static final boolean isLearning() {
        return LoginUtil.INSTANCE.studentLoginSuccess();
    }

    public static final boolean isSameLoginStudent(String xyToken) {
        r.e(xyToken, "xyToken");
        try {
            if (!LoginUtil.INSTANCE.studentLoginSuccess()) {
                return false;
            }
            SundialManager sundialManager = SundialManager.getInstance();
            r.d(sundialManager, "SundialManager.getInstance()");
            StudentInfo lastStudent = sundialManager.getLastStudent();
            ServerStudentInfo studentInfo$default = StudentApi.getStudentInfo$default(new StudentApi(), null, null, xyToken, 3, null);
            StringBuilder sb = new StringBuilder();
            sb.append("-Sundial 判断是否是同一个计时学员 ");
            sb.append(studentInfo$default != null ? studentInfo$default.getGlobalCode() : null);
            sb.append(" == ");
            sb.append(lastStudent != null ? lastStudent.getStudentNo() : null);
            SundialLog.normal(sb.toString());
            if (studentInfo$default != null) {
                return r.a(studentInfo$default.getGlobalCode(), lastStudent != null ? lastStudent.getStudentNo() : null);
            }
            return false;
        } catch (Exception e2) {
            SundialLog.normal("-Sundial 判断是否是同一个计时学员失败 " + e2.getLocalizedMessage());
            return false;
        }
    }

    public static final boolean needCoachLogin() {
        DataManager dataManager = DataManager.getInstance();
        r.d(dataManager, "DataManager.getInstance()");
        DeviceInfo deviceInfo = dataManager.getDeviceInfo();
        r.d(deviceInfo, "deviceInfo");
        String platformIp = deviceInfo.getPlatformIp();
        if ((platformIp == null || t.r(platformIp)) || deviceInfo.getPlatformPort() == 0) {
            SundialLog.normal("-Sundial 请重新注册计时终端");
        } else {
            SundialLog.normal("-Sundial socket服务连接初始化");
            SundialManager.getInstance().init();
        }
        return !LoginUtil.INSTANCE.coachLoginSuccess();
    }

    public static final boolean needStudentLogin() {
        LoginUtil loginUtil = LoginUtil.INSTANCE;
        return loginUtil.coachLoginSuccess() && !loginUtil.studentLoginSuccess();
    }

    public static final boolean needStudentLogout() {
        LoginUtil loginUtil = LoginUtil.INSTANCE;
        return loginUtil.coachLoginSuccess() && loginUtil.studentLoginSuccess();
    }

    public static final void startCoachLogin(Context context, c listener) {
        r.e(context, "context");
        r.e(listener, "listener");
        SundialLog.normal("打开机器人计时教练登录界面");
        a.a(d.b(context)).c(new Intent(context, (Class<?>) CoachLoginActivity.class), 888, listener);
    }

    public static final void startStudentLogin(Context context, String idCardNo, String authToken, String xyToken, String photoPath, boolean isK2, SundialCallBack callBack) {
        r.e(context, "context");
        r.e(idCardNo, "idCardNo");
        r.e(authToken, "authToken");
        r.e(xyToken, "xyToken");
        r.e(photoPath, "photoPath");
        SundialLog.normal("-Sundial 机器人Ai教练计时学员签到");
        if (!(!t.r(photoPath))) {
            SundialLog.normal("-Sundial 无照片地址拍照签到");
            INSTANCE.startStudentLoginActivity(context, idCardNo, authToken, xyToken, isK2, callBack);
            return;
        }
        SundialLog.normal("-Sundial 有照片地址静默签到 " + photoPath);
        LoginUtil.INSTANCE.studentSilenceLogin(idCardNo, authToken, xyToken, photoPath, !isK2 ? 1 : 0, new C03781(callBack, context, idCardNo, authToken, xyToken, isK2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startStudentLoginActivity(Context context, String idCardNo, String authToken, String xyToken, boolean isK2, final SundialCallBack callBack) {
        SundialLog.normal("-Sundial 跳转学员签到拍照");
        Activity activityB = d.b(context);
        if (activityB == null) {
            activityB = MucangConfig.i();
        }
        a aVarA = a.a(activityB);
        Intent intent = new Intent(context, (Class<?>) CoachFaceCheckActivity.class);
        intent.putExtra(ExtraKey.personMode, PersonMode.STUDENT.ordinal());
        intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
        intent.putExtra(ExtraKey.uploadEventType, EventType.STUDENT_SIGN_IN.valueOf());
        intent.putExtra(ExtraKey.idNum, idCardNo);
        intent.putExtra(ExtraKey.authToken, authToken);
        intent.putExtra(ExtraKey.xyToken, xyToken);
        intent.putExtra(ExtraKey.courseSubject, !isK2 ? 1 : 0);
        v vVar = v.f15822a;
        aVarA.c(intent, 1009, new c() { // from class: cn.mucang.sundial.library.Sundial.startStudentLoginActivity.2
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent2) {
                boolean z = i2 == -1;
                if (z) {
                    Sundial.INSTANCE.startTrainManager();
                }
                SundialCallBack sundialCallBack = callBack;
                if (sundialCallBack != null) {
                    sundialCallBack.onResult(z);
                }
                SundialLog.normal("-Sundial 学员签到拍照返回值 " + z);
            }
        });
    }

    public static final void startStudentLogout(Context context, String photoPath, SundialCallBack callBack) {
        r.e(context, "context");
        r.e(photoPath, "photoPath");
        SundialLog.normal("-Sundial 机器人Ai教练计时学员签退");
        if (!(!t.r(photoPath))) {
            SundialLog.normal("-Sundial 无照片地址拍照签退");
            INSTANCE.startStudentLogoutActivity(context, callBack);
            return;
        }
        SundialLog.normal("-Sundial 有照片地址静默签退 " + photoPath);
        LoginUtil.INSTANCE.studentSilenceLogout(photoPath, new C03801(callBack, context));
    }

    public static /* synthetic */ void startStudentLogout$default(Context context, String str, SundialCallBack sundialCallBack, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        if ((i & 4) != 0) {
            sundialCallBack = null;
        }
        startStudentLogout(context, str, sundialCallBack);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startStudentLogoutActivity(Context context, final SundialCallBack callBack) {
        String idCard;
        SundialLog.normal("-Sundial 跳转学员签退拍照");
        if (!LoginUtil.INSTANCE.studentLoginSuccess()) {
            stopTrainManager();
            if (callBack != null) {
                callBack.onResult(true);
            }
            SundialLog.normal("-Sundial 学员签退拍照返回值2 true");
            return;
        }
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        StudentInfo lastStudent = sundialManager.getLastStudent();
        a aVarA = a.a(MucangConfig.i());
        Intent intent = new Intent(context, (Class<?>) CoachFaceCheckActivity.class);
        intent.putExtra(ExtraKey.personMode, PersonMode.STUDENT.ordinal());
        intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_OUT.ordinal());
        intent.putExtra(ExtraKey.uploadEventType, EventType.STUDENT_SIGN_OUT.valueOf());
        if (lastStudent == null || (idCard = lastStudent.getIdCard()) == null) {
            idCard = "";
        }
        intent.putExtra(ExtraKey.idNum, idCard);
        v vVar = v.f15822a;
        aVarA.c(intent, 1011, new c() { // from class: cn.mucang.sundial.library.Sundial.startStudentLogoutActivity.2
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent2) {
                boolean z = i2 == -1;
                if (z) {
                    Sundial.INSTANCE.stopTrainManager();
                }
                SundialCallBack sundialCallBack = callBack;
                if (sundialCallBack != null) {
                    sundialCallBack.onResult(z);
                }
                SundialLog.normal("-Sundial 学员签退拍照返回值1 " + z);
            }
        });
    }

    static /* synthetic */ void startStudentLogoutActivity$default(Sundial sundial, Context context, SundialCallBack sundialCallBack, int i, Object obj) {
        if ((i & 2) != 0) {
            sundialCallBack = null;
        }
        sundial.startStudentLogoutActivity(context, sundialCallBack);
    }

    public static final void startSundialPage(Context context) {
        r.e(context, "context");
        if (MucangConfig.i() instanceof MainActivity) {
            SundialLog.normal("计时主界面无需再打开");
        } else {
            SundialLog.normal("打开计时主界面");
            KtxsKt.safeStartActivity$default(context, MainActivity.class, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startTrainManager() {
        SundialLog.normal("-Sundial 学员签到成功后开始计时");
        StudentInfoViewModel studentInfoModel = GlobalData.INSTANCE.getStudentInfoModel();
        if (studentInfoModel != null) {
            studentInfoModel.restoreClassroomIfNeed();
            TrainManager.getInstance().start(studentInfoModel.get_savedCourseDistance());
        }
        TakePhotoManager.getInstance().start(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopTrainManager() {
        SundialLog.normal("-Sundial 学员签退成功后结束计时");
        TrainManager.getInstance().stop();
        TakePhotoManager.getInstance().stop();
    }

    public static final void support(String imei) {
        r.e(imei, "imei");
        f.b().h(DeviceUtils.__SP_IMEI__, imei, true);
        SundialLog.normal("sdk设置IMEI:" + imei);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.lifecycle.i0$b] */
    public final void forceStudentLogout() {
        final i0 i0VarWith = LiveBus.INSTANCE.with(StudentLogoutResponseEvent.class);
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = null;
        ?? bVar = new i0.b(i0VarWith, new a0<StudentLogoutResponseEvent>() { // from class: cn.mucang.sundial.library.Sundial.forceStudentLogout.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(StudentLogoutResponseEvent studentLogoutResponseEvent) {
                StringBuilder sb = new StringBuilder();
                sb.append("-Sundial 强制学员签退");
                sb.append(!LoginUtil.INSTANCE.studentLoginSuccess() ? ResultCode.MSG_SUCCESS : ResultCode.MSG_FAILED);
                SundialLog.normal(sb.toString());
                i0.b bVar2 = (i0.b) ref$ObjectRef.element;
                if (bVar2 != null) {
                    i0VarWith.m(bVar2);
                }
            }
        });
        ref$ObjectRef.element = bVar;
        i0VarWith.m((i0.b) bVar);
        i0VarWith.i((i0.b) ref$ObjectRef.element);
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.Sundial.forceStudentLogout.2
            @Override // java.lang.Runnable
            public final void run() {
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                StudentInfo lastStudent = sundialManager.getLastStudent();
                if (lastStudent != null) {
                    String idCard = lastStudent.getIdCard();
                    if (!(idCard == null || idCard.length() == 0)) {
                        if (SundialManager.getInstance().studentLogout(lastStudent.getStudentNo(), System.currentTimeMillis())) {
                            return;
                        }
                        LiveBus.INSTANCE.post(new StudentLogoutResponseEvent());
                        return;
                    }
                }
                ToastUtil.INSTANCE.showToastOnce(R.string.tt_id_empty);
            }
        });
    }
}
