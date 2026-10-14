package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static ColorFilter a(int i, BlendModeCompat blendModeCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            BlendMode blendModeA = b.a(blendModeCompat);
            if (blendModeA != null) {
                return new BlendModeColorFilter(i, blendModeA);
            }
            return null;
        }
        PorterDuff.Mode modeB = b.b(blendModeCompat);
        if (modeB != null) {
            return new PorterDuffColorFilter(i, modeB);
        }
        return null;
    }
}
