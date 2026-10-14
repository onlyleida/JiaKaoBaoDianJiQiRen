package cn.mucang.android.jiakaoyi.teachingk2.res;

import android.os.Environment;
import cn.mucang.android.core.utils.n0;
import com.google.mlkit.common.MlKitException;
import java.io.File;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class SampleMediaManager {

    public enum Resource {
        SafetyBelt(100, 1, "感知机车", "安全带", false),
        CarFeelGear(101, 1, "感知机车", "挡位", false),
        Light(102, 1, "感知机车", "灯光及雨刮", false),
        SteeringWheel(103, 1, "感知机车", "方向盘", false),
        Pedal(104, 1, "感知机车", "加速踏板", false),
        ClutchPedal(105, 1, "感知机车", "离合器踏板", false),
        GetOnOff(106, 1, "感知机车", "上下车操作", false),
        BrakePedal(107, 1, "感知机车", "制动踏板", false),
        ParkingBrake(108, 1, "感知机车", "驻车制动器", false),
        SeatAdjustment(109, 1, "感知机车", "座椅调整", false),
        Meter(110, 1, "感知机车", "仪表", false),
        RearviewMirror(111, 1, "感知机车", "后视镜调节", false),
        CheckIgnition(112, 1, "感知机车", "检查&点火", false),
        Base_Feel_BaseFeelGear(200, 1, "基础车感", "挡位", false),
        Base_Feel_ClutchSemiLinkage(MlKitException.CODE_SCANNER_CANCELLED, 1, "基础车感", "离合半联动", false),
        Base_Feel_SteeringWheel(MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, 1, "基础车感", "方向盘", false),
        Base_Feel_ForwardBack1m(MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, 1, "基础车感", "直线前进倒退", false),
        Base_Feel_TurnLeftRight(MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, 1, "基础车感", "左右转弯", false),
        Base_Feel_LightPractice(208, 1, "基础车感", "灯光", false),
        Base_Feel_StartStop(209, 1, "基础车感", "起步停车", false),
        Base_Feel_CarFell(210, 1, "基础车感", "车感练习", false),
        Base_Feel_ControlSpeed(211, 1, "基础车感", "控速练习", false),
        Base_Feel_CarDistance(212, 1, "基础车感", "车距练习", false),
        DaoChe(300, 1, "", "直角转弯", true),
        ShangPo(Videoio.CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE, 1, "", "上坡起步", false),
        CeFang(302, 1, "", "侧方停车", true),
        ZhiJiao(Videoio.CAP_PROP_PVAPI_DECIMATIONVERTICAL, 1, "", "倒车入库", true),
        QuXian(Videoio.CAP_PROP_PVAPI_BINNINGX, 1, "", "曲线行驶", true);

        public final String fileName;
        public final boolean hasAutoVideo;
        public final int id;
        public final String prefix;
        public final int type;

        Resource(int i, int i2, String str, String str2, boolean z) {
            this.id = i;
            this.type = i2;
            this.prefix = str;
            this.fileName = str2;
            this.hasAutoVideo = z;
        }

        public File getFile() {
            String str;
            String str2;
            String str3;
            if (this.type == 0) {
                str = "image";
                str2 = ".png";
            } else {
                str = "video";
                str2 = ".mp4";
            }
            if (n0.g(this.prefix)) {
                str3 = this.prefix + "-" + this.fileName;
            } else {
                str3 = this.fileName;
            }
            if (cn.mucang.android.jiakaoyi.signal.utils.f.b() && this.hasAutoVideo) {
                str3 = str3 + "-自动挡";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(SampleMediaManager.b());
            String str4 = File.separator;
            sb.append(str4);
            sb.append(str);
            sb.append(str4);
            sb.append(str3);
            sb.append(str2);
            File file = new File(sb.toString());
            if (file.exists()) {
                return file;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b() {
        return new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "mediaRes").getAbsolutePath();
    }
}
