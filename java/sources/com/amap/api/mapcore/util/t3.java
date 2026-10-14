package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes5.dex */
public class t3 extends u3 {
    public t3(Context context, int i, int i2) {
        super(context);
        x(i, i2);
    }

    public static int v(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 <= i2 && i4 <= i) {
            return 1;
        }
        int iRound = Math.round(i3 / i2);
        int iRound2 = Math.round(i4 / i);
        if (iRound >= iRound2) {
            iRound = iRound2;
        }
        while ((i4 * i3) / (iRound * iRound) > i * i2 * 2) {
            iRound++;
        }
        return iRound;
    }

    public static Bitmap w(FileDescriptor fileDescriptor, int i, int i2, v3 v3Var) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        options.inSampleSize = v(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
    }

    public void x(int i, int i2) {
    }
}
