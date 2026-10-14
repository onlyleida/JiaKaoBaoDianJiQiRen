package cn.mucang.android.jiakaoyi.teachingk2.error;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.error.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/error/DriveSettingKeys;", "", "()V", "KEY_ENABLE_CALL", "", "KEY_ENABLE_DOOR", "KEY_ENABLE_DRINK", "KEY_ENABLE_DRIVE", "KEY_ENABLE_EMOTION_CHECK", "KEY_ENABLE_FACE", "KEY_ENABLE_FATIGUE", "KEY_ENABLE_HAND_CROSS", "KEY_ENABLE_NIGHT_CLOSE", "KEY_ENABLE_SIT_TILT", "KEY_ENABLE_SMOKE", "KEY_ENABLE_START", "KEY_ENABLE_WHEEL_NONE", "KEY_ENABLE_WHEEL_SINGLE", "init", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DriveSettingKeys {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DriveSettingKeys f7082a = new DriveSettingKeys();

    private DriveSettingKeys() {
    }

    public static final void a() {
        if (i0.a("KEY_ENABLE_DRIVE")) {
            return;
        }
        if (i0.b("keyEnableDBD", true) && i0.b("keyEnableDBDVoice", false)) {
            i0.i("KEY_ENABLE_DRIVE", true);
        } else {
            i0.i("KEY_ENABLE_DRIVE", false);
        }
    }
}
