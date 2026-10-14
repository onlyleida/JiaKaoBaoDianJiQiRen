package cn.mucang.jiakaoyi.uilib.login.face;

import android.graphics.Bitmap;
import android.util.Size;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u0000 \r2\u00020\u0001:\u0001\rJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\tH&¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;", "", "detect", "", "bitmap", "Landroid/graphics/Bitmap;", "getInputSize", "Landroid/util/Size;", "init", "", "enableGpu", "", "release", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface IMaskDetector {

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.p$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector$Companion;", "", "()V", "RESULT_INVALID", "", "RESULT_WITHOUT_MASK", "RESULT_WITH_MASK", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f9392a = new a();

        private a() {
        }
    }

    static {
        a aVar = a.f9392a;
    }

    int a(Bitmap bitmap);

    Size b();
}
