package org.webrtc;

/* JADX INFO: compiled from: EglBase.java */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class o0 {
    public static EglBase.ConfigBuilder a() {
        return new EglBase.ConfigBuilder();
    }

    public static EglBase b() {
        return c(null, EglBase.CONFIG_PLAIN);
    }

    public static EglBase c(EglBase.Context context, int[] iArr) {
        if (context == null) {
            return EglBase14Impl.isEGL14Supported() ? g(iArr) : e(iArr);
        }
        if (context instanceof EglBase14.Context) {
            return f((EglBase14.Context) context, iArr);
        }
        if (context instanceof EglBase10.Context) {
            return d((EglBase10.Context) context, iArr);
        }
        throw new IllegalArgumentException("Unrecognized Context");
    }

    public static EglBase10 d(EglBase10.Context context, int[] iArr) {
        return new EglBase10Impl(context == null ? null : context.getRawContext(), iArr);
    }

    public static EglBase10 e(int[] iArr) {
        return new EglBase10Impl(null, iArr);
    }

    public static EglBase14 f(EglBase14.Context context, int[] iArr) {
        return new EglBase14Impl(context == null ? null : context.getRawContext(), iArr);
    }

    public static EglBase14 g(int[] iArr) {
        return new EglBase14Impl(null, iArr);
    }

    public static int h(int[] iArr) {
        for (int i = 0; i < iArr.length - 1; i++) {
            if (iArr[i] == 12352) {
                int i2 = iArr[i + 1];
                if (i2 != 4) {
                    return i2 != 64 ? 1 : 3;
                }
                return 2;
            }
        }
        return 1;
    }
}
