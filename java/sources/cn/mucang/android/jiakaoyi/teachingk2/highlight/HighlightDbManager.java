package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0007J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0007J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0007J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004J\"\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ&\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aJ\u001a\u0010\u001b\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightDbManager;", "", "()V", "logPrefix", "", "deleteEntity", "", "entity", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;", "getLocalList", "", "getNotUploadList", "getUploadedList", "onUploadSuccess", "trackId", "shareUrl", "saveVideoDb", "onInsert", "Lkotlin/Function1;", "update", "", "updateCompressPath", "originPath", "compressPath", "zipPath", "duration", "", "updateTrackId", "traceId", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HighlightDbManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HighlightDbManager f7161a = new HighlightDbManager();

    private HighlightDbManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(String trackId, String shareUrl) {
        kotlin.jvm.internal.r.e(trackId, "$trackId");
        kotlin.jvm.internal.r.e(shareUrl, "$shareUrl");
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            HighlightVideoEntity highlightVideoEntity = (HighlightVideoEntity) cn.mucang.android.jiakaoyi.framework.f.a.a().n(HighlightVideoEntity.class, cn.mucang.android.core.db.e.d("select * from t_highlight_video where track_id=?", trackId));
            if (highlightVideoEntity != null) {
                highlightVideoEntity.setShareUrl(shareUrl);
                highlightVideoEntity.setUpdateTime(System.currentTimeMillis());
                f7161a.a(highlightVideoEntity);
                cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：视频上传成功," + highlightVideoEntity.getTraceId() + ',' + highlightVideoEntity.getTrackId() + ',' + highlightVideoEntity.getShareUrl());
                LiveBus.d(HighlightVideoEntity.class).l(highlightVideoEntity);
            }
            v vVar = v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(final HighlightVideoEntity entity, final Function1 onInsert) {
        kotlin.jvm.internal.r.e(entity, "$entity");
        kotlin.jvm.internal.r.e(onInsert, "$onInsert");
        entity.setUpdateTime(System.currentTimeMillis());
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            cn.mucang.android.jiakaoyi.framework.f.a.a().u(entity);
            v vVar = v.f15822a;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：生成,", entity.getTraceId()));
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.a
            @Override // java.lang.Runnable
            public final void run() {
                HighlightDbManager.n(onInsert, entity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(Function1 onInsert, HighlightVideoEntity entity) {
        kotlin.jvm.internal.r.e(onInsert, "$onInsert");
        kotlin.jvm.internal.r.e(entity, "$entity");
        onInsert.invoke(entity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(String originPath, String compressPath, String zipPath, long j) {
        kotlin.jvm.internal.r.e(originPath, "$originPath");
        kotlin.jvm.internal.r.e(compressPath, "$compressPath");
        kotlin.jvm.internal.r.e(zipPath, "$zipPath");
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            HighlightVideoEntity highlightVideoEntity = (HighlightVideoEntity) cn.mucang.android.jiakaoyi.framework.f.a.a().n(HighlightVideoEntity.class, cn.mucang.android.core.db.e.d("select * from t_highlight_video where origin_path=?", originPath));
            if (highlightVideoEntity != null) {
                highlightVideoEntity.setCompressPath(compressPath);
                highlightVideoEntity.setZipPath(zipPath);
                highlightVideoEntity.setCompressDuration(j);
                highlightVideoEntity.setUpdateTime(System.currentTimeMillis());
                if (!MucangConfig.v()) {
                    File fileC = VideoUtils.f7169a.c(originPath, false);
                    if (fileC != null) {
                        fileC.delete();
                    }
                    if (new File(originPath).delete()) {
                        highlightVideoEntity.setOriginPath("");
                    }
                }
                if (cn.mucang.android.jiakaoyi.framework.f.a.a().F(highlightVideoEntity) != -1) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：更新压缩路径," + highlightVideoEntity.getTraceId() + ',' + highlightVideoEntity.getTrackId() + ',' + j);
                    LiveBus.d(HighlightVideoEntity.class).l(highlightVideoEntity);
                }
            }
            v vVar = v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(String str, String str2) {
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            HighlightVideoEntity highlightVideoEntity = (HighlightVideoEntity) cn.mucang.android.jiakaoyi.framework.f.a.a().n(HighlightVideoEntity.class, cn.mucang.android.core.db.e.d("select * from t_highlight_video where trace_id=?", str));
            if (highlightVideoEntity != null) {
                kotlin.jvm.internal.r.c(str2);
                highlightVideoEntity.setTrackId(str2);
                highlightVideoEntity.setUpdateTime(System.currentTimeMillis());
                cn.mucang.android.jiakaoyi.framework.f.a.a().E(highlightVideoEntity);
                cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：绑定轨迹成功," + ((Object) str) + ',' + ((Object) str2));
                LiveBus.d(HighlightVideoEntity.class).l(highlightVideoEntity);
            }
            v vVar = v.f15822a;
        }
    }

    public final void a(HighlightVideoEntity entity) {
        kotlin.jvm.internal.r.e(entity, "entity");
        new File(entity.getOriginPath()).delete();
        new File(entity.getCompressPath()).delete();
        new File(entity.getZipPath()).delete();
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            cn.mucang.android.core.db.a aVarA = cn.mucang.android.jiakaoyi.framework.f.a.a();
            Long id = entity.getId();
            kotlin.jvm.internal.r.d(id, "entity.id");
            aVarA.h(HighlightVideoEntity.class, id.longValue());
        }
    }

    public final List<HighlightVideoEntity> b() {
        ArrayList arrayList = new ArrayList();
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            List result = cn.mucang.android.jiakaoyi.framework.f.a.a().y(HighlightVideoEntity.class, cn.mucang.android.core.db.e.d("select * from t_highlight_video order by update_time asc", new String[0]));
            if (cn.mucang.android.core.utils.g.d(result)) {
                kotlin.jvm.internal.r.d(result, "result");
                arrayList.addAll(result);
            }
            v vVar = v.f15822a;
        }
        return arrayList;
    }

    public final List<HighlightVideoEntity> c() {
        ArrayList arrayList = new ArrayList();
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            List result = cn.mucang.android.jiakaoyi.framework.f.a.a().y(HighlightVideoEntity.class, cn.mucang.android.core.db.e.d("select * from t_highlight_video where share_url = '' order by update_time desc", new String[0]));
            if (cn.mucang.android.core.utils.g.d(result)) {
                kotlin.jvm.internal.r.d(result, "result");
                arrayList.addAll(result);
            }
            v vVar = v.f15822a;
        }
        return arrayList;
    }

    public final List<HighlightVideoEntity> d() {
        ArrayList arrayList = new ArrayList();
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            List result = cn.mucang.android.jiakaoyi.framework.f.a.a().y(HighlightVideoEntity.class, cn.mucang.android.core.db.e.d("select * from t_highlight_video where share_url != '' order by update_time asc", new String[0]));
            if (cn.mucang.android.core.utils.g.d(result)) {
                kotlin.jvm.internal.r.d(result, "result");
                arrayList.addAll(result);
            }
            v vVar = v.f15822a;
        }
        return arrayList;
    }

    public final void j(final String trackId, final String shareUrl) {
        kotlin.jvm.internal.r.e(trackId, "trackId");
        kotlin.jvm.internal.r.e(shareUrl, "shareUrl");
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.b
            @Override // java.lang.Runnable
            public final void run() {
                HighlightDbManager.k(trackId, shareUrl);
            }
        });
    }

    public final void l(final HighlightVideoEntity entity, final Function1<? super HighlightVideoEntity, v> onInsert) {
        kotlin.jvm.internal.r.e(entity, "entity");
        kotlin.jvm.internal.r.e(onInsert, "onInsert");
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.c
            @Override // java.lang.Runnable
            public final void run() {
                HighlightDbManager.m(entity, onInsert);
            }
        });
    }

    public final int o(HighlightVideoEntity entity) {
        int iF;
        kotlin.jvm.internal.r.e(entity, "entity");
        Object DbLock = cn.mucang.android.jiakaoyi.framework.consts.a.f3429a;
        kotlin.jvm.internal.r.d(DbLock, "DbLock");
        synchronized (DbLock) {
            iF = cn.mucang.android.jiakaoyi.framework.f.a.a().F(entity);
        }
        return iF;
    }

    public final void p(final String originPath, final String compressPath, final String zipPath, final long j) {
        kotlin.jvm.internal.r.e(originPath, "originPath");
        kotlin.jvm.internal.r.e(compressPath, "compressPath");
        kotlin.jvm.internal.r.e(zipPath, "zipPath");
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.d
            @Override // java.lang.Runnable
            public final void run() {
                HighlightDbManager.q(originPath, compressPath, zipPath, j);
            }
        });
    }

    public final void r(final String str, final String str2) {
        if (cn.mucang.android.core.utils.n0.e(str) || cn.mucang.android.core.utils.n0.e(str2)) {
            return;
        }
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.e
            @Override // java.lang.Runnable
            public final void run() {
                HighlightDbManager.s(str, str2);
            }
        });
    }
}
