package cn.mucang.android.jiakaoyi.teachingk2.res;

import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback;
import cn.mucang.android.jiakaoyi.framework.utils.Downloader;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.teachingk2.model.ResModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.s;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import cn.mucang.android.jiakaoyi.teachingk2.provider.TeachSafeProvider;
import cn.mucang.android.jiakaoyi.teachingk2.res.processor.AreaProcessor;
import cn.mucang.android.jiakaoyi.teachingk2.res.processor.AutoShuttleProcessor;
import cn.mucang.android.jiakaoyi.teachingk2.res.processor.PodingAreaProcessor;
import cn.mucang.android.jiakaoyi.teachingk2.res.voice.TeachVoiceModel;
import cn.mucang.android.jiakaoyi.unity.activity.UnityMainActivity;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import com.amap.api.fence.GeoFence;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.iflytek.cloud.SpeechConstant;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class ResourceManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static float f7558a;
    private static Map<String, Boolean> b = new HashMap();
    private static final Map<String, VersionInfo> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Resource, c> f7559d;

    public enum Resource {
        Teaching(1, "教学数据", "teaching"),
        MapData(2, "科二地图", "map"),
        Unity(3, "Unity", "unity"),
        MapFence(4, "电子栅栏", GeoFence.BUNDLE_KEY_FENCE),
        Special(5, "特殊区域", "special"),
        Gps(14, "GPS遮挡区域", "gps"),
        TileMap(20, "瓦片地图", "tile"),
        MapDataK3(21, "科三地图", "mapK3"),
        MapDataB2(22, "大车科二地图", "mapB2"),
        AreaK2(24, "科二区域", "areaK2"),
        AreaK3(25, "科三区域", "areaK3"),
        Language(30, "第二语言", SpeechConstant.LANGUAGE),
        AutoShuttle(9, "自动接驳车", "autoShuttle"),
        PoDingArea(26, "坡顶区域", "podingArea");

        public final String fileRoot;
        public final String name;
        public final int type;

        Resource(int i, String str, String str2) {
            this.type = i;
            this.name = str;
            this.fileRoot = str2;
        }
    }

    public static class VersionInfo implements Serializable {
        public String md5;
        public String url;
        public int version;
    }

    static class a implements DownloadCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f7560a;
        final /* synthetic */ float b;
        final /* synthetic */ float c;

        a(b bVar, float f2, float f3) {
            this.f7560a = bVar;
            this.b = f2;
            this.c = f3;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void a(float f2) {
            ResourceManager.c(this.f7560a, this.b + (f2 * 0.6f * this.c));
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void b() {
        }
    }

    public interface b {
        void a(Resource resource, String str);

        void b(float f2);
    }

    public interface c {
        void a(File file, long j) throws Throwable;
    }

    static {
        HashMap map = new HashMap();
        f7559d = map;
        map.put(Resource.Teaching, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.k());
        map.put(Resource.MapData, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.h());
        map.put(Resource.MapFence, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.c());
        map.put(Resource.Unity, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.m());
        map.put(Resource.Special, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.j());
        map.put(Resource.Gps, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.d());
        map.put(Resource.TileMap, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.l());
        map.put(Resource.MapDataK3, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.g());
        map.put(Resource.MapDataB2, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.f());
        map.put(Resource.AreaK2, new AreaProcessor(KeMu.K2));
        map.put(Resource.AreaK3, new AreaProcessor(KeMu.K3));
        map.put(Resource.Language, new cn.mucang.android.jiakaoyi.teachingk2.res.processor.e());
        map.put(Resource.AutoShuttle, new AutoShuttleProcessor());
        map.put(Resource.PoDingArea, new PodingAreaProcessor());
    }

    private static void b(final b bVar, final Resource resource, final String str) {
        if (bVar != null) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.f
                @Override // java.lang.Runnable
                public final void run() {
                    bVar.a(resource, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(final b bVar, final float f2) {
        f7558a = f2;
        if (f2 >= 1.0f) {
            f7558a = 1.0f;
        }
        if (bVar != null) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.g
                @Override // java.lang.Runnable
                public final void run() {
                    bVar.b(f2);
                }
            });
        }
    }

    private static boolean d(Resource resource, b bVar, String str, boolean z) {
        if (bVar == null) {
            return false;
        }
        if (resource != Resource.Teaching && resource != Resource.MapData && resource != Resource.MapDataB2 && ((resource != Resource.Unity || !TextUtils.isEmpty(n.b().b)) && !z)) {
            return false;
        }
        b(bVar, resource, str);
        return true;
    }

    private static void e(String str) {
        for (String str2 : b.keySet()) {
            if (str2 != null && str2.startsWith(str)) {
                b.remove(str2);
            }
        }
    }

    public static synchronized VersionInfo f(Resource resource, long j) {
        String strG = g(resource, j);
        Map<String, VersionInfo> map = c;
        VersionInfo versionInfo = map.get(strG);
        if (versionInfo == null) {
            String strG2 = i0.g(strG, null);
            if (strG2 == null) {
                VersionInfo versionInfo2 = new VersionInfo();
                versionInfo2.version = 0;
                versionInfo2.url = "empty";
                versionInfo2.md5 = "";
                map.put(strG, versionInfo2);
                return versionInfo2;
            }
            versionInfo = (VersionInfo) JSON.parseObject(strG2, VersionInfo.class);
            map.put(strG, versionInfo);
        }
        if (versionInfo.md5 == null) {
            versionInfo.md5 = "";
        }
        return versionInfo;
    }

    public static String g(Resource resource, long j) {
        String str = "versionInfo-" + resource.type + "-" + j;
        if (resource != Resource.Teaching) {
            return str;
        }
        return str + "-" + cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(ExamSiteUtil.e(0L));
    }

    public static float h() {
        return f7558a;
    }

    private static boolean i(String str) {
        Boolean bool = b.get(str);
        return bool != null && bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m() {
        s.b().g();
        CarSizeReporter.d();
        TeachSafeProvider teachSafeProvider = (TeachSafeProvider) DataProviderRegister.f3433a.a(TeachSafeProvider.class, null);
        if (teachSafeProvider != null) {
            teachSafeProvider.initSafe();
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("资源加载完成");
    }

    private static void n(Resource resource, long j, VersionInfo versionInfo) {
        if (versionInfo == null) {
            return;
        }
        String strG = g(resource, j);
        c.put(strG, versionInfo);
        i0.m(strG, JSON.toJSONString(versionInfo));
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置本地版本:" + resource.name + "=" + versionInfo.version);
    }

    private static String o(String str) {
        return str.contains("/") ? str.substring(str.lastIndexOf("/")) : str;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0474 A[Catch: all -> 0x04c3, TryCatch #2 {all -> 0x04c3, blocks: (B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:163:0x037c, outer: #3, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0592 A[Catch: all -> 0x07cb, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0716 A[Catch: all -> 0x07cb, TRY_ENTER, TRY_LEAVE, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0768 A[Catch: all -> 0x07cb, TRY_ENTER, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:144:0x076e  */
    /* JADX WARN: Code duplicated, block: B:150:0x07c2 A[Catch: all -> 0x07cb, TRY_LEAVE, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x0194 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x01c8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x0763 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x00f9 A[Catch: all -> 0x07cb, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0103 A[Catch: all -> 0x07cb, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0111 A[Catch: all -> 0x07cb, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0154 A[Catch: all -> 0x07cb, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0167 A[Catch: all -> 0x07cb, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x019c A[Catch: all -> 0x07cb, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x01ea A[Catch: all -> 0x07cb, TryCatch #5 {, blocks: (B:4:0x0005, B:6:0x000b, B:33:0x00f9, B:35:0x0103, B:37:0x0124, B:38:0x014e, B:40:0x0154, B:42:0x0167, B:44:0x016f, B:46:0x0196, B:48:0x019c, B:50:0x01a8, B:51:0x01c8, B:53:0x01ea, B:55:0x01ee, B:57:0x01f8, B:59:0x01fe, B:110:0x0581, B:112:0x0592, B:114:0x059c, B:116:0x05b2, B:118:0x05f3, B:120:0x0611, B:121:0x0644, B:142:0x0768, B:146:0x0774, B:147:0x078c, B:127:0x0690, B:131:0x06e4, B:136:0x0716, B:109:0x052a, B:148:0x07af, B:150:0x07c2, B:36:0x0111, B:32:0x00dc, B:19:0x0043, B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc, B:20:0x0060, B:22:0x0079, B:24:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00af, B:123:0x064e), top: B:169:0x0005, inners: #3, #4, #6 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x025c A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0262 A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x026d A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0284 A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0297 A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x02a3 A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:74:0x02ad A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x02be A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x02f8 A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0319 A[Catch: all -> 0x0528, TryCatch #3 {all -> 0x0528, blocks: (B:60:0x0234, B:62:0x025c, B:64:0x0262, B:66:0x0277, B:68:0x0284, B:70:0x0297, B:76:0x02be, B:78:0x030e, B:80:0x0319, B:82:0x0323, B:84:0x032b, B:105:0x04c5, B:77:0x02f8, B:72:0x02a3, B:65:0x026d, B:74:0x02ad, B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:165:0x0234, outer: #5, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x039c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:90:0x03bc A[Catch: all -> 0x03f3, TRY_LEAVE, TryCatch #1 {all -> 0x03f3, blocks: (B:88:0x039e, B:90:0x03bc), top: B:161:0x039e, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x045b A[Catch: all -> 0x04c3, TryCatch #2 {all -> 0x04c3, blocks: (B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:163:0x037c, outer: #3, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0470 A[Catch: all -> 0x04c3, TryCatch #2 {all -> 0x04c3, blocks: (B:85:0x037c, B:95:0x0440, B:97:0x045b, B:101:0x0488, B:98:0x0470, B:100:0x0474, B:94:0x03f5, B:88:0x039e, B:90:0x03bc), top: B:163:0x037c, outer: #3, inners: #1 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:136:0x0716, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:76:0x02be, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:77:0x02f8, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:90:0x03bc, please report this as an issue */
    public static synchronized void p(b bVar, List<Resource> list) {
        float f2;
        float size;
        Iterator<Resource> it;
        Resource next;
        Iterator<Resource> it2;
        VersionInfo versionInfoF;
        Resource resource;
        float f3;
        ResModel resModelM;
        float f4;
        File fileC;
        File fileC2;
        String str;
        ExamSiteModel examSiteModelN;
        ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        if (examSiteModelD != null) {
            long j = 0;
            if (examSiteModelD.examSiteId > 0) {
                try {
                    ExamSiteModel examSiteModelQ = new GeneralBusinessApi().q(examSiteModelD.examSiteId, false);
                    if (examSiteModelQ != null) {
                        try {
                            ExamSiteUtil.r(examSiteModelQ);
                            cn.mucang.android.jiakaoyi.framework.log.f.o("获取到当前考场信息，并更新到本地:" + examSiteModelQ.examSiteId);
                            examSiteModelD = examSiteModelQ;
                        } catch (Throwable th) {
                            th = th;
                            examSiteModelD = examSiteModelQ;
                            cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + ":获取到当前考场信息失败:" + th.getMessage());
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    String str2 = "secondLan-" + examSiteModelD.examSiteId;
                    if (i(str2)) {
                        if (cn.mucang.android.jiakaoyi.signal.handle.gps.k.b(examSiteModelD.longitude, examSiteModelD.latitude)) {
                            n.b().i(examSiteModelD.latitude, examSiteModelD.longitude, examSiteModelD.altitude);
                        } else {
                            n.b().i(examSiteModelD.originLatitude, examSiteModelD.originLongitude, examSiteModelD.originAltitude);
                        }
                        UnityMainActivity.f8795d = (cn.mucang.android.jiakaoyi.signal.i.b) n.b().f7599a;
                        cn.mucang.android.jiakaoyi.teachingk2.res.boundary.i.m();
                        List<Resource> resourceList = ((AbsTeachBaseProvider) DataProviderRegister.f3433a.a(AbsTeachBaseProvider.class, null)).getResourceList();
                        f2 = BitmapDescriptorFactory.HUE_RED;
                        size = 1.0f / resourceList.size();
                        it = resourceList.iterator();
                        while (it.hasNext()) {
                            next = it.next();
                            t.h("www", next.fileRoot);
                            if (cn.mucang.android.core.utils.g.d(list)) {
                            }
                            it2 = it;
                            if (next == Resource.Teaching) {
                            }
                            versionInfoF = f(next, examSiteModelD.examSiteId);
                            File fileC3 = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, versionInfoF.version, versionInfoF.url, versionInfoF.md5);
                            resource = Resource.TileMap;
                            if (next != resource) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源加载异常，本地版本对应的文件不存在！类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + versionInfoF.url);
                                versionInfoF.version = 0;
                                versionInfoF.url = "empty";
                            }
                            cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-请求资源更新，类型：" + next.type + " 版本：" + versionInfoF.version);
                            if (next == resource) {
                                if (AppUtils.b()) {
                                    str = f(Resource.MapDataB2, examSiteModelD.examSiteId).md5;
                                } else {
                                    str = f(Resource.MapData, examSiteModelD.examSiteId).md5;
                                }
                                examSiteModelN = new ResApi().n(examSiteModelD.examSiteId, str);
                                if (examSiteModelN != null) {
                                    resModelM = new ResModel();
                                    resModelM.setUrl(examSiteModelN.mapTileUrl);
                                    resModelM.setFileMd5(examSiteModelN.mapTileMd5);
                                    if (versionInfoF.version != 0) {
                                        resModelM.setVersion(versionInfoF.version + 1);
                                    } else {
                                        resModelM.setVersion(versionInfoF.version + 1);
                                    }
                                } else {
                                    resModelM = null;
                                }
                            } else {
                                resModelM = new ResApi().m(examSiteModelD.examSiteId, next.type, versionInfoF.version);
                            }
                            if (resModelM != null) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-服务器返回结果，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                            } else {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-服务器返回结果 null");
                            }
                            f4 = (0.2f * size) + f2;
                            c(bVar, f4);
                            if (resModelM != null) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-有新资源，开始下载，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                                fileC = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, resModelM.getVersion(), resModelM.getUrl(), resModelM.getFileMd5());
                                boolean zD = new Downloader(resModelM.getUrl(), fileC.getAbsolutePath(), resModelM.getFileMd5()).d(new a(bVar, f4, size));
                                if (fileC.exists()) {
                                    fileC2 = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, versionInfoF.version, versionInfoF.url, versionInfoF.md5);
                                    if (fileC2.exists()) {
                                        fileC2.delete();
                                        cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-删除旧资源，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                    }
                                    versionInfoF.version = resModelM.getVersion();
                                    versionInfoF.url = resModelM.getUrl();
                                    versionInfoF.md5 = resModelM.getFileMd5();
                                    n(next, examSiteModelD.examSiteId, versionInfoF);
                                    if (next == Resource.MapData) {
                                        long j2 = examSiteModelD.examSiteId;
                                        KeMu keMu = KeMu.K2;
                                        ExamSiteUtil.u(j2, keMu, resModelM.getFileMd5());
                                        ExamSiteUtil.t(examSiteModelD.examSiteId, keMu, resModelM.getPosMapCode());
                                    } else if (next == Resource.MapDataK3) {
                                        long j3 = examSiteModelD.examSiteId;
                                        KeMu keMu2 = KeMu.K3;
                                        ExamSiteUtil.u(j3, keMu2, resModelM.getFileMd5());
                                        ExamSiteUtil.t(examSiteModelD.examSiteId, keMu2, resModelM.getPosMapCode());
                                    }
                                    cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源下载成功，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                                }
                            }
                            c(bVar, (0.8f * size) + f2);
                            if (n0.g(versionInfoF.url)) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-本地资源不存在，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                if (d(next, bVar, next.name + "加载失败", false)) {
                                    return;
                                }
                                f2 += size;
                                if (bVar != null) {
                                    f3 = f7558a;
                                    if (f2 < f3) {
                                        t.h("www", "来了老弟" + f7558a);
                                    }
                                }
                                t.h("www", "" + f2 + ":" + bVar);
                                c(bVar, f2);
                            } else {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-本地资源不存在，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                if (d(next, bVar, next.name + "加载失败", false)) {
                                    return;
                                }
                                f2 += size;
                                if (bVar != null) {
                                    f3 = f7558a;
                                    if (f2 < f3) {
                                        t.h("www", "来了老弟" + f7558a);
                                    }
                                }
                                t.h("www", "" + f2 + ":" + bVar);
                                c(bVar, f2);
                            }
                            it = it2;
                            j = 0;
                        }
                        c(bVar, 1.0f);
                        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                ResourceManager.m();
                            }
                        });
                        cn.mucang.android.jiakaoyi.teachingk2.v0.c.b.n();
                        if (MucangConfig.v()) {
                            u.h("加载完成");
                        }
                        return;
                    }
                    List<TeachVoiceModel> listM = new cn.mucang.android.jiakaoyi.teachingk2.res.voice.a().m(examSiteModelD.examSiteId, cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(ExamSiteUtil.e(0L)));
                    if (!cn.mucang.android.core.utils.g.d(listM)) {
                        if (cn.mucang.android.jiakaoyi.signal.handle.gps.k.b(examSiteModelD.longitude, examSiteModelD.latitude)) {
                            n.b().i(examSiteModelD.latitude, examSiteModelD.longitude, examSiteModelD.altitude);
                        } else {
                            n.b().i(examSiteModelD.originLatitude, examSiteModelD.originLongitude, examSiteModelD.originAltitude);
                        }
                        UnityMainActivity.f8795d = (cn.mucang.android.jiakaoyi.signal.i.b) n.b().f7599a;
                        cn.mucang.android.jiakaoyi.teachingk2.res.boundary.i.m();
                        List<Resource> resourceList2 = ((AbsTeachBaseProvider) DataProviderRegister.f3433a.a(AbsTeachBaseProvider.class, null)).getResourceList();
                        f2 = BitmapDescriptorFactory.HUE_RED;
                        size = 1.0f / resourceList2.size();
                        it = resourceList2.iterator();
                        while (it.hasNext()) {
                            next = it.next();
                            t.h("www", next.fileRoot);
                            if (cn.mucang.android.core.utils.g.d(list)) {
                            }
                            it2 = it;
                            if (next == Resource.Teaching) {
                            }
                            versionInfoF = f(next, examSiteModelD.examSiteId);
                            File fileC4 = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, versionInfoF.version, versionInfoF.url, versionInfoF.md5);
                            resource = Resource.TileMap;
                            if (next != resource) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源加载异常，本地版本对应的文件不存在！类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + versionInfoF.url);
                                versionInfoF.version = 0;
                                versionInfoF.url = "empty";
                            }
                            cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-请求资源更新，类型：" + next.type + " 版本：" + versionInfoF.version);
                            if (next == resource) {
                                if (AppUtils.b()) {
                                    str = f(Resource.MapDataB2, examSiteModelD.examSiteId).md5;
                                } else {
                                    str = f(Resource.MapData, examSiteModelD.examSiteId).md5;
                                }
                                examSiteModelN = new ResApi().n(examSiteModelD.examSiteId, str);
                                if (examSiteModelN != null) {
                                    resModelM = new ResModel();
                                    resModelM.setUrl(examSiteModelN.mapTileUrl);
                                    resModelM.setFileMd5(examSiteModelN.mapTileMd5);
                                    if (versionInfoF.version != 0) {
                                        resModelM.setVersion(versionInfoF.version + 1);
                                    } else {
                                        resModelM.setVersion(versionInfoF.version + 1);
                                    }
                                } else {
                                    resModelM = null;
                                }
                            } else {
                                resModelM = new ResApi().m(examSiteModelD.examSiteId, next.type, versionInfoF.version);
                            }
                            if (resModelM != null) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-服务器返回结果，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                            } else {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-服务器返回结果 null");
                            }
                            f4 = (0.2f * size) + f2;
                            c(bVar, f4);
                            if (resModelM != null) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-有新资源，开始下载，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                                fileC = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, resModelM.getVersion(), resModelM.getUrl(), resModelM.getFileMd5());
                                boolean zD2 = new Downloader(resModelM.getUrl(), fileC.getAbsolutePath(), resModelM.getFileMd5()).d(new a(bVar, f4, size));
                                if (fileC.exists()) {
                                    fileC2 = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, versionInfoF.version, versionInfoF.url, versionInfoF.md5);
                                    if (fileC2.exists()) {
                                        fileC2.delete();
                                        cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-删除旧资源，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                    }
                                    versionInfoF.version = resModelM.getVersion();
                                    versionInfoF.url = resModelM.getUrl();
                                    versionInfoF.md5 = resModelM.getFileMd5();
                                    n(next, examSiteModelD.examSiteId, versionInfoF);
                                    if (next == Resource.MapData) {
                                        long j4 = examSiteModelD.examSiteId;
                                        KeMu keMu3 = KeMu.K2;
                                        ExamSiteUtil.u(j4, keMu3, resModelM.getFileMd5());
                                        ExamSiteUtil.t(examSiteModelD.examSiteId, keMu3, resModelM.getPosMapCode());
                                    } else if (next == Resource.MapDataK3) {
                                        long j5 = examSiteModelD.examSiteId;
                                        KeMu keMu4 = KeMu.K3;
                                        ExamSiteUtil.u(j5, keMu4, resModelM.getFileMd5());
                                        ExamSiteUtil.t(examSiteModelD.examSiteId, keMu4, resModelM.getPosMapCode());
                                    }
                                    cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源下载成功，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                                }
                            }
                            c(bVar, (0.8f * size) + f2);
                            if (n0.g(versionInfoF.url)) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-本地资源不存在，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                if (d(next, bVar, next.name + "加载失败", false)) {
                                    return;
                                }
                                f2 += size;
                                if (bVar != null) {
                                    f3 = f7558a;
                                    if (f2 < f3) {
                                        t.h("www", "来了老弟" + f7558a);
                                    }
                                }
                                t.h("www", "" + f2 + ":" + bVar);
                                c(bVar, f2);
                            } else {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-本地资源不存在，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                if (d(next, bVar, next.name + "加载失败", false)) {
                                    return;
                                }
                                f2 += size;
                                if (bVar != null) {
                                    f3 = f7558a;
                                    if (f2 < f3) {
                                        t.h("www", "来了老弟" + f7558a);
                                    }
                                }
                                t.h("www", "" + f2 + ":" + bVar);
                                c(bVar, f2);
                            }
                            it = it2;
                            j = 0;
                        }
                        c(bVar, 1.0f);
                        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                ResourceManager.m();
                            }
                        });
                        cn.mucang.android.jiakaoyi.teachingk2.v0.c.b.n();
                        if (MucangConfig.v()) {
                            u.h("加载完成");
                        }
                        return;
                    }
                    HashMap map = new HashMap();
                    for (TeachVoiceModel teachVoiceModel : listM) {
                        map.put(teachVoiceModel.key(), teachVoiceModel);
                    }
                    n.b().f7604h = map;
                    cn.mucang.android.jiakaoyi.framework.log.f.o("teachVoices:" + JSON.toJSONString(map));
                    e("secondLan");
                    b.put(str2, Boolean.TRUE);
                    if (cn.mucang.android.jiakaoyi.signal.handle.gps.k.b(examSiteModelD.longitude, examSiteModelD.latitude)) {
                        n.b().i(examSiteModelD.latitude, examSiteModelD.longitude, examSiteModelD.altitude);
                    } else {
                        n.b().i(examSiteModelD.originLatitude, examSiteModelD.originLongitude, examSiteModelD.originAltitude);
                    }
                    UnityMainActivity.f8795d = (cn.mucang.android.jiakaoyi.signal.i.b) n.b().f7599a;
                    cn.mucang.android.jiakaoyi.teachingk2.res.boundary.i.m();
                    List<Resource> resourceList3 = ((AbsTeachBaseProvider) DataProviderRegister.f3433a.a(AbsTeachBaseProvider.class, null)).getResourceList();
                    f2 = BitmapDescriptorFactory.HUE_RED;
                    size = 1.0f / resourceList3.size();
                    it = resourceList3.iterator();
                    while (it.hasNext()) {
                        next = it.next();
                        t.h("www", next.fileRoot);
                        if (cn.mucang.android.core.utils.g.d(list) || list.contains(next)) {
                            it2 = it;
                            if (next == Resource.Teaching || cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(ExamSiteUtil.e(j)) > j) {
                                versionInfoF = f(next, examSiteModelD.examSiteId);
                                File fileC5 = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, versionInfoF.version, versionInfoF.url, versionInfoF.md5);
                                resource = Resource.TileMap;
                                if (next != resource && versionInfoF.version != 0 && !versionInfoF.url.equals("empty") && !fileC5.exists()) {
                                    cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源加载异常，本地版本对应的文件不存在！类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + versionInfoF.url);
                                    versionInfoF.version = 0;
                                    versionInfoF.url = "empty";
                                }
                                try {
                                    cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-请求资源更新，类型：" + next.type + " 版本：" + versionInfoF.version);
                                    if (next == resource) {
                                        if (AppUtils.b()) {
                                            str = f(Resource.MapDataB2, examSiteModelD.examSiteId).md5;
                                        } else {
                                            str = f(Resource.MapData, examSiteModelD.examSiteId).md5;
                                        }
                                        examSiteModelN = new ResApi().n(examSiteModelD.examSiteId, str);
                                        if (examSiteModelN != null) {
                                            resModelM = new ResModel();
                                            resModelM.setUrl(examSiteModelN.mapTileUrl);
                                            resModelM.setFileMd5(examSiteModelN.mapTileMd5);
                                            if (versionInfoF.version != 0 || !versionInfoF.md5.equals(resModelM.getFileMd5())) {
                                                resModelM.setVersion(versionInfoF.version + 1);
                                            }
                                        } else {
                                            resModelM = null;
                                        }
                                    } else {
                                        resModelM = new ResApi().m(examSiteModelD.examSiteId, next.type, versionInfoF.version);
                                    }
                                    if (resModelM != null) {
                                        cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-服务器返回结果，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                                    } else {
                                        cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-服务器返回结果 null");
                                    }
                                    f4 = (0.2f * size) + f2;
                                    c(bVar, f4);
                                    if (resModelM != null && n0.g(resModelM.getUrl()) && resModelM.getVersion() > versionInfoF.version) {
                                        cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-有新资源，开始下载，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                                        fileC = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, resModelM.getVersion(), resModelM.getUrl(), resModelM.getFileMd5());
                                        try {
                                            boolean zD3 = new Downloader(resModelM.getUrl(), fileC.getAbsolutePath(), resModelM.getFileMd5()).d(new a(bVar, f4, size));
                                            if (fileC.exists() && zD3) {
                                                try {
                                                    fileC2 = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, versionInfoF.version, versionInfoF.url, versionInfoF.md5);
                                                    if (fileC2.exists()) {
                                                        fileC2.delete();
                                                        cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-删除旧资源，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                                    }
                                                } catch (Throwable th3) {
                                                    u.h("旧资源删除失败:" + th3.getMessage());
                                                    cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-删除旧资源失败，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                                }
                                                versionInfoF.version = resModelM.getVersion();
                                                versionInfoF.url = resModelM.getUrl();
                                                versionInfoF.md5 = resModelM.getFileMd5();
                                                n(next, examSiteModelD.examSiteId, versionInfoF);
                                                if (next == Resource.MapData) {
                                                    long j6 = examSiteModelD.examSiteId;
                                                    KeMu keMu5 = KeMu.K2;
                                                    ExamSiteUtil.u(j6, keMu5, resModelM.getFileMd5());
                                                    ExamSiteUtil.t(examSiteModelD.examSiteId, keMu5, resModelM.getPosMapCode());
                                                } else if (next == Resource.MapDataK3) {
                                                    long j7 = examSiteModelD.examSiteId;
                                                    KeMu keMu6 = KeMu.K3;
                                                    ExamSiteUtil.u(j7, keMu6, resModelM.getFileMd5());
                                                    ExamSiteUtil.t(examSiteModelD.examSiteId, keMu6, resModelM.getPosMapCode());
                                                }
                                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源下载成功，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()));
                                            }
                                        } catch (Throwable th4) {
                                            cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源下载失败，类型：" + resModelM.getType() + " 版本：" + resModelM.getVersion() + " url：" + o(resModelM.getUrl()) + " message：" + th4.getMessage());
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(next.name);
                                            sb.append("下载失败:");
                                            sb.append(th4.getMessage());
                                            u.h(sb.toString());
                                        }
                                    }
                                } catch (Throwable th5) {
                                    cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源更新异常，类型：" + next.type + " 版本：" + versionInfoF.version + " message：" + th5.getMessage());
                                    t.d("TAG", th5.getLocalizedMessage());
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(next.name);
                                    sb2.append("更新异常:");
                                    sb2.append(th5.getMessage());
                                    u.h(sb2.toString());
                                }
                                c(bVar, (0.8f * size) + f2);
                                if (n0.g(versionInfoF.url) || versionInfoF.url.equals("empty")) {
                                    cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-本地资源不存在，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                    if (d(next, bVar, next.name + "加载失败", false)) {
                                        return;
                                    }
                                } else {
                                    if (TextUtils.equals(n.b().l.get(next.type), versionInfoF.url)) {
                                        cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-解析资源一致，直接跳过，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                        f2 += size;
                                        c(bVar, f2);
                                    } else {
                                        File fileC6 = ResDirUtils.c(next.fileRoot, examSiteModelD.examSiteId, versionInfoF.version, versionInfoF.url, versionInfoF.md5);
                                        if (!fileC6.exists()) {
                                            cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-本地资源不存在！类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url));
                                        }
                                        c cVar = f7559d.get(next);
                                        if (cVar != null) {
                                            try {
                                                cn.mucang.android.jiakaoyi.framework.log.f.o("开始解析" + next.name);
                                                cVar.a(fileC6, examSiteModelD.examSiteId);
                                                n.b().l.put(next.type, versionInfoF.url);
                                                cn.mucang.android.jiakaoyi.framework.log.f.o(next.name + "解析完成");
                                            } catch (Throwable th6) {
                                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-资源解析异常，类型：" + next.type + " 版本：" + versionInfoF.version + " url：" + o(versionInfoF.url) + " message：" + th6.getMessage());
                                                StringBuilder sb3 = new StringBuilder();
                                                sb3.append("解析失败，文件");
                                                sb3.append(fileC6.exists() ? "存在，可能是文件下载不完整，删掉后重试" : "不存在");
                                                cn.mucang.android.jiakaoyi.framework.log.f.o(sb3.toString());
                                                fileC6.delete();
                                                if (d(next, bVar, next.name + "解析失败:" + th6.getMessage(), true)) {
                                                    return;
                                                }
                                            }
                                        }
                                    }
                                    it = it2;
                                    j = 0;
                                }
                                f2 += size;
                                if (bVar != null) {
                                    f3 = f7558a;
                                    if (f2 < f3 && f3 != 1.0f) {
                                        t.h("www", "来了老弟" + f7558a);
                                    }
                                }
                                t.h("www", "" + f2 + ":" + bVar);
                                c(bVar, f2);
                                it = it2;
                                j = 0;
                            } else {
                                cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-没有启用教学方案");
                                f2 += size;
                                c(bVar, f2);
                                it = it2;
                                j = 0;
                            }
                        } else {
                            cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + "-指定资源列表，跳过更新：" + next.type);
                            f2 += size;
                            c(bVar, f2);
                            it = it;
                        }
                    }
                    c(bVar, 1.0f);
                    u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            ResourceManager.m();
                        }
                    });
                    cn.mucang.android.jiakaoyi.teachingk2.v0.c.b.n();
                    if (MucangConfig.v()) {
                        u.h("加载完成");
                    }
                    return;
                } catch (Throwable th7) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(examSiteModelD.examSiteId + ":获取当前考场在线教学语音信息失败:" + th7.getMessage());
                }
                throw th;
            }
        }
    }
}
