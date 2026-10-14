package io.agora.rtc.utils;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.Image;
import android.util.Log;
import io.agora.rtc.gl.JavaI420Buffer;
import io.agora.rtc.gl.VideoFrame;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.Buffer;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(21)
public class YuvUtils {
    public static final int I420 = 35;
    public static final int NV21 = 17;
    private static final String TAG = "YuvUtils";

    static class Plane {
        private ByteBuffer buffer;
        private int pixelStride;
        private int rowStride;

        public Plane(ByteBuffer byteBuffer, int i, int i2) {
            this.buffer = byteBuffer;
            this.rowStride = i;
            this.pixelStride = i2;
        }

        public ByteBuffer getBuffer() {
            return this.buffer;
        }

        public int getPixelStride() {
            return this.pixelStride;
        }

        public int getRowStride() {
            return this.rowStride;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0081  */
    /* JADX WARN: Code duplicated, block: B:35:0x009a  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b5 A[LOOP:2: B:40:0x00b3->B:41:0x00b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cd A[SYNTHETIC] */
    public static byte[] getImageData(Image image, int i) {
        ByteBuffer buffer;
        int rowStride;
        int pixelStride;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i;
        int i9 = 17;
        int i10 = 35;
        if (i8 != 35 && i8 != 17) {
            throw new IllegalArgumentException("only support COLOR_FormatI420 and COLOR_FormatNV21");
        }
        if (!supportedImageFormat(image)) {
            throw new RuntimeException("can't convert Image to byte array, format " + image.getFormat());
        }
        Rect cropRect = image.getCropRect();
        int format = image.getFormat();
        int iWidth = cropRect.width();
        int iHeight = cropRect.height();
        Image.Plane[] planes = image.getPlanes();
        int i11 = iWidth * iHeight;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(format) * i11) / 8];
        byte[] bArr2 = new byte[planes[0].getRowStride()];
        int i12 = 1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1;
        while (i13 < planes.length) {
            if (i13 != 0) {
                if (i13 != i12) {
                    if (i13 == 2) {
                        if (i8 == i10) {
                            i14 = (int) (((double) i11) * 1.25d);
                        } else if (i8 == i9) {
                            i14 = i11;
                            i15 = 2;
                        }
                    }
                } else if (i8 == i10) {
                    i14 = i11;
                } else if (i8 == i9) {
                    i14 = i11 + 1;
                    i15 = 2;
                }
                buffer = planes[i13].getBuffer();
                rowStride = planes[i13].getRowStride();
                pixelStride = planes[i13].getPixelStride();
                if (i13 == 0) {
                    i2 = 0;
                } else {
                    i2 = 1;
                }
                i3 = iWidth >> i2;
                i4 = iHeight >> i2;
                buffer.position(((cropRect.top >> i2) * rowStride) + ((cropRect.left >> i2) * pixelStride));
                i5 = 0;
                while (i5 < i4) {
                    if (pixelStride == 1 || i15 != 1) {
                        i6 = ((i3 - 1) * pixelStride) + 1;
                        buffer.get(bArr2, 0, i6);
                        for (i7 = 0; i7 < i3; i7++) {
                            bArr[i14] = bArr2[i7 * pixelStride];
                            i14 += i15;
                        }
                    } else {
                        buffer.get(bArr, i14, i3);
                        i14 += i3;
                        i6 = i3;
                    }
                    if (i5 < i4 - 1) {
                        buffer.position((buffer.position() + rowStride) - i6);
                    }
                    i5++;
                    cropRect = cropRect;
                }
                i13++;
                i8 = i;
                i9 = 17;
                i10 = 35;
                i12 = 1;
            } else {
                i14 = 0;
            }
            i15 = 1;
            buffer = planes[i13].getBuffer();
            rowStride = planes[i13].getRowStride();
            pixelStride = planes[i13].getPixelStride();
            if (i13 == 0) {
                i2 = 0;
            } else {
                i2 = 1;
            }
            i3 = iWidth >> i2;
            i4 = iHeight >> i2;
            buffer.position(((cropRect.top >> i2) * rowStride) + ((cropRect.left >> i2) * pixelStride));
            i5 = 0;
            while (i5 < i4) {
                if (pixelStride == 1) {
                    i6 = ((i3 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i6);
                    while (i7 < i3) {
                        bArr[i14] = bArr2[i7 * pixelStride];
                        i14 += i15;
                    }
                } else {
                    i6 = ((i3 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i6);
                    while (i7 < i3) {
                        bArr[i14] = bArr2[i7 * pixelStride];
                        i14 += i15;
                    }
                }
                if (i5 < i4 - 1) {
                    buffer.position((buffer.position() + rowStride) - i6);
                }
                i5++;
                cropRect = cropRect;
            }
            i13++;
            i8 = i;
            i9 = 17;
            i10 = 35;
            i12 = 1;
        }
        return bArr;
    }

    public static boolean supportedImageFormat(Image image) {
        int format = image.getFormat();
        return format == 17 || format == 35 || format == 842094169;
    }

    public static void write420ImageToFile(Image image, String str) {
        if (image == null) {
            return;
        }
        try {
            YuvImage yuvImage = new YuvImage(yuv420toNV21(image), 17, image.getWidth(), image.getHeight(), null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect(0, 0, image.getWidth(), image.getHeight()), 100, byteArrayOutputStream);
            File file = new File(str);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public static boolean writeNV21ToFile(byte[] bArr, int i, int i2, String str) {
        YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
        Rect rect = new Rect(0, 0, i, i2);
        try {
            File file = new File(str);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            yuvImage.compressToJpeg(rect, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (IOException e2) {
            Log.e(TAG, e2.toString());
            return false;
        }
    }

    public static void writeRawData(byte[] bArr, String str) {
        if (bArr != null) {
            if (bArr.length == 0) {
                return;
            }
            try {
                File file = new File(str);
                file.createNewFile();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                bufferedOutputStream.write(bArr);
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
            } catch (IOException e2) {
                Log.e(TAG, e2.toString());
            }
        }
    }

    public static void writeRgbaToFile(Buffer buffer, int i, int i2, String str) {
        try {
            File file = new File(str);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.copyPixelsFromBuffer(buffer);
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 50, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e2) {
            Log.e(TAG, e2.toString());
        }
    }

    public static byte[] yuv420toNV21(Image image) {
        int i;
        Rect cropRect = image.getCropRect();
        int format = image.getFormat();
        int iWidth = cropRect.width();
        int iHeight = cropRect.height();
        Image.Plane[] planes = image.getPlanes();
        int i2 = iWidth * iHeight;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(format) * i2) / 8];
        byte[] bArr2 = new byte[planes[0].getRowStride()];
        int i3 = 1;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        while (i4 < planes.length) {
            if (i4 != 0) {
                if (i4 == i3) {
                    i5 = i2 + 1;
                } else if (i4 == 2) {
                    i5 = i2;
                }
                i6 = 2;
            } else {
                i5 = 0;
                i6 = 1;
            }
            ByteBuffer buffer = planes[i4].getBuffer();
            int rowStride = planes[i4].getRowStride();
            int pixelStride = planes[i4].getPixelStride();
            int i7 = i4 == 0 ? 0 : 1;
            int i8 = iWidth >> i7;
            int i9 = iHeight >> i7;
            int i10 = iWidth;
            int i11 = iHeight;
            buffer.position(((cropRect.top >> i7) * rowStride) + ((cropRect.left >> i7) * pixelStride));
            for (int i12 = 0; i12 < i9; i12++) {
                if (pixelStride == 1 && i6 == 1) {
                    buffer.get(bArr, i5, i8);
                    i5 += i8;
                    i = i8;
                } else {
                    i = ((i8 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i);
                    for (int i13 = 0; i13 < i8; i13++) {
                        bArr[i5] = bArr2[i13 * pixelStride];
                        i5 += i6;
                    }
                }
                if (i12 < i9 - 1) {
                    buffer.position((buffer.position() + rowStride) - i);
                }
            }
            i4++;
            iWidth = i10;
            iHeight = i11;
            i3 = 1;
        }
        return bArr;
    }

    public static byte[] yuv420toNV21(byte[] bArr, int i, int i2) {
        return yuv420toNV21(JavaI420Buffer.createYUV(bArr, i, i2), i, i2);
    }

    public static byte[] yuv420toNV21(VideoFrame.I420Buffer i420Buffer, int i, int i2) {
        int i3;
        int i4 = i;
        int i5 = i2;
        Rect rect = new Rect(0, 0, i4, i5);
        int i6 = 3;
        int i7 = 1;
        int i8 = 2;
        Plane[] planeArr = {new Plane(i420Buffer.getDataY(), i420Buffer.getStrideY(), 1), new Plane(i420Buffer.getDataU(), i420Buffer.getStrideU(), 1), new Plane(i420Buffer.getDataV(), i420Buffer.getStrideV(), 1)};
        int i9 = i4 * i5;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(35) * i9) / 8];
        byte[] bArr2 = new byte[planeArr[0].getRowStride()];
        int i10 = 0;
        int i11 = 0;
        int i12 = 1;
        while (i10 < i6) {
            if (i10 != 0) {
                if (i10 == i7) {
                    i11 = i9 + 1;
                } else if (i10 == i8) {
                    i11 = i9;
                }
                i12 = 2;
            } else {
                i11 = 0;
                i12 = 1;
            }
            ByteBuffer buffer = planeArr[i10].getBuffer();
            int rowStride = planeArr[i10].getRowStride();
            int pixelStride = planeArr[i10].getPixelStride();
            int i13 = i10 == 0 ? 0 : 1;
            int i14 = i4 >> i13;
            int i15 = i5 >> i13;
            buffer.position(((rect.top >> i13) * rowStride) + ((rect.left >> i13) * pixelStride));
            for (int i16 = 0; i16 < i15; i16++) {
                if (pixelStride == 1 && i12 == 1) {
                    buffer.get(bArr, i11, i14);
                    i11 += i14;
                    i3 = i14;
                } else {
                    i3 = ((i14 - 1) * pixelStride) + 1;
                    buffer.get(bArr2, 0, i3);
                    for (int i17 = 0; i17 < i14; i17++) {
                        bArr[i11] = bArr2[i17 * pixelStride];
                        i11 += i12;
                    }
                }
                if (i16 < i15 - 1) {
                    buffer.position((buffer.position() + rowStride) - i3);
                }
            }
            i10++;
            i4 = i;
            i5 = i2;
            i6 = 3;
            i8 = 2;
            i7 = 1;
        }
        return bArr;
    }
}
