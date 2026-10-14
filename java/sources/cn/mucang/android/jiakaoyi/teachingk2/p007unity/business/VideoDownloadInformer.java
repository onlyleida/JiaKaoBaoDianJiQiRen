package cn.mucang.android.jiakaoyi.teachingk2.p007unity.business;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.os.Build;
import androidx.core.app.i;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.business.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/VideoDownloadInformer;", "", "()V", "CHANNEL_ID", "", "NOTIFICATION_ID", "", "builder", "Landroidx/core/app/NotificationCompat$Builder;", "notificationManager", "Landroid/app/NotificationManager;", "updateProgress", "", TtmlNode.TAG_P, "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VideoDownloadInformer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VideoDownloadInformer f8414a = new VideoDownloadInformer();
    private static final NotificationManager b;
    private static final i.f c;

    static {
        Object systemService = MucangConfig.getContext().getSystemService("notification");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        b = notificationManager;
        i.f fVar = new i.f(MucangConfig.getContext(), "VideoDownload");
        c = fVar;
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel("VideoDownload", "VideoDownload", 3));
        }
        fVar.setContentTitle(k0.a(R.string.teachbase_downloading_video)).setSmallIcon(R.mipmap.ic_launcher).setDefaults(4).setPriority(-2).setAutoCancel(false).setContentText(k0.a(R.string.teachbase_download_progress)).setProgress(100, 0, false);
    }

    private VideoDownloadInformer() {
    }

    public static final void b(float f2) {
        int i = (int) (f2 * 100);
        if (i >= 100) {
            c.setContentText(k0.a(R.string.teachbase_video_download_complete));
            u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.business.c
                @Override // java.lang.Runnable
                public final void run() {
                    VideoDownloadInformer.c();
                }
            }, 1000L);
        } else {
            i.f fVar = c;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_download_progress2);
            r.d(strA, "getString(R.string.teachbase_download_progress2)");
            String str = String.format(strA, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
            r.d(str, "java.lang.String.format(format, *args)");
            fVar.setContentText(str);
        }
        i.f fVar2 = c;
        fVar2.setProgress(100, i, false);
        b.notify(1, fVar2.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        b.cancel(1);
    }
}
