package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResDirUtils;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;
import kotlin.v;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J,\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0006\u0010\u0007\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;", "", "()V", "cache", "Ljava/util/LinkedHashMap;", "", "", "init", "", "maxSpace", "checkLocalDb", "", "doCheck", "getFileSize", "file", "Ljava/io/File;", "map", "dayTime", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LocalVideoManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LocalVideoManager f7142a = new LocalVideoManager();
    private static final LinkedHashMap<String, Long> b = new LinkedHashMap<>();
    private static boolean c;

    private LocalVideoManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.o
            @Override // java.lang.Runnable
            public final void run() {
                LocalVideoManager.c();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        for (HighlightVideoEntity highlightVideoEntity : HighlightDbManager.f7161a.d()) {
            HighlightDbManager.f7161a.a(highlightVideoEntity);
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：删除已上传的记录，", JSON.toJSONString(highlightVideoEntity)));
        }
        int i = 0;
        for (HighlightVideoEntity highlightVideoEntity2 : HighlightDbManager.f7161a.c()) {
            try {
                if (n0.e(highlightVideoEntity2.getTrackId())) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：初始化 trackId 为空，删除，", JSON.toJSONString(highlightVideoEntity2)));
                    HighlightDbManager.f7161a.a(highlightVideoEntity2);
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        Thread.sleep(1000L);
                        Result.m139constructorimpl(v.f15822a);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        Result.m139constructorimpl(kotlin.k.a(th));
                    }
                } else if (i >= 5) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：初始化已上传5条数据，剩余数据删除,", JSON.toJSONString(highlightVideoEntity2)));
                    HighlightDbManager.f7161a.a(highlightVideoEntity2);
                    Result.Companion companion3 = Result.INSTANCE;
                    Thread.sleep(1000L);
                    Result.m139constructorimpl(v.f15822a);
                } else {
                    if (n0.g(highlightVideoEntity2.getOriginPath())) {
                        if (n0.e(highlightVideoEntity2.getZipPath())) {
                            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：初始化压缩视频,", JSON.toJSONString(highlightVideoEntity2)));
                            try {
                                HighlightVideoManager.f7136a.o(highlightVideoEntity2.getOriginPath(), u.j(), highlightVideoEntity2);
                            } catch (Exception e2) {
                                HighlightDbManager.f7161a.a(highlightVideoEntity2);
                                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：初始化压缩视频失败，直接删除，", JSON.toJSONString(highlightVideoEntity2)));
                                throw e2;
                            }
                        }
                    } else if (n0.e(highlightVideoEntity2.getCompressPath())) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：初始化无效数据，删除,", JSON.toJSONString(highlightVideoEntity2)));
                        HighlightDbManager.f7161a.a(highlightVideoEntity2);
                        Result.Companion companion4 = Result.INSTANCE;
                        Thread.sleep(1000L);
                        Result.m139constructorimpl(v.f15822a);
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：初始化上传视频,", JSON.toJSONString(highlightVideoEntity2)));
                    String shareUrl = new UploadVideoApi(null, null, null, 7, null).b(highlightVideoEntity2).getShareUrl();
                    if (shareUrl == null) {
                        shareUrl = "";
                    }
                    HighlightDbManager.f7161a.j(highlightVideoEntity2.getTrackId(), shareUrl);
                    i++;
                    Result.Companion companion5 = Result.INSTANCE;
                    Thread.sleep(1000L);
                    Result.m139constructorimpl(v.f15822a);
                }
            } catch (Throwable th2) {
                try {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：初始化处理视频失败:", q0.d(th2)));
                    HighlightDbManager.f7161a.a(highlightVideoEntity2);
                    Result.Companion companion6 = Result.INSTANCE;
                    Thread.sleep(1000L);
                    Result.m139constructorimpl(v.f15822a);
                } catch (Throwable th3) {
                    try {
                        Result.Companion companion7 = Result.INSTANCE;
                        Thread.sleep(1000L);
                        Result.m139constructorimpl(v.f15822a);
                    } catch (Throwable th4) {
                        Result.Companion companion8 = Result.INSTANCE;
                        Result.m139constructorimpl(kotlin.k.a(th4));
                    }
                    throw th3;
                }
            }
        }
        f7142a.d();
    }

    private final void d() {
        LinkedHashMap<String, Long> linkedHashMap = b;
        linkedHashMap.clear();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long rawOffset = jCurrentTimeMillis - ((((long) TimeZone.getDefault().getRawOffset()) + jCurrentTimeMillis) % 86400000);
        long jE = e(ResDirUtils.b("video"), linkedHashMap, rawOffset);
        cn.mucang.android.jiakaoyi.framework.log.f.o("初始化检测本地磁盘空间," + rawOffset + ',' + jE);
        if (jE < 2147483648L) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：空间正常1");
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：空间溢出1");
        List<HighlightVideoEntity> listB = HighlightDbManager.f7161a.b();
        Set<String> setKeySet = linkedHashMap.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "cache.keys");
        HashSet<String> hashSetK0 = CollectionsKt___CollectionsKt.K0(setKeySet);
        for (HighlightVideoEntity highlightVideoEntity : listB) {
            if (hashSetK0.contains(highlightVideoEntity.getOriginPath())) {
                hashSetK0.remove(highlightVideoEntity.getOriginPath());
            }
            if (hashSetK0.contains(highlightVideoEntity.getCompressPath())) {
                hashSetK0.remove(highlightVideoEntity.getCompressPath());
            }
            if (hashSetK0.contains(highlightVideoEntity.getZipPath())) {
                hashSetK0.remove(highlightVideoEntity.getZipPath());
            }
        }
        if (!hashSetK0.isEmpty()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：本地有不认识的文件");
            for (String str : hashSetK0) {
                new File(str).delete();
                Long l = b.get(str);
                if (l == null) {
                    l = 0L;
                }
                jE -= l.longValue();
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：删掉不认识的文件,", str));
            }
        }
        if (jE < 2147483648L) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：空间正常2:", Long.valueOf(jE)));
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：空间溢出2:", Long.valueOf(jE)));
        for (HighlightVideoEntity highlightVideoEntity2 : listB) {
            HighlightDbManager.f7161a.a(highlightVideoEntity2);
            LinkedHashMap<String, Long> linkedHashMap2 = b;
            Long l2 = linkedHashMap2.get(highlightVideoEntity2.getOriginPath());
            if (l2 == null) {
                l2 = 0L;
            }
            long jLongValue = jE - l2.longValue();
            Long l3 = linkedHashMap2.get(highlightVideoEntity2.getCompressPath());
            if (l3 == null) {
                l3 = 0L;
            }
            long jLongValue2 = jLongValue - l3.longValue();
            Long l4 = linkedHashMap2.get(highlightVideoEntity2.getZipPath());
            if (l4 == null) {
                l4 = 0L;
            }
            jE = jLongValue2 - l4.longValue();
            if (jE < 2147483648L) {
                break;
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：最终空间:", Long.valueOf(jE)));
    }

    private final long e(File file, LinkedHashMap<String, Long> linkedHashMap, long j) {
        long jE = 0;
        if (file.isFile()) {
            if (file.lastModified() >= j) {
                return 0L;
            }
            long length = file.length();
            LinkedHashMap<String, Long> linkedHashMap2 = b;
            String absolutePath = file.getAbsolutePath();
            kotlin.jvm.internal.r.d(absolutePath, "file.absolutePath");
            linkedHashMap2.put(absolutePath, Long.valueOf(length));
            return length;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return 0L;
        }
        int i = 0;
        int length2 = fileArrListFiles.length;
        while (i < length2) {
            File fi = fileArrListFiles[i];
            i++;
            kotlin.jvm.internal.r.d(fi, "fi");
            jE += e(fi, linkedHashMap, j);
        }
        return jE;
    }

    public final void f() {
        if (c) {
            return;
        }
        c = true;
        kotlinx.coroutines.g.b(j0.b(), null, null, new LocalVideoManager$init$1(null), 3, null);
    }
}
