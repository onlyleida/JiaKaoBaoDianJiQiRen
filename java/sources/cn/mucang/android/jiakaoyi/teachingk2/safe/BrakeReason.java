package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.google.mlkit.common.MlKitException;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.tencent.open.SocialConstants;
import java.io.Serializable;
import kotlin.Metadata;
import org.opencv.videoio.Videoio;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Manual' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B7\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0002\u0010\u000bJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0015R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fj\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+¨\u0006,"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "", "Ljava/io/Serializable;", "code", "", "zhTitle", "", "title", "zhDesc", SocialConstants.PARAM_APP_DESC, DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getCode", "()I", "getDesc", "()Ljava/lang/String;", "getLevel", "getTitle", "getZhDesc", "getZhTitle", "isByApp", "", "isByHardware", "isNeedCall", "None", "Manual", "BrakeStudy", "AppSpeed", "HouLiu", "Fence", "WHEEL", "AppFlame", "Traffic", "Handbrake", "TeachBrake", "HardwareSpeed", "Radar", "Door", "Belt", "AnomalyWarning", "RemoteBrake", "RemoteCollision", "RemoteFlame", "RemoteLock", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BrakeReason implements Serializable {
    private static final /* synthetic */ BrakeReason[] $VALUES;
    public static final BrakeReason AnomalyWarning;
    public static final BrakeReason AppFlame;
    public static final BrakeReason AppSpeed;
    public static final BrakeReason Belt;
    public static final BrakeReason BrakeStudy;
    public static final BrakeReason Door;
    public static final BrakeReason Fence;
    public static final BrakeReason Handbrake;
    public static final BrakeReason HardwareSpeed;
    public static final BrakeReason HouLiu;
    public static final BrakeReason Manual;
    public static final BrakeReason None = new BrakeReason("None", 0, -1, "", "", "", "", 0);
    public static final BrakeReason Radar;
    public static final BrakeReason RemoteBrake;
    public static final BrakeReason RemoteCollision;
    public static final BrakeReason RemoteFlame;
    public static final BrakeReason RemoteLock;
    public static final BrakeReason TeachBrake;
    public static final BrakeReason Traffic;
    public static final BrakeReason WHEEL;
    private final int code;
    private final String desc;
    private final int level;
    private final String title;
    private final String zhDesc;
    private final String zhTitle;

    private static final /* synthetic */ BrakeReason[] $values() {
        return new BrakeReason[]{None, Manual, BrakeStudy, AppSpeed, HouLiu, Fence, WHEEL, AppFlame, Traffic, Handbrake, TeachBrake, HardwareSpeed, Radar, Door, Belt, AnomalyWarning, RemoteBrake, RemoteCollision, RemoteFlame, RemoteLock};
    }

    static {
        String strA = k0.a(R.string.teachbase_hand_brake);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_hand_brake)");
        String strA2 = k0.a(R.string.teachbase_manual_release_brake);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_manual_release_brake)");
        Manual = new BrakeReason("Manual", 1, 1, "手动刹车", strA, "实施页面手动点击按钮下发刹车", strA2, 0);
        String strA3 = k0.a(R.string.teachbase_brake_train);
        kotlin.jvm.internal.r.d(strA3, "getString(R.string.teachbase_brake_train)");
        String strA4 = k0.a(R.string.teachbase_brake_tarin_page);
        kotlin.jvm.internal.r.d(strA4, "getString(R.string.teachbase_brake_tarin_page)");
        BrakeStudy = new BrakeReason("BrakeStudy", 2, 2, "刹车学习", strA3, "刹车学习页面下发刹车", strA4, 0);
        String strA5 = k0.a(R.string.teachbase_over_speed_brake);
        kotlin.jvm.internal.r.d(strA5, "getString(R.string.teachbase_over_speed_brake)");
        int i = R.string.teachbase_over_speed_brake_hint;
        String strA6 = k0.a(i);
        kotlin.jvm.internal.r.d(strA6, "getString(R.string.teach…se_over_speed_brake_hint)");
        AppSpeed = new BrakeReason("AppSpeed", 3, 100, "软件超过限制速度触发刹车", strA5, "超过限速度触发刹车，请保持发动机启动、回空挡拉手刹解除刹车。", strA6, 150);
        String strA7 = k0.a(R.string.teachbase_houliu_brake);
        kotlin.jvm.internal.r.d(strA7, "getString(R.string.teachbase_houliu_brake)");
        String strA8 = k0.a(R.string.teachbase_houliu_brake_hint);
        kotlin.jvm.internal.r.d(strA8, "getString(R.string.teachbase_houliu_brake_hint)");
        HouLiu = new BrakeReason("HouLiu", 4, 101, "车辆溜车触发刹车", strA7, "车辆后溜触发刹车，请保持发动机启动、回空挡拉手刹解除刹车。", strA8, 150);
        String strA9 = k0.a(R.string.teachbase_electric_fence_brake);
        kotlin.jvm.internal.r.d(strA9, "getString(R.string.teachbase_electric_fence_brake)");
        String strA10 = k0.a(R.string.teachbase_electric_fence_brake_hint);
        kotlin.jvm.internal.r.d(strA10, "getString(R.string.teach…lectric_fence_brake_hint)");
        Fence = new BrakeReason("Fence", 5, 102, "车辆触碰电子围栏触发刹车", strA9, "车辆触碰电子围栏，请保持发动机启动、回空挡拉手刹解除刹车。", strA10, 150);
        String strA11 = k0.a(R.string.teachbase_leave_wheel_brake);
        kotlin.jvm.internal.r.d(strA11, "getString(R.string.teachbase_leave_wheel_brake)");
        String strA12 = k0.a(R.string.teachbase_leave_wheel_brake_hint);
        kotlin.jvm.internal.r.d(strA12, "getString(R.string.teach…e_leave_wheel_brake_hint)");
        WHEEL = new BrakeReason("WHEEL", 6, 103, "双手离开方向盘刹车", strA11, "双手离开方向盘触发刹车，请保持发动机启动、回空挡拉手刹解除刹车。", strA12, 150);
        String strA13 = k0.a(R.string.teachbase_brake_accelerator_flameout);
        kotlin.jvm.internal.r.d(strA13, "getString(R.string.teach…ake_accelerator_flameout)");
        String strA14 = k0.a(R.string.teachbase_brake_accelerator_flameout_hint);
        kotlin.jvm.internal.r.d(strA14, "getString(R.string.teach…ccelerator_flameout_hint)");
        AppFlame = new BrakeReason("AppFlame", 7, 104, "同时踩刹车和油门触发熄火", strA13, "刹车油门同时踩下触发熄火，请回空挡拉手刹解除熄火。", strA14, 150);
        String strA15 = k0.a(R.string.teachbase_traffic_jam_brake);
        kotlin.jvm.internal.r.d(strA15, "getString(R.string.teachbase_traffic_jam_brake)");
        String strA16 = k0.a(R.string.teachbase_traffic_jam_brake_hint);
        kotlin.jvm.internal.r.d(strA16, "getString(R.string.teach…e_traffic_jam_brake_hint)");
        Traffic = new BrakeReason("Traffic", 8, 105, "道路拥堵刹车", strA15, "当前道路拥堵，请回空挡拉手刹解除刹车。", strA16, 150);
        String strA17 = k0.a(R.string.teachbase_brake_handbrake);
        kotlin.jvm.internal.r.d(strA17, "getString(R.string.teachbase_brake_handbrake)");
        String strA18 = k0.a(R.string.teachbase_brake_handbrake_hint);
        kotlin.jvm.internal.r.d(strA18, "getString(R.string.teachbase_brake_handbrake_hint)");
        Handbrake = new BrakeReason("Handbrake", 9, 106, "手刹未拉紧刹车", strA17, "手刹未拉紧，请回空档拉紧手刹解除刹车", strA18, 200);
        String strA19 = k0.a(R.string.teachbase_teach_brake);
        kotlin.jvm.internal.r.d(strA19, "getString(R.string.teachbase_teach_brake)");
        String strA20 = k0.a(R.string.teachbase_teach_brake_hint);
        kotlin.jvm.internal.r.d(strA20, "getString(R.string.teachbase_teach_brake_hint)");
        TeachBrake = new BrakeReason("TeachBrake", 10, 107, "教学点位刹车", strA19, "教学点位刹车，请保持发动机启动、回空挡拉手刹解除刹车", strA20, 50);
        String strA21 = k0.a(R.string.teachbase_over_speed_hardware_brake);
        kotlin.jvm.internal.r.d(strA21, "getString(R.string.teach…ver_speed_hardware_brake)");
        String strA22 = k0.a(i);
        kotlin.jvm.internal.r.d(strA22, "getString(R.string.teach…se_over_speed_brake_hint)");
        HardwareSpeed = new BrakeReason("HardwareSpeed", 11, 200, "硬件超过限制速度触发刹车", strA21, "超过限速度触发刹车，请保持发动机启动、回空挡拉手刹解除刹车。", strA22, 100);
        String strA23 = k0.a(R.string.teachbase_hardware_brake);
        kotlin.jvm.internal.r.d(strA23, "getString(R.string.teachbase_hardware_brake)");
        String strA24 = k0.a(R.string.teachbase_hardware_brake_hint);
        kotlin.jvm.internal.r.d(strA24, "getString(R.string.teachbase_hardware_brake_hint)");
        Radar = new BrakeReason("Radar", 12, MlKitException.CODE_SCANNER_CANCELLED, "障碍物刹车", strA23, "车辆触碰障碍物，请保持发动机启动、回空挡拉手刹解除刹车。", strA24, 100);
        String strA25 = k0.a(R.string.teachbase_no_close_door_brake);
        kotlin.jvm.internal.r.d(strA25, "getString(R.string.teachbase_no_close_door_brake)");
        String strA26 = k0.a(R.string.teachbase_no_close_door_brake_hint);
        kotlin.jvm.internal.r.d(strA26, "getString(R.string.teach…no_close_door_brake_hint)");
        Door = new BrakeReason("Door", 13, MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, "行驶中未关车门刹车", strA25, "车门未关闭触发刹车，请保持发动机启动、回空挡拉手刹解除刹车。", strA26, 100);
        String strA27 = k0.a(R.string.teachbase_not_seat_belt_brake);
        kotlin.jvm.internal.r.d(strA27, "getString(R.string.teachbase_not_seat_belt_brake)");
        String strA28 = k0.a(R.string.teachbase_not_seat_belt_brake_hint);
        kotlin.jvm.internal.r.d(strA28, "getString(R.string.teach…not_seat_belt_brake_hint)");
        Belt = new BrakeReason("Belt", 14, 203, "行驶中未系安全带刹车", strA27, "未系安全带触发刹车，请保持发动机启动、回空挡拉手刹解除刹车。", strA28, 100);
        String strA29 = k0.a(R.string.teachbase_car_module_error);
        kotlin.jvm.internal.r.d(strA29, "getString(R.string.teachbase_car_module_error)");
        String strA30 = k0.a(R.string.teachbase_back_n_gear_hint);
        kotlin.jvm.internal.r.d(strA30, "getString(R.string.teachbase_back_n_gear_hint)");
        AnomalyWarning = new BrakeReason("AnomalyWarning", 15, 300, "车辆模块系统异常", strA29, "请回空挡拉手刹停车，联系维护人员", strA30, 100);
        String strA31 = k0.a(R.string.teachbase_ramote_brake);
        kotlin.jvm.internal.r.d(strA31, "getString(R.string.teachbase_ramote_brake)");
        String strA32 = k0.a(R.string.teachbase_ramote_brake_hint);
        kotlin.jvm.internal.r.d(strA32, "getString(R.string.teachbase_ramote_brake_hint)");
        RemoteBrake = new BrakeReason("RemoteBrake", 16, Videoio.CAP_PROP_XI_DOWNSAMPLING, "车辆已被远程刹车", strA31, "已被远程刹车，请保持发动机启动、回空挡拉手刹停车，呼叫监控中心解除刹车", strA32, 100);
        String strA33 = k0.a(R.string.teachbase_collision_brake);
        kotlin.jvm.internal.r.d(strA33, "getString(R.string.teachbase_collision_brake)");
        String strA34 = k0.a(R.string.teachbase_collision_brake_hint);
        kotlin.jvm.internal.r.d(strA34, "getString(R.string.teachbase_collision_brake_hint)");
        RemoteCollision = new BrakeReason("RemoteCollision", 17, Videoio.CAP_PROP_XI_DATA_FORMAT, "预警碰撞刹车", strA33, "车辆有碰撞危险，已被远程刹车，请呼叫监控中心解除刹车。", strA34, 100);
        String strA35 = k0.a(R.string.teachbase_remote_close_engine);
        kotlin.jvm.internal.r.d(strA35, "getString(R.string.teachbase_remote_close_engine)");
        String strA36 = k0.a(R.string.teachbase_remote_close_engine_hint);
        kotlin.jvm.internal.r.d(strA36, "getString(R.string.teach…remote_close_engine_hint)");
        RemoteFlame = new BrakeReason("RemoteFlame", 18, Videoio.CAP_PROP_XI_OFFSET_X, "车辆已被远程熄火", strA35, "已被远程熄火，请回空挡拉手刹停车，呼叫监控中心解除熄火。", strA36, 100);
        String strA37 = k0.a(R.string.teachbase_remote_lock_car);
        kotlin.jvm.internal.r.d(strA37, "getString(R.string.teachbase_remote_lock_car)");
        String strA38 = k0.a(R.string.teachbase_remote_lock_car_hint);
        kotlin.jvm.internal.r.d(strA38, "getString(R.string.teachbase_remote_lock_car_hint)");
        RemoteLock = new BrakeReason("RemoteLock", 19, Videoio.CAP_PROP_XI_OFFSET_Y, "车辆已被远程锁车", strA37, "已被远程锁车，请回空挡拉手刹停车，呼叫监控中心解除锁车。", strA38, 100);
        $VALUES = $values();
    }

    private BrakeReason(String str, int i, int i2, String str2, String str3, String str4, String str5, int i3) {
        super(str, i);
        this.code = i2;
        this.zhTitle = str2;
        this.title = str3;
        this.zhDesc = str4;
        this.desc = str5;
        this.level = i3;
    }

    public static BrakeReason valueOf(String str) {
        return (BrakeReason) Enum.valueOf(BrakeReason.class, str);
    }

    public static BrakeReason[] values() {
        return (BrakeReason[]) $VALUES.clone();
    }

    public final int getCode() {
        return this.code;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final int getLevel() {
        return this.level;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getZhDesc() {
        return this.zhDesc;
    }

    public final String getZhTitle() {
        return this.zhTitle;
    }

    public final boolean isByApp() {
        int i = this.code;
        return 100 <= i && i <= 199;
    }

    public final boolean isByHardware() {
        int i = this.code;
        return 200 <= i && i <= 299;
    }

    public final boolean isNeedCall() {
        int i = this.code;
        return 400 <= i && i <= 499;
    }
}
