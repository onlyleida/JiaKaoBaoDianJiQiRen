package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper;
import cn.mucang.android.jiakaoyi.teachingk2.videosplit.Segment;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;"}, k = 3, mv = {1, 5, 1}, xi = 48)
final class HighlightVideoManager$onRecordFinished$2 extends Lambda implements Function1<HighlightVideoEntity, v> {
    final /* synthetic */ HighlightVideoEntity $entity;
    final /* synthetic */ String $filePath;
    final /* synthetic */ List<Segment> $segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HighlightVideoManager$onRecordFinished$2(HighlightVideoEntity highlightVideoEntity, String str, List<Segment> list) {
        super(1);
        this.$entity = highlightVideoEntity;
        this.$filePath = str;
        this.$segments = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m41invoke$lambda0(HighlightVideoEntity entity, String filePath, List segments) {
        kotlin.jvm.internal.r.e(entity, "$entity");
        kotlin.jvm.internal.r.e(filePath, "$filePath");
        try {
            boolean zA = kotlin.jvm.internal.r.a(LoginHelper.f7296a.c().e(), Boolean.TRUE);
            boolean z = true;
            int i = 0;
            while (zA && z && i < 25) {
                if (VideoUtils.f7169a.d(entity.getStartTime()).exists()) {
                    z = false;
                } else {
                    i++;
                    Thread.sleep(20L);
                }
            }
            VideoUtils videoUtils = VideoUtils.f7169a;
            File fileD = videoUtils.d(entity.getStartTime());
            if (zA && fileD.exists() && fileD.length() > 0) {
                File fileC = videoUtils.c(filePath, false);
                if (fileC != null) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：学员录像可用，" + fileD.length() + (char) 65292 + z + (char) 65292 + i);
                    kotlin.io.g.j(fileD, fileC, false, 0, 6, null);
                    fileD.delete();
                }
            } else {
                cn.mucang.android.jiakaoyi.framework.log.f.o("精彩时刻：学员录像不可用，" + fileD.length() + (char) 65292 + z + (char) 65292 + i + (char) 65292 + zA);
            }
            HighlightVideoManager highlightVideoManager = HighlightVideoManager.f7136a;
            kotlin.jvm.internal.r.d(segments, "segments");
            HighlightVideoManager.p(highlightVideoManager, filePath, segments, null, 4, null);
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("精彩时刻：视频处理异常:", q0.d(th)));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ v invoke(HighlightVideoEntity highlightVideoEntity) {
        invoke2(highlightVideoEntity);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(HighlightVideoEntity it) {
        kotlin.jvm.internal.r.e(it, "it");
        final HighlightVideoEntity highlightVideoEntity = this.$entity;
        final String str = this.$filePath;
        final List<Segment> list = this.$segments;
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.highlight.n
            @Override // java.lang.Runnable
            public final void run() {
                HighlightVideoManager$onRecordFinished$2.m41invoke$lambda0(highlightVideoEntity, str, list);
            }
        });
    }
}
