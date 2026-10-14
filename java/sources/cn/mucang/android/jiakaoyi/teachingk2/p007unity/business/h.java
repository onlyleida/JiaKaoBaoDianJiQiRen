package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback;
import cn.mucang.android.jiakaoyi.framework.utils.Downloader;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.jiakaoyi.uilib.unityres.UpgradeLocalInfo;
import cn.mucang.jiakaoyi.uilib.upgrade.c;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f8407a = 100;
    public static int b = 101;
    private static final int[] c = {100, 101};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Integer, UpgradeLocalInfo> f8408d = new HashMap();

    static class a implements DownloadCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f8409a;
        final /* synthetic */ File b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f8410d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f8411e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f8412f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ cn.mucang.jiakaoyi.uilib.unityres.a.b f8413g;

        a(b bVar, File file, boolean z, String str, int i, int i2, cn.mucang.jiakaoyi.uilib.unityres.a.b bVar2) {
            this.f8409a = bVar;
            this.b = file;
            this.c = z;
            this.f8410d = str;
            this.f8411e = i;
            this.f8412f = i2;
            this.f8413g = bVar2;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void a(float f2) {
            if (f2 < BitmapDescriptorFactory.HUE_RED || f2 > 1.0f) {
                return;
            }
            this.f8409a.callback(Float.valueOf(f2));
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void b() {
            String absolutePath = this.b.getAbsolutePath();
            if (this.c && new File(this.f8410d).delete()) {
                f.o("新文件已下载好，删除存在的旧文件");
            }
            h.j(this.f8411e, this.f8412f, absolutePath);
            cn.mucang.jiakaoyi.uilib.unityres.a.b bVar = this.f8413g;
            if (bVar != null) {
                bVar.b(absolutePath);
            }
        }
    }

    public static void a() {
        for (int i : c) {
            String strC = c(i);
            if (!n0.e(strC) && new File(strC).exists()) {
                f.o("删除unity资源:" + i + "  " + new File(strC).delete());
            }
        }
    }

    private static String b(int i) {
        return "_key_res_info_" + i;
    }

    public static String c(int i) {
        UpgradeLocalInfo upgradeLocalInfoE = e(i);
        return upgradeLocalInfoE == null ? "" : upgradeLocalInfoE.path;
    }

    private static String d() {
        return MucangConfig.getContext().getExternalFilesDir(null).getAbsolutePath();
    }

    public static UpgradeLocalInfo e(int i) {
        Map<Integer, UpgradeLocalInfo> map = f8408d;
        UpgradeLocalInfo upgradeLocalInfo = map.get(Integer.valueOf(i));
        if (upgradeLocalInfo != null) {
            return upgradeLocalInfo;
        }
        String strG = i0.g(b(i), "");
        if (!n0.g(strG)) {
            return upgradeLocalInfo;
        }
        try {
            UpgradeLocalInfo upgradeLocalInfo2 = (UpgradeLocalInfo) JSON.parseObject(strG, UpgradeLocalInfo.class);
            try {
                map.put(Integer.valueOf(i), upgradeLocalInfo2);
            } catch (Exception unused) {
            }
            return upgradeLocalInfo2;
        } catch (Exception unused2) {
            return upgradeLocalInfo;
        }
    }

    private static int f(int i) {
        UpgradeLocalInfo upgradeLocalInfoE = e(i);
        if (upgradeLocalInfoE == null) {
            return 0;
        }
        return upgradeLocalInfoE.version;
    }

    static /* synthetic */ void g(cn.mucang.jiakaoyi.uilib.unityres.a.b bVar, Float f2) {
        if (bVar != null) {
            bVar.a(f2.floatValue());
        }
    }

    public static void h(int i, final cn.mucang.jiakaoyi.uilib.unityres.a.b bVar) {
        int iF = f(i);
        String strC = c(i);
        boolean z = n0.g(strC) && new File(strC).exists();
        if (!z) {
            iF = 0;
        }
        UpgradeInfoModel upgradeInfoModelM = null;
        try {
            upgradeInfoModelM = new c().m(i, iF);
        } catch (Exception unused) {
        }
        if (upgradeInfoModelM == null || upgradeInfoModelM.getVersion() <= iF || !n0.g(upgradeInfoModelM.getFilePath())) {
            if (z) {
                if (bVar != null) {
                    bVar.b(strC);
                    return;
                }
                return;
            } else {
                if (bVar != null) {
                    bVar.c(k0.a(R.string.teachbase_file_not_exist));
                    return;
                }
                return;
            }
        }
        String filePath = upgradeInfoModelM.getFilePath();
        int version = upgradeInfoModelM.getVersion();
        b bVar2 = new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.business.b
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                h.g(bVar, (Float) obj);
            }
        };
        File file = new File(d(), "_u_prefix_" + i + "_" + version);
        try {
            new Downloader(filePath, file.getAbsolutePath(), upgradeInfoModelM.getMd5()).d(new a(bVar2, file, z, strC, i, version, bVar));
        } catch (Throwable unused2) {
            if (z) {
                if (bVar != null) {
                    bVar.b(strC);
                }
            } else if (bVar != null) {
                bVar.c(k0.a(R.string.teachbase_download_fail));
            }
        }
    }

    public static Map<String, String> i() {
        HashMap map = new HashMap();
        for (int i : c) {
            String strC = c(i);
            if (n0.e(strC) || !new File(strC).exists()) {
                return null;
            }
            if (i == b) {
                map.put(String.valueOf(i), "file://" + strC);
            } else {
                map.put(String.valueOf(i), strC);
            }
        }
        return map;
    }

    public static void j(int i, int i2, String str) {
        UpgradeLocalInfo upgradeLocalInfo = new UpgradeLocalInfo(i, i2, str);
        i0.m(b(i), JSON.toJSONString(upgradeLocalInfo));
        f8408d.put(Integer.valueOf(i), upgradeLocalInfo);
    }
}
