package cn.mucang.android.jiakaoyi.framework.tts.i;

import cn.mucang.android.jiakaoyi.framework.tts.models.VoicePackEntity;
import cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback;
import cn.mucang.android.jiakaoyi.framework.utils.Downloader;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.tts.i.a$a, reason: collision with other inner class name */
    static class C0106a implements DownloadCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b f3518a;

        C0106a(cn.mucang.android.jiakaoyi.framework.h.b bVar) {
            this.f3518a = bVar;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void a(float f2) {
            this.f3518a.callback(Float.valueOf(f2));
        }

        @Override // cn.mucang.android.jiakaoyi.framework.utils.DownloadCallback
        public void b() {
            this.f3518a.callback(Float.valueOf(1.0f));
        }
    }

    public static File a(String str, String str2) {
        int iLastIndexOf;
        String str3 = b.m() + str2 + ((!str.endsWith(".") && (iLastIndexOf = str.lastIndexOf(".")) > 0) ? str.substring(iLastIndexOf) : ".aac");
        try {
            if (new Downloader(str, str3, null).d(null)) {
                return new File(str3);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static File b(VoicePackEntity voicePackEntity, cn.mucang.android.jiakaoyi.framework.h.b<Float> bVar) {
        try {
            if (new Downloader(voicePackEntity.url, voicePackEntity.filePath, null).d(new C0106a(bVar))) {
                return new File(voicePackEntity.filePath);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }
}
