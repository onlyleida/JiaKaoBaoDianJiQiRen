package cn.mucang.android.jiakaoyi.teachingk2.login;

import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoFactory;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.push.AiCameraAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.push.UsbCameraAdapter;
import cn.mucang.android.jky.camera.CameraIntent;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/SundialVideoFactory;", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;", "()V", "createSource", "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SundialVideoFactory implements SourceVideoFactory {
    @Override // cn.mucang.android.jiakaoyi.framework.camera.SourceVideoFactory
    public SourceVideoStream a() {
        return LocalConfigManager.f(LocalConfig.SundialCameraFromAi) ? new AiCameraAdapter() : new UsbCameraAdapter(CameraIntent.FACE);
    }
}
