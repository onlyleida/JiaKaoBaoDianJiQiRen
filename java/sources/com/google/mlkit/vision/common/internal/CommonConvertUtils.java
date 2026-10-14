package com.google.mlkit.vision.common.internal;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.Image;
import android.os.SystemClock;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_vision_common.zzkc;
import com.google.android.gms.internal.mlkit_vision_common.zzke;
import com.google.android.gms.internal.mlkit_vision_common.zzkg;
import com.google.android.odml.image.BitmapExtractor;
import com.google.android.odml.image.ByteBufferExtractor;
import com.google.android.odml.image.ImageProperties;
import com.google.android.odml.image.MediaImageExtractor;
import com.google.android.odml.image.MlImage;
import com.google.mlkit.vision.common.InputImage;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@KeepForSdk
public class CommonConvertUtils {
    @KeepForSdk
    public static int convertToAndroidImageFormat(@InputImage.ImageFormat int i) {
        int i2 = 17;
        if (i != 17) {
            i2 = 35;
            if (i != 35) {
                i2 = InputImage.IMAGE_FORMAT_YV12;
                if (i != 842094169) {
                    return 0;
                }
            }
        }
        return i2;
    }

    @KeepForSdk
    public static int convertToMVRotation(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 90) {
            return 1;
        }
        if (i == 180) {
            return 2;
        }
        if (i == 270) {
            return 3;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Invalid rotation: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    @KeepForSdk
    public static void transformPointArray(Point[] pointArr, Matrix matrix) {
        int length = pointArr.length;
        float[] fArr = new float[length + length];
        for (int i = 0; i < pointArr.length; i++) {
            int i2 = i + i;
            fArr[i2] = pointArr[i].x;
            fArr[i2 + 1] = pointArr[i].y;
        }
        matrix.mapPoints(fArr);
        for (int i3 = 0; i3 < pointArr.length; i3++) {
            int i4 = i3 + i3;
            pointArr[i3].set((int) fArr[i4], (int) fArr[i4 + 1]);
        }
    }

    @KeepForSdk
    public static void transformPointF(PointF pointF, Matrix matrix) {
        float[] fArr = {pointF.x, pointF.y};
        matrix.mapPoints(fArr);
        pointF.set(fArr[0], fArr[1]);
    }

    @KeepForSdk
    public static void transformPointList(List<PointF> list, Matrix matrix) {
        int size = list.size();
        float[] fArr = new float[size + size];
        for (int i = 0; i < list.size(); i++) {
            int i2 = i + i;
            fArr[i2] = list.get(i).x;
            fArr[i2 + 1] = list.get(i).y;
        }
        matrix.mapPoints(fArr);
        for (int i3 = 0; i3 < list.size(); i3++) {
            int i4 = i3 + i3;
            list.get(i3).set(fArr[i4], fArr[i4 + 1]);
        }
    }

    @KeepForSdk
    public static void transformRect(Rect rect, Matrix matrix) {
        RectF rectF = new RectF(rect);
        matrix.mapRect(rectF);
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    static InputImage zza(MlImage mlImage) {
        Integer numValueOf;
        ImageProperties imageProperties = mlImage.getContainedImageProperties().get(0);
        int storageType = imageProperties.getStorageType();
        InputImage inputImageFromBitmap = null;
        if (storageType == 1) {
            Bitmap bitmapExtract = BitmapExtractor.extract(mlImage);
            zzb(-1, 1, SystemClock.elapsedRealtime(), mlImage.getHeight(), mlImage.getWidth(), bitmapExtract.getAllocationByteCount(), mlImage.getRotation());
            inputImageFromBitmap = InputImage.fromBitmap(bitmapExtract, mlImage.getRotation());
        } else if (storageType == 2) {
            ByteBuffer byteBufferExtract = ByteBufferExtractor.extract(mlImage);
            int imageFormat = imageProperties.getImageFormat();
            if (imageFormat != 4) {
                numValueOf = imageFormat != 5 ? null : Integer.valueOf(InputImage.IMAGE_FORMAT_YV12);
            } else {
                numValueOf = 17;
            }
            if (numValueOf != null) {
                zzb(numValueOf.intValue(), 3, SystemClock.elapsedRealtime(), mlImage.getHeight(), mlImage.getWidth(), byteBufferExtract.limit(), mlImage.getRotation());
                inputImageFromBitmap = InputImage.fromByteBuffer(byteBufferExtract, mlImage.getWidth(), mlImage.getHeight(), mlImage.getRotation(), numValueOf.intValue());
            }
        } else if (storageType == 3) {
            Image imageExtract = MediaImageExtractor.extract(mlImage);
            zzb(imageExtract.getFormat(), 5, SystemClock.elapsedRealtime(), mlImage.getHeight(), mlImage.getWidth(), imageExtract.getFormat() == 256 ? imageExtract.getPlanes()[0].getBuffer().limit() : (imageExtract.getPlanes()[0].getBuffer().limit() * 3) / 2, mlImage.getRotation());
            inputImageFromBitmap = InputImage.fromMediaImage(imageExtract, mlImage.getRotation());
        }
        if (inputImageFromBitmap != null) {
            zzkg.zza();
        }
        return inputImageFromBitmap;
    }

    private static void zzb(int i, int i2, long j, int i3, int i4, int i5, int i6) {
        zzke.zzb(zzkc.zzb("vision-common"), i, i2, j, i3, i4, i5, i6);
    }
}
