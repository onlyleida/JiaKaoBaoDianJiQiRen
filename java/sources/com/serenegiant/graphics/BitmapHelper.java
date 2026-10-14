package com.serenegiant.graphics;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.utils.BitsHelper;
import com.serenegiant.utils.UriHelper;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class BitmapHelper {
    public static final int OPTIONS_RECYCLE_INPUT = 2;
    private static final int OPTIONS_SCALE_UP = 1;

    public static byte[] BitmapToByteArray(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream)) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    public static Bitmap asBitmap(byte[] bArr) {
        if (bArr != null) {
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        }
        return null;
    }

    public static Bitmap asBitmapStrictSize(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        int iCalcSampleSize = calcSampleSize(options, i, i2);
        int iMSB = 1 << BitsHelper.MSB(iCalcSampleSize);
        options.inSampleSize = iMSB;
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        if (iMSB == iCalcSampleSize && bitmapDecodeByteArray.getWidth() == i && bitmapDecodeByteArray.getHeight() == i2) {
            return bitmapDecodeByteArray;
        }
        Bitmap bitmapScaleBitmap = scaleBitmap(bitmapDecodeByteArray, i, i2);
        bitmapDecodeByteArray.recycle();
        return bitmapScaleBitmap;
    }

    public static int calcSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (i4 > i2 || i3 > i) {
            return (int) (i3 > i4 ? Math.floor(i4 / i2) : Math.floor(i3 / i));
        }
        return 1;
    }

    public static Bitmap copyBitmap(Bitmap bitmap, Bitmap bitmap2) {
        Objects.requireNonNull(bitmap, "src bitmap should not be null.");
        if (bitmap2 == null) {
            return Bitmap.createBitmap(bitmap);
        }
        if (bitmap.equals(bitmap2)) {
            return bitmap2;
        }
        new Canvas(bitmap2).setBitmap(bitmap);
        return bitmap2;
    }

    public static Bitmap extractBitmap(Bitmap bitmap, int i, int i2) {
        float f2;
        int height;
        if (bitmap == null) {
            return null;
        }
        if (bitmap.getWidth() < bitmap.getHeight()) {
            f2 = i;
            height = bitmap.getWidth();
        } else {
            f2 = i2;
            height = bitmap.getHeight();
        }
        float f3 = f2 / height;
        Matrix matrix = new Matrix();
        matrix.setScale(f3, f3);
        return transform(matrix, bitmap, i, i2, 3);
    }

    public static int getOrientation(ContentResolver contentResolver, Uri uri) {
        try {
            int attributeInt = new ExifInterface(UriHelper.getAbsolutePath(contentResolver, uri)).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 0);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt != 6) {
                return attributeInt != 8 ? 0 : 270;
            }
            return 90;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static Bitmap makeCheckBitmap() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(40, 40, Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(-1);
        Paint paint = new Paint();
        paint.setColor(-3355444);
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 20.0f, 20.0f, paint);
        canvas.drawRect(20.0f, 20.0f, 40.0f, 40.0f, paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap rotateBitmap(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    public static Bitmap scaleBitmap(Bitmap bitmap, int i, int i2) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(width / i, height / i2);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    public static Bitmap scaleRotateBitmap(Bitmap bitmap, int i, int i2, int i3) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(width / i, height / i2);
        matrix.postRotate(i3);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c6  */
    private static Bitmap transform(Matrix matrix, Bitmap bitmap, int i, int i2, int i3) {
        Matrix matrix2;
        Bitmap bitmapCreateBitmap;
        Bitmap bitmapCreateBitmap2;
        Matrix matrix3 = matrix;
        boolean z = (i3 & 1) != 0;
        boolean z2 = (i3 & 2) != 0;
        int width = bitmap.getWidth() - i;
        int height = bitmap.getHeight() - i2;
        if (!z && (width < 0 || height < 0)) {
            Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap3);
            int iMax = Math.max(0, width / 2);
            int iMax2 = Math.max(0, height / 2);
            Rect rect = new Rect(iMax, iMax2, Math.min(i, bitmap.getWidth()) + iMax, Math.min(i2, bitmap.getHeight()) + iMax2);
            int iWidth = (i - rect.width()) / 2;
            int iHeight = (i2 - rect.height()) / 2;
            canvas.drawBitmap(bitmap, rect, new Rect(iWidth, iHeight, i - iWidth, i2 - iHeight), (Paint) null);
            if (z2) {
                bitmap.recycle();
            }
            canvas.setBitmap(null);
            return bitmapCreateBitmap3;
        }
        float width2 = bitmap.getWidth();
        float height2 = bitmap.getHeight();
        float f2 = i;
        float f3 = i2;
        if (width2 / height2 <= f2 / f3) {
            float f4 = f2 / width2;
            if (f4 < 0.9f || f4 > 1.0f) {
                matrix.setScale(f4, f4);
            } else {
                matrix2 = null;
            }
            if (matrix2 != null) {
                bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
            } else {
                bitmapCreateBitmap = bitmap;
            }
            if (z2 && bitmapCreateBitmap != bitmap) {
                bitmap.recycle();
            }
            bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, Math.max(0, bitmapCreateBitmap.getWidth() - i) / 2, Math.max(0, bitmapCreateBitmap.getHeight() - i2) / 2, i, i2);
            if (bitmapCreateBitmap2 != bitmapCreateBitmap && (z2 || bitmapCreateBitmap != bitmap)) {
                bitmapCreateBitmap.recycle();
            }
            return bitmapCreateBitmap2;
        }
        float f5 = f3 / height2;
        if (f5 < 0.9f || f5 > 1.0f) {
            matrix.setScale(f5, f5);
        } else {
            matrix3 = null;
        }
        matrix2 = matrix3;
        if (matrix2 != null) {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
        } else {
            bitmapCreateBitmap = bitmap;
        }
        if (z2) {
            bitmap.recycle();
        }
        bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, Math.max(0, bitmapCreateBitmap.getWidth() - i) / 2, Math.max(0, bitmapCreateBitmap.getHeight() - i2) / 2, i, i2);
        if (bitmapCreateBitmap2 != bitmapCreateBitmap) {
            bitmapCreateBitmap.recycle();
        }
        return bitmapCreateBitmap2;
    }

    public static Bitmap asBitmap(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        options.inJustDecodeBounds = false;
        options.inSampleSize = calcSampleSize(options, i, i2);
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }

    public static Bitmap asBitmap(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return BitmapFactory.decodeFile(str);
    }

    public static Bitmap asBitmap(String str, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        options.inSampleSize = calcSampleSize(options, i, i2);
        return BitmapFactory.decodeFile(str, options);
    }

    public static Bitmap asBitmapStrictSize(String str, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int iCalcSampleSize = calcSampleSize(options, i, i2);
        int iMSB = 1 << BitsHelper.MSB(iCalcSampleSize);
        options.inSampleSize = iMSB;
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        if (iMSB == iCalcSampleSize && bitmapDecodeFile.getWidth() == i && bitmapDecodeFile.getHeight() == i2) {
            return bitmapDecodeFile;
        }
        Bitmap bitmapScaleBitmap = scaleBitmap(bitmapDecodeFile, i, i2);
        bitmapDecodeFile.recycle();
        return bitmapScaleBitmap;
    }

    public static Bitmap asBitmap(FileDescriptor fileDescriptor) {
        if (fileDescriptor == null || !fileDescriptor.valid()) {
            return null;
        }
        return BitmapFactory.decodeFileDescriptor(fileDescriptor);
    }

    public static Bitmap asBitmap(FileDescriptor fileDescriptor, int i, int i2) {
        if (fileDescriptor == null || !fileDescriptor.valid()) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        options.inJustDecodeBounds = false;
        options.inSampleSize = calcSampleSize(options, i, i2);
        return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
    }

    public static Bitmap asBitmap(ContentResolver contentResolver, Uri uri) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        if (uri == null || (parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(uri, "r")) == null) {
            return null;
        }
        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
        int orientation = getOrientation(contentResolver, uri);
        if (orientation == 0) {
            return bitmapDecodeFileDescriptor;
        }
        Bitmap bitmapRotateBitmap = rotateBitmap(bitmapDecodeFileDescriptor, orientation);
        bitmapDecodeFileDescriptor.recycle();
        return bitmapRotateBitmap;
    }

    public static Bitmap asBitmapStrictSize(FileDescriptor fileDescriptor, int i, int i2) {
        if (fileDescriptor == null || !fileDescriptor.valid()) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        int iCalcSampleSize = calcSampleSize(options, i, i2);
        int iMSB = 1 << BitsHelper.MSB(iCalcSampleSize);
        options.inSampleSize = iMSB;
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        if (iMSB == iCalcSampleSize && bitmapDecodeFileDescriptor.getWidth() == i && bitmapDecodeFileDescriptor.getHeight() == i2) {
            return bitmapDecodeFileDescriptor;
        }
        Bitmap bitmapScaleBitmap = scaleBitmap(bitmapDecodeFileDescriptor, i, i2);
        bitmapDecodeFileDescriptor.recycle();
        return bitmapScaleBitmap;
    }

    public static Bitmap asBitmap(ContentResolver contentResolver, Uri uri, int i, int i2) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        if (uri == null || (parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(uri, "r")) == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor(), null, options);
        options.inJustDecodeBounds = false;
        options.inSampleSize = calcSampleSize(options, i, i2);
        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor(), null, options);
        int orientation = getOrientation(contentResolver, uri);
        if (orientation == 0) {
            return bitmapDecodeFileDescriptor;
        }
        Bitmap bitmapRotateBitmap = rotateBitmap(bitmapDecodeFileDescriptor, orientation);
        bitmapDecodeFileDescriptor.recycle();
        return bitmapRotateBitmap;
    }

    public static Bitmap asBitmapStrictSize(ContentResolver contentResolver, Uri uri, int i, int i2) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        if (uri == null || (parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(uri, "r")) == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor(), null, options);
        int iCalcSampleSize = calcSampleSize(options, i, i2);
        int iMSB = 1 << BitsHelper.MSB(iCalcSampleSize);
        options.inSampleSize = iMSB;
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor(), null, options);
        int orientation = getOrientation(contentResolver, uri);
        if (iMSB == iCalcSampleSize && orientation == 0 && bitmapDecodeFileDescriptor.getWidth() == i && bitmapDecodeFileDescriptor.getHeight() == i2) {
            return bitmapDecodeFileDescriptor;
        }
        Bitmap bitmapScaleRotateBitmap = scaleRotateBitmap(bitmapDecodeFileDescriptor, i, i2, orientation);
        bitmapDecodeFileDescriptor.recycle();
        return bitmapScaleRotateBitmap;
    }

    public static Bitmap asBitmap(InputStream inputStream) {
        if (inputStream != null) {
            return BitmapFactory.decodeStream(inputStream);
        }
        return null;
    }

    @Deprecated
    public static Bitmap asBitmap(InputStream inputStream, int i, int i2) {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        Rect rect = new Rect();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, rect, options);
        options.inJustDecodeBounds = false;
        options.inSampleSize = calcSampleSize(options, i, i2);
        return BitmapFactory.decodeStream(inputStream, rect, options);
    }

    @Deprecated
    public static Bitmap asBitmapStrictSize(InputStream inputStream, int i, int i2) {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        Rect rect = new Rect();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, rect, options);
        int iCalcSampleSize = calcSampleSize(options, i, i2);
        int iMSB = 1 << BitsHelper.MSB(iCalcSampleSize);
        options.inSampleSize = iMSB;
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, rect, options);
        if (iMSB == iCalcSampleSize && bitmapDecodeStream.getWidth() == i && bitmapDecodeStream.getHeight() == i2) {
            return bitmapDecodeStream;
        }
        Bitmap bitmapScaleBitmap = scaleBitmap(bitmapDecodeStream, i, i2);
        bitmapDecodeStream.recycle();
        return bitmapScaleBitmap;
    }
}
