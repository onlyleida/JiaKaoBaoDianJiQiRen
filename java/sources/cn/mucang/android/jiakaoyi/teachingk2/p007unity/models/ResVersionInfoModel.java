package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;

/* JADX INFO: loaded from: classes4.dex */
public class ResVersionInfoModel extends MessageModel {
    public int appType;
    public int auto;
    public String basePointAltitude;
    public String basePointLatitude;
    public String basePointLongitude;
    public int clutchTrainType;
    public String deviceNum;
    public boolean enableNonPerceiveLogin;
    public String examSiteId;
    public String examSiteName;
    public boolean isLeftUpper;
    public int leftFullAngel;
    public String mapPath;
    public String mediaResPath;
    public boolean openK3;
    public String respath;
    public int rightFullAngel;
    public boolean showAutoTeach;
    public boolean showHelpTeach;
    public boolean showLanguage;
    public boolean showMap;
    public boolean showNavigation;
    public boolean showSetting;
    public boolean speedControlHelper;
    public int stepConfig;
    public String version;
    public float clutchActiveStart = 0.5f;
    public float clutchActiveEnd = 0.2f;
    public boolean isDebug = MucangConfig.v();

    public enum TrainProject {
        BianXianLianXi(0, "边线练习"),
        YuanHuanLianXi(1, "圆环练习"),
        DoubleYuanHuanLianXi(2, "8字路练习");

        public int id;
        public String name;

        TrainProject(int i, String str) {
            this.id = i;
            this.name = str;
        }
    }
}
