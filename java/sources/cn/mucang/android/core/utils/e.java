package cn.mucang.android.core.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f2648a = "e";

    public static byte[] a(Bitmap bitmap, int i) {
        return b(bitmap, i, CacheDataSink.DEFAULT_BUFFER_SIZE);
    }

    public static byte[] b(Bitmap bitmap, int i, int i2) throws Throwable {
        Bitmap bitmap2 = bitmap;
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(i);
            try {
                int i3 = 100;
                bitmap2.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream2);
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                String str = f2648a;
                t.d(str, "originSize:" + byteArray.length + ",max:" + i + ",maxDif:" + i2);
                if (byteArray.length < i) {
                    t.d(str, "small enough ,return origin.");
                    o.a(byteArrayOutputStream2);
                    return byteArray;
                }
                o.a(byteArrayOutputStream2);
                int i4 = 10;
                while (true) {
                    int i5 = ((int) ((((i3 * 1.0f) - i4) / 2.0f) + 0.5f)) + i4;
                    try {
                        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream(i);
                        try {
                            bitmap2.compress(Bitmap.CompressFormat.JPEG, i5, byteArrayOutputStream3);
                            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
                            int length = byteArray2.length - i;
                            String str2 = f2648a;
                            t.d(str2, "compressed size:" + byteArray2.length + ",center:" + i5);
                            if (Math.abs(length) <= i2) {
                                t.d(str2, "compressed OK:" + byteArray2.length + ",center:" + i5 + ",gap:" + length);
                                o.a(byteArrayOutputStream3);
                                return byteArray2;
                            }
                            if (length > 0) {
                                if (i5 <= 11 || i5 == i3) {
                                    t.d(str2, "已经使用最大的压缩级别，无法压缩到指定范围内，使用最低压缩级别返回,gap:" + length + ",maxDif " + i2 + "," + i4 + "-" + i3);
                                    o.a(byteArrayOutputStream3);
                                    return byteArray2;
                                }
                                t.d(str2, "结果太大，降低品质,gap:" + length + ",float " + i2 + ",try " + i4 + "-" + i5);
                                i3 = i5;
                            } else {
                                if (i4 >= 99 || i4 == i5) {
                                    t.d(str2, "已经使用了最优的压缩级别，图片大小无法达到指定范围内，直接使用最优数据返回,gap:" + length + ",maxDif " + i2 + "," + i4 + "-" + i3);
                                    o.a(byteArrayOutputStream3);
                                    return byteArray2;
                                }
                                t.d(str2, "结果太小，提高品质,gap:" + length + ",float " + i2 + ",try " + i5 + "-" + i3);
                                i4 = i5;
                            }
                            o.a(byteArrayOutputStream3);
                            bitmap2 = bitmap;
                            byteArrayOutputStream2 = byteArrayOutputStream3;
                        } catch (Throwable th) {
                            th = th;
                            byteArrayOutputStream2 = byteArrayOutputStream3;
                            o.a(byteArrayOutputStream2);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = byteArrayOutputStream2;
                o.a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.content.ContentResolver] */
    public static Bitmap c(String str, BitmapFactory.Options options) throws Throwable {
        Throwable th;
        InputStream inputStreamOpenInputStream;
        ?? r0 = Uri.parse(str);
        if (r0.getScheme() == null || !r0.getScheme().equals(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT)) {
            return BitmapFactory.decodeFile(str, options);
        }
        Bitmap bitmapDecodeStream = null;
        try {
            try {
                inputStreamOpenInputStream = MucangConfig.getContext().getContentResolver().openInputStream(r0);
                try {
                    bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                    r0 = inputStreamOpenInputStream;
                } catch (FileNotFoundException e2) {
                    e = e2;
                    e.printStackTrace();
                    r0 = inputStreamOpenInputStream;
                }
            } catch (Throwable th2) {
                th = th2;
                o.a(r0);
                throw th;
            }
        } catch (FileNotFoundException e3) {
            e = e3;
            inputStreamOpenInputStream = null;
        } catch (Throwable th3) {
            r0 = 0;
            th = th3;
            o.a(r0);
            throw th;
        }
        o.a(r0);
        return bitmapDecodeStream;
    }

    public static int d(String str) {
        try {
            Uri uri = Uri.parse(str);
            int attributeInt = ((uri.getScheme() == null || !uri.getScheme().equals(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT)) ? new ExifInterface(str) : new ExifInterface(MucangConfig.getContext().getContentResolver().openInputStream(uri))).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt != 6) {
                return attributeInt != 8 ? 0 : 270;
            }
            return 90;
        } catch (IOException e2) {
            t.c("默认替换", e2);
            return 0;
        }
    }

    public static Bitmap e(String str, int i, int i2) throws Throwable {
        double dMax;
        double d2;
        double d3;
        System.gc();
        System.gc();
        System.gc();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        c(str, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        int iD = d(str);
        if (iD == 90 || iD == 270) {
            i4 = i3;
            i3 = i4;
        }
        Bitmap bitmap = null;
        Matrix matrix = null;
        try {
            options.inJustDecodeBounds = false;
            if (i3 <= i || i4 <= i2) {
                if (i3 > i) {
                    d2 = ((double) i3) * 1.0d;
                    d3 = i;
                } else if (i4 > i2) {
                    d2 = ((double) i4) * 1.0d;
                    d3 = i2;
                } else {
                    dMax = 1.0d;
                }
                dMax = d2 / d3;
            } else {
                dMax = Math.max((((double) i3) * 1.0d) / ((double) i), (((double) i4) * 1.0d) / ((double) i2));
            }
            if (dMax > 1.0d) {
                int i5 = 2;
                while (true) {
                    double d4 = i5;
                    if (Math.abs(d4 - dMax) < 0.1d || d4 > dMax) {
                        break;
                        break;
                    }
                    i5 <<= 1;
                }
                options.inSampleSize = i5 >> 1;
            }
            Bitmap bitmapC = c(str, options);
            if (iD != 0) {
                try {
                    bitmapC = f(bitmapC, iD);
                } catch (Throwable th) {
                    th = th;
                    bitmap = bitmapC;
                    t.c("默认替换", th);
                    System.gc();
                    System.gc();
                    System.gc();
                    return bitmap;
                }
            }
            int width = bitmapC.getWidth();
            int height = bitmapC.getHeight();
            if (width > i && height > i2) {
                matrix = new Matrix();
                float fMax = 1.0f / Math.max((width * 1.0f) / i, (height * 1.0f) / i2);
                matrix.postScale(fMax, fMax);
            } else if (width > i) {
                matrix = new Matrix();
                float f2 = 1.0f / ((width * 1.0f) / i);
                matrix.postScale(f2, f2);
            } else if (height > i2) {
                matrix = new Matrix();
                float f3 = 1.0f / ((height * 1.0f) / i2);
                matrix.postScale(f3, f3);
            }
            Matrix matrix2 = matrix;
            return matrix2 != null ? Bitmap.createBitmap(bitmapC, 0, 0, width, height, matrix2, true) : bitmapC;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Bitmap f(Bitmap bitmap, int i) {
        Bitmap bitmapCreateBitmap;
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (OutOfMemoryError e2) {
            t.d("ESA", "rotateBitmapByDegree decodeFile OutOfMemoryError." + e2.getMessage());
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = bitmap;
        }
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }
}
