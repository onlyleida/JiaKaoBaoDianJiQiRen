package cn.mucang.jiakaoyi.uilib.ui.check;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.utils.Downloader;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.check.r, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u0019B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0013R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher;", "", "forceOta", "", "forceObd", "callback", "Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;", "(ZZLcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;)V", "getCallback", "()Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;", "setCallback", "(Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;)V", "getForceObd", "()Z", "setForceObd", "(Z)V", "getForceOta", "setForceOta", "download", "", "url", "", "file", "Ljava/io/File;", "fetch", "FetcherFirmwareCallback", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FirmwareFetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f9795a;
    private boolean b;
    private a c;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.check.r$a */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0016\u0010\u0006\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH'J\u0016\u0010\n\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH'J\b\u0010\u000b\u001a\u00020\u0003H'J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\tH'J\b\u0010\u000e\u001a\u00020\u0003H'¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;", "", "onFetchError", "", "e", "", "onFetchFirmwareInfo", "models", "", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "onFirmwareDownload", "onFirmwareEmpty", "onMustUpgradeApk", "model", "onStart", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {
        void a();

        void b(UpgradeInfoModel upgradeInfoModel);

        void c(List<UpgradeInfoModel> list);

        void d(Throwable th);

        void e(List<UpgradeInfoModel> list);

        void onStart();
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.check.r$b */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((UpgradeInfoModel) t).getType()), Integer.valueOf(((UpgradeInfoModel) t2).getType()));
        }
    }

    public FirmwareFetcher(boolean z, boolean z2, a aVar) {
        this.f9795a = z;
        this.b = z2;
        this.c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(FirmwareFetcher this$0) {
        String strX;
        String strX2;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            long jNanoTime = System.nanoTime();
            List<UpgradeInfoModel> list = cn.mucang.jiakaoyi.uilib.unityres.a.a(this$0.getF9795a(), this$0.getB());
            if (this$0.getF9795a() && cn.mucang.android.core.utils.g.b(list)) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("forceOta为tue，但是获取的升级为空");
            }
            if (this$0.getB() && cn.mucang.android.core.utils.g.b(list)) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("forceObd为tue，但是获取的升级为空");
            }
            t.h("khq", kotlin.jvm.internal.r.m("ota升级api调用时间 : ", Double.valueOf((System.nanoTime() - jNanoTime) / 1000000.0d)));
            if (!cn.mucang.android.core.utils.g.d(list)) {
                a c = this$0.getC();
                if (c == null) {
                    return;
                }
                c.a();
                return;
            }
            kotlin.jvm.internal.r.d(list, "list");
            Iterator<T> it = list.iterator();
            while (true) {
                String strX3 = null;
                if (!it.hasNext()) {
                    break;
                }
                UpgradeInfoModel upgradeInfoModel = (UpgradeInfoModel) it.next();
                StringBuilder sb = new StringBuilder();
                sb.append("新升级服务响应: 类型");
                sb.append(upgradeInfoModel.getType());
                sb.append(',');
                sb.append(upgradeInfoModel.getVersion());
                sb.append(',');
                sb.append((Object) upgradeInfoModel.getVersionName());
                sb.append(',');
                String filePath = upgradeInfoModel.getFilePath();
                if (filePath != null && (strX = kotlin.text.t.x(filePath, "-", "hx", false, 4, null)) != null && (strX2 = kotlin.text.t.x(strX, ".", "dn", false, 4, null)) != null) {
                    strX3 = kotlin.text.t.x(strX2, "/", "xx", false, 4, null);
                }
                sb.append((Object) strX3);
                cn.mucang.android.jiakaoyi.framework.log.f.f(sb.toString());
            }
            if (list.size() == 1 && list.get(0).getType() == cn.mucang.jiakaoyi.uilib.unityres.a.f10311d) {
                UpgradeInfoModel updateModel = list.get(0);
                if (n0.e(updateModel.getVersionName())) {
                    if (updateModel.getVersion() >= 10000) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(updateModel.getVersion() / 10000);
                        sb2.append('.');
                        sb2.append((updateModel.getVersion() % 10000) / 100);
                        sb2.append('.');
                        sb2.append(updateModel.getVersion() % 100);
                        updateModel.setVersionName(sb2.toString());
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(updateModel.getVersion() / 100);
                        sb3.append('.');
                        sb3.append((updateModel.getVersion() % 100) / 10);
                        sb3.append('.');
                        sb3.append(updateModel.getVersion() % 10);
                        updateModel.setVersionName(sb3.toString());
                    }
                }
                a c2 = this$0.getC();
                if (c2 == null) {
                    return;
                }
                kotlin.jvm.internal.r.d(updateModel, "updateModel");
                c2.b(updateModel);
                return;
            }
            a c3 = this$0.getC();
            if (c3 != null) {
                c3.e(list);
            }
            List listG0 = CollectionsKt___CollectionsKt.G0(list, new b());
            int i = 0;
            for (Object obj : listG0) {
                int i2 = i + 1;
                if (i < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                UpgradeInfoModel upgradeInfoModel2 = (UpgradeInfoModel) obj;
                File file = new File(MucangConfig.getContext().getFilesDir(), h0.d(upgradeInfoModel2.getFilePath()));
                upgradeInfoModel2.setDownloadFilePath(file.getAbsolutePath());
                if (file.exists()) {
                    file.delete();
                }
                String filePath2 = upgradeInfoModel2.getFilePath();
                kotlin.jvm.internal.r.c(filePath2);
                String absolutePath = file.getAbsolutePath();
                kotlin.jvm.internal.r.d(absolutePath, "file.absolutePath");
                if (new Downloader(filePath2, absolutePath, upgradeInfoModel2.getMd5()).c()) {
                    upgradeInfoModel2.setFileAvailable(true);
                } else {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("文件下载失败:", Integer.valueOf(upgradeInfoModel2.getType())));
                    upgradeInfoModel2.setFileAvailable(false);
                }
                i = i2;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : listG0) {
                if (((UpgradeInfoModel) obj2).getIsFileAvailable()) {
                    arrayList.add(obj2);
                }
            }
            if (cn.mucang.android.core.utils.g.d(arrayList)) {
                a c4 = this$0.getC();
                if (c4 == null) {
                    return;
                }
                c4.c(arrayList);
                return;
            }
            a c5 = this$0.getC();
            if (c5 == null) {
                return;
            }
            c5.a();
        } catch (Throwable th) {
            a c6 = this$0.getC();
            if (c6 == null) {
                return;
            }
            c6.d(th);
        }
    }

    public final void a() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.onStart();
        }
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.check.a
            @Override // java.lang.Runnable
            public final void run() {
                FirmwareFetcher.b(this.f9777a);
            }
        });
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final a getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final boolean getF9795a() {
        return this.f9795a;
    }
}
