package cn.mucang.sundial.android.tcp.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.log.SundialLog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class PictureUtil {
    private static final String TAG = "PictureUtil";

    public static ByteArrayOutputStream compressStream(Bitmap bitmap, int i) {
        int i2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i3 = 100;
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        }
        t.h(TAG, formatKeyValue("原始图片大小(K)", "" + (byteArrayOutputStream.toByteArray().length / 1024)));
        t.h(TAG, formatKeyValue("目标大小(K)", "" + i));
        SundialLog.com(formatKeyValue("原始图片大小(K)", "" + (byteArrayOutputStream.toByteArray().length / 1024)));
        SundialLog.com(formatKeyValue("目标大小(K)", "" + i));
        while (true) {
            try {
                i2 = i * 1024;
                if (byteArrayOutputStream.toByteArray().length <= i2) {
                    break;
                }
                int length = byteArrayOutputStream.toByteArray().length;
                i3 = (int) (i3 * 0.8f);
                if (i3 < 5 || bitmap == null || bitmap.isRecycled()) {
                    break;
                    break;
                    break;
                }
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, i3, byteArrayOutputStream2);
                if (length <= byteArrayOutputStream2.toByteArray().length) {
                    break;
                }
                byteArrayOutputStream = byteArrayOutputStream2;
            } catch (Exception e2) {
                t.h(TAG, e2.getMessage());
                return null;
            }
        }
        t.h(TAG, formatKeyValue("品质压缩，最终大小(K)", "" + (byteArrayOutputStream.toByteArray().length / 1024)));
        t.h(TAG, formatKeyValue("品质压缩，options", "" + i3));
        SundialLog.com(formatKeyValue("品质压缩，最终大小(K)", "" + (byteArrayOutputStream.toByteArray().length / 1024)));
        SundialLog.com(formatKeyValue("品质压缩，options", "" + i3));
        if (byteArrayOutputStream.toByteArray().length > i2) {
            float f2 = 1.0f;
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
                while (byteArrayOutputStream.toByteArray().length > i2) {
                    int length2 = byteArrayOutputStream.toByteArray().length;
                    f2 *= 0.8f;
                    bitmapDecodeStream = getZoomImageByMatrix(bitmapDecodeStream, (int) (bitmapDecodeStream.getWidth() * f2), (int) (bitmapDecodeStream.getHeight() * f2), true);
                    if (bitmapDecodeStream == null || bitmapDecodeStream.isRecycled()) {
                        break;
                    }
                    ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                    bitmapDecodeStream.compress(Bitmap.CompressFormat.JPEG, i3, byteArrayOutputStream3);
                    if (length2 <= byteArrayOutputStream3.toByteArray().length) {
                        break;
                    }
                    byteArrayOutputStream = byteArrayOutputStream3;
                }
                t.h(TAG, formatKeyValue("尺寸压缩，最终大小(K)", "" + (byteArrayOutputStream.toByteArray().length / 1024)));
                t.h(TAG, formatKeyValue("尺寸压缩，radio", "" + f2));
                SundialLog.com(formatKeyValue("尺寸压缩，最终大小(K)", "" + (byteArrayOutputStream.toByteArray().length / 1024)));
                SundialLog.com(formatKeyValue("尺寸压缩，radio", "" + f2));
            } catch (Exception e3) {
                t.h(TAG, e3.getMessage());
                return null;
            }
        }
        return byteArrayOutputStream;
    }

    public static String formatKeyValue(String str, String str2) {
        return "【" + str + ":" + str2 + "】";
    }

    public static String getPicDir(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = context.getFilesDir();
        }
        File file = new File(externalFilesDir, "pic");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static Bitmap getZoomImageByMatrix(Bitmap bitmap, int i, int i2, boolean z) {
        Matrix matrix = new Matrix();
        if (bitmap != null && i > 0 && i2 > 0) {
            try {
                float fMin = Math.min(i2 / bitmap.getHeight(), i / bitmap.getWidth());
                if (Math.abs(fMin) >= 1.0E-6d && fMin != 1.0f) {
                    matrix.postScale(fMin, fMin);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                    if (z && !bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                    return bitmapCreateBitmap;
                }
            } catch (Throwable unused) {
            }
        }
        return bitmap;
    }

    public static void savePic(Bitmap bitmap, String str) {
        try {
            t.h(TAG, "start savePic");
            SundialLog.com("start savePic");
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            t.h(TAG, "strFileName 1= " + file.getPath());
            SundialLog.com("strFileName 1= " + file.getPath());
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            t.h(TAG, "save pic OK!");
            SundialLog.com("save pic OK!");
        } catch (FileNotFoundException e2) {
            t.h(TAG, "FileNotFoundException");
            SundialLog.com("FileNotFoundException");
            e2.printStackTrace();
        } catch (IOException e3) {
            t.h(TAG, "IOException");
            SundialLog.com("IOException：" + e3.getLocalizedMessage());
            e3.printStackTrace();
        }
    }

    public static void savePic(ByteArrayOutputStream byteArrayOutputStream, String str) {
        try {
            t.h(TAG, "start savePic");
            SundialLog.com("start savePic");
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            t.h(TAG, "strFileName 1= " + file.getPath());
            SundialLog.com("strFileName 1= " + file.getPath());
            if (byteArrayOutputStream != null) {
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.flush();
                fileOutputStream.close();
                t.h(TAG, "save pic OK!");
                SundialLog.com("save pic OK!");
            }
        } catch (FileNotFoundException e2) {
            t.h(TAG, "FileNotFoundException");
            SundialLog.com("FileNotFoundException：" + e2.getLocalizedMessage());
            e2.printStackTrace();
        } catch (IOException e3) {
            t.h(TAG, "IOException");
            SundialLog.com("IOException：" + e3.getLocalizedMessage());
            e3.printStackTrace();
        }
    }
}
