package cn.mucang.android.jiakaoyi.teachingk2;

import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes4.dex */
public class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SoundPool f7413a;
    private static int b;
    private static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f7415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f7416f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f7417g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f7418h = {cn.mucang.android.jiakaoyi.teachingk2.lib.R.raw.radar_level_high, cn.mucang.android.jiakaoyi.teachingk2.lib.R.raw.radar_level_middle, cn.mucang.android.jiakaoyi.teachingk2.lib.R.raw.radar_level_normal};
    private static final int[] i = new int[3];

    public static synchronized void a() {
        int i2 = 0;
        if (f7413a == null) {
            if (Build.VERSION.SDK_INT >= 21) {
                f7413a = new SoundPool.Builder().setMaxStreams(16).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).build()).build();
            } else {
                f7413a = new SoundPool(16, 3, 0);
            }
        }
        b = f7413a.load(MucangConfig.getContext(), cn.mucang.android.jiakaoyi.teachingk2.lib.R.raw.stop_car_sound, 1);
        c = f7413a.load(MucangConfig.getContext(), cn.mucang.android.jiakaoyi.teachingk2.lib.R.raw.calling_sound, 1);
        f7414d = f7413a.load(MucangConfig.getContext(), cn.mucang.android.jiakaoyi.teachingk2.lib.R.raw.step_switch_sound, 1);
        f7416f = f7413a.load(MucangConfig.getContext(), cn.mucang.android.jiakaoyi.teachingk2.lib.R.raw.robot_ai_wake, 1);
        while (true) {
            int[] iArr = i;
            if (i2 < iArr.length) {
                iArr[i2] = f7413a.load(MucangConfig.getContext(), f7418h[i2], 1);
                i2++;
            }
        }
    }

    public static void b() {
        h();
        SoundPool soundPool = f7413a;
        if (soundPool != null) {
            f7415e = soundPool.play(c, 1.0f, 1.0f, 1, -1, 1.0f);
        }
    }

    public static void c(int i2) {
        SoundPool soundPool;
        if (i2 < 1 || i2 > 3 || (soundPool = f7413a) == null || f7415e >= 0) {
            return;
        }
        f7415e = soundPool.play(i[i2 - 1], 1.0f, 1.0f, 1, -1, 1.0f);
        f7417g = true;
    }

    public static void d() {
        h();
        SoundPool soundPool = f7413a;
        if (soundPool != null) {
            f7415e = soundPool.play(f7416f, 1.0f, 1.0f, 1, 0, 1.0f);
        }
    }

    public static void e() {
        h();
        SoundPool soundPool = f7413a;
        if (soundPool != null) {
            f7415e = soundPool.play(f7414d, 1.0f, 1.0f, 1, 0, 1.0f);
        }
    }

    public static void f() {
        h();
        SoundPool soundPool = f7413a;
        if (soundPool != null) {
            f7415e = soundPool.play(b, 1.0f, 1.0f, 1, 0, 1.0f);
        }
    }

    public static void g() {
        SoundPool soundPool = f7413a;
        if (soundPool != null) {
            soundPool.release();
            f7413a = null;
        }
    }

    public static void h() {
        SoundPool soundPool = f7413a;
        if (soundPool != null) {
            soundPool.stop(f7415e);
            f7415e = -1;
            f7417g = false;
        }
    }

    public static void i() {
        SoundPool soundPool = f7413a;
        if (soundPool == null || !f7417g) {
            return;
        }
        soundPool.stop(f7415e);
        f7415e = -1;
    }
}
