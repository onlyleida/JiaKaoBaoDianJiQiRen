package cn.mucang.android.jiakaoyi.framework.i;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import cn.mucang.android.jiakaoyi.framework.qrcode.zxing.BarcodeFormat;
import cn.mucang.android.jiakaoyi.framework.qrcode.zxing.EncodeHintType;
import cn.mucang.android.jiakaoyi.framework.qrcode.zxing.WriterException;
import cn.mucang.android.jiakaoyi.framework.qrcode.zxing.b;
import cn.mucang.android.jiakaoyi.framework.qrcode.zxing.k;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static Bitmap a(Bitmap bitmap, Bitmap bitmap2, float f2) {
        if (bitmap == null) {
            return null;
        }
        if (bitmap2 == null) {
            return bitmap;
        }
        if (f2 < BitmapDescriptorFactory.HUE_RED || f2 > 1.0f) {
            f2 = 0.2f;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int width2 = bitmap2.getWidth();
        int height2 = bitmap2.getHeight();
        float f3 = (width * f2) / width2;
        float f4 = (height * f2) / height2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
        int i = width / 2;
        int i2 = height / 2;
        canvas.scale(f3, f4, i, i2);
        canvas.drawBitmap(bitmap2, i - (width2 / 2), i2 - (height2 / 2), (Paint) null);
        return bitmapCreateBitmap;
    }

    public static Bitmap b(String str, int i) {
        return c(str, i, "UTF-8", "H", "0", ViewCompat.MEASURED_STATE_MASK, -1, null, null, BitmapDescriptorFactory.HUE_RED);
    }

    public static Bitmap c(String str, int i, String str2, String str3, String str4, int i2, int i3, Bitmap bitmap, Bitmap bitmap2, float f2) {
        Bitmap bitmapCreateScaledBitmap = bitmap;
        if (TextUtils.isEmpty(str) || i <= 0) {
            return null;
        }
        try {
            Hashtable hashtable = new Hashtable();
            if (!TextUtils.isEmpty(str2)) {
                hashtable.put(EncodeHintType.CHARACTER_SET, str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                hashtable.put(EncodeHintType.ERROR_CORRECTION, str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                hashtable.put(EncodeHintType.MARGIN, str4);
            }
            k kVar = new k();
            b bVarA = kVar.a(str, BarcodeFormat.QR_CODE, i, i, hashtable);
            if (bitmapCreateScaledBitmap != null) {
                bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, i, i, false);
            }
            int[] iArr = new int[i * i];
            for (int i4 = 0; i4 < i; i4++) {
                for (int i5 = 0; i5 < i; i5++) {
                    if (!bVarA.d(i5, i4)) {
                        iArr[(i4 * i) + i5] = i3;
                    } else if (bitmapCreateScaledBitmap != null) {
                        iArr[(i4 * i) + i5] = bitmapCreateScaledBitmap.getPixel(i5, i4);
                    } else {
                        iArr[(i4 * i) + i5] = i2;
                    }
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i);
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, kVar.b(), kVar.c(), i - (kVar.b() * 2), i - (kVar.c() * 2));
            return bitmap2 != null ? a(bitmapCreateBitmap2, bitmap2, f2) : bitmapCreateBitmap2;
        } catch (WriterException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
