package com.bumptech.glide.integration.webp.decoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.bumptech.glide.integration.webp.WebpBitmapFactory;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes5.dex */
public final class WebpDownsampler {
    private static final int DENSITY_PRECISION_MULTIPLIER = 1000000000;
    public static final Option<Boolean> DISABLE_DECODER = null;
    private static final Downsampler.DecodeCallbacks EMPTY_CALLBACKS = null;
    private static final int MARK_POSITION = 10485760;
    private static final Queue<BitmapFactory.Options> OPTIONS_QUEUE = null;
    private static final String TAG = "WebpDownsampler";
    private final BitmapPool bitmapPool;
    private final ArrayPool byteArrayPool;
    private final DisplayMetrics displayMetrics;
    private final List<ImageHeaderParser> parsers;

    static {
        DISABLE_DECODER = Option.memory("com.bumptech.glide.integration.webp.decoder.WebpDownsampler.DisableDecoder", Boolean.FALSE);
        EMPTY_CALLBACKS = new AnonymousClass1();
        OPTIONS_QUEUE = Util.createQueue(0);
    }

    public WebpDownsampler(List<ImageHeaderParser> r1, DisplayMetrics r2, BitmapPool r3, ArrayPool r4) {
        this.parsers = r1;
        this.displayMetrics = (DisplayMetrics) Preconditions.checkNotNull(r2);
        this.bitmapPool = (BitmapPool) Preconditions.checkNotNull(r3);
        this.byteArrayPool = (ArrayPool) Preconditions.checkNotNull(r4);
    }

    private static int adjustTargetDensityForError(double r3) {
        int r0 = round(1.0E9d * r3);
        return round((r3 / ((double) (r0 / 1.0E9f))) * ((double) r0));
    }

    private void calculateConfig(InputStream r1, DecodeFormat r2, boolean r3, boolean r4, BitmapFactory.Options r5, int r6, int r7) throws IOException {
        if (r2 != DecodeFormat.PREFER_ARGB_8888) goto L5;
    L25:
        r5.inPreferredConfig = Bitmap.Config.ARGB_8888;
        return;
    L5:
        if (Build.VERSION.SDK_INT == 16) goto L25;
        boolean r8 = false;
        r8 = ImageHeaderParserUtils.getType(this.parsers, r1, this.byteArrayPool).hasAlpha();     // Catch: IOException -> L10
    L14:
        if (r8 == false) goto L16;
        Bitmap.Config r9 = Bitmap.Config.ARGB_8888;
    L17:
        r5.inPreferredConfig = r9;
        if (r9 != Bitmap.Config.RGB_565) goto L20;
    L23:
        r5.inDither = true;
        return;
    L20:
        if (r9 == Bitmap.Config.ARGB_4444) goto L23;
        if (r9 == Bitmap.Config.ALPHA_8) goto L23;
        return;
    L16:
        r9 = Bitmap.Config.RGB_565;
    L10:
        e = move-exception;
        if (Log.isLoggable(TAG, 3) == false) goto L14;
        Log.d(TAG, "Cannot determine whether the image has alpha or not from header, format " + r2, e);
        goto L14
    }

    static void calculateScaling(ImageHeaderParser.ImageType r17, InputStream r18, Downsampler.DecodeCallbacks r19, BitmapPool r20, DownsampleStrategy r21, int r22, int r23, int r24, int r25, int r26, BitmapFactory.Options r27) throws IOException {
        int r8 = Build.VERSION.SDK_INT;
        if (r23 <= 0) goto L69;
        if (r24 > 0) goto L7;
        return;
    L7:
        if (r22 != 90) goto L9;
    L12:
        float r2 = r21.getScaleFactor(r24, r23, r25, r26);
    L14:
        if (r2 <= BitmapDescriptorFactory.HUE_RED) goto L68;
        DownsampleStrategy.SampleSizeRounding r9 = r21.getSampleSizeRounding(r23, r24, r25, r26);
        if (r9 == null) goto L66;
        float r12 = r23;
        float r14 = r24;
        int r11 = r23 / round(r2 * r12);
        int r10 = r24 / round(r2 * r14);
        DownsampleStrategy.SampleSizeRounding r13 = DownsampleStrategy.SampleSizeRounding.MEMORY;
        if (r9 != r13) goto L20;
        int r15 = Math.max(r11, r10);
    L21:
        int r16 = Math.max(1, Integer.highestOneBit(r15));
        if (r9 == r13) goto L24;
    L26:
        r27.inSampleSize = r16;
        if (r17 != ImageHeaderParser.ImageType.JPEG) goto L32;
        float r0 = Math.min(r16, 8);
        int r110 = (int) Math.ceil(r12 / r0);
        int r1 = (int) Math.ceil(r14 / r0);
        int r111 = r16 / 8;
        if (r111 <= 0) goto L54;
        r110 = r110 / r111;
        r1 = r1 / r111;
    L54:
        double r112 = r21.getScaleFactor(r110, r1, r25, r26);
        if (r8 < 19) goto L58;
        r27.inTargetDensity = adjustTargetDensityForError(r112);
        r27.inDensity = DENSITY_PRECISION_MULTIPLIER;
    L58:
        if (isScaling(r27) == false) goto L60;
        r27.inScaled = true;
    L62:
        if (Log.isLoggable(TAG, 2) == false) goto L70;
        Log.v(TAG, "Calculate scaling, source: [" + r23 + "x" + r24 + "], target: [" + r25 + "x" + r26 + "], power of two scaled: [" + r110 + "x" + r1 + "], exact scale factor: " + r2 + ", power of 2 sample size: " + r16 + ", adjusted scale factor: " + r112 + ", target density: " + r27.inTargetDensity + ", density: " + r27.inDensity);
        return;
    L70:
        return;
    L60:
        r27.inTargetDensity = 0;
        r27.inDensity = 0;
        goto L62
    L32:
        if (r17 != ImageHeaderParser.ImageType.PNG) goto L34;
    L52:
        float r3 = r16;
        r110 = (int) Math.floor(r12 / r3);
        double r113 = Math.floor(r14 / r3);
    L53:
        r1 = (int) r113;
        goto L54
    L34:
        if (r17 == ImageHeaderParser.ImageType.PNG_A) goto L52;
        if (r17 == ImageHeaderParser.ImageType.WEBP) goto L49;
        if (r17 == ImageHeaderParser.ImageType.WEBP_A) goto L49;
        if ((r23 % r16) == 0) goto L44;
    L47:
        int[] r4 = getDimensions(r18, r27, r19, r20);
        r110 = r4[0];
        r1 = r4[1];
        goto L54
    L44:
        if ((r24 % r16) != 0) goto L47;
        r110 = r23 / r16;
        r1 = r24 / r16;
    L49:
        if (r8 < 24) goto L51;
        float r5 = r16;
        r110 = Math.round(r12 / r5);
        r1 = Math.round(r14 / r5);
        goto L54
    L51:
        float r6 = r16;
        r110 = (int) Math.floor(r12 / r6);
        r113 = Math.floor(r14 / r6);
        goto L53
    L24:
        if (r16 >= (1.0f / r2)) goto L26;
        r16 = r16 << 1;
        goto L26
    L20:
        r15 = Math.min(r11, r10);
        goto L21
    L66:
        throw new IllegalArgumentException("Cannot round with null rounding");
    L68:
        throw new IllegalArgumentException("Cannot scale with factor: " + r2 + " from: " + r21 + ", source: [" + r23 + "x" + r24 + "], target: [" + r25 + "x" + r26 + "]");
    L9:
        if (r22 == 270) goto L12;
        r2 = r21.getScaleFactor(r23, r24, r25, r26);
        goto L14
    }

    private Bitmap decodeFromWrappedStreams(InputStream r28, BitmapFactory.Options r29, DownsampleStrategy r30, DecodeFormat r31, boolean r32, int r33, int r34, boolean r35, Downsampler.DecodeCallbacks r36) throws IOException {
        long r20 = LogTime.getLogTime();
        int[] r0 = getDimensions(r28, r29, r36, this.bitmapPool);
        boolean r22 = false;
        int r4 = r0[0];
        int r2 = r0[1];
        String r1 = r29.outMimeType;
        if (r4 == (-1)) goto L7;
        if (r2 == (-1)) goto L7;
        boolean r23 = r32;
    L8:
        int r3 = ImageHeaderParserUtils.getOrientation(this.parsers, r28, this.byteArrayPool);
        int r14 = TransformationUtils.getExifOrientationDegrees(r3);
        boolean r24 = TransformationUtils.isExifOrientationRequired(r3);
        if (r33 != Integer.MIN_VALUE) goto L11;
        int r25 = r4;
    L12:
        if (r34 != Integer.MIN_VALUE) goto L14;
        int r26 = r2;
    L15:
        ImageHeaderParser.ImageType r12 = ImageHeaderParserUtils.getType(this.parsers, r28, this.byteArrayPool);
        calculateScaling(r12, r28, r36, this.bitmapPool, r30, r14, r4, r2, r25, r26, r29);
        calculateConfig(r28, r31, r23, r24, r29, r25, r26);
        if (Build.VERSION.SDK_INT < 19) goto L19;
        r22 = true;
    L19:
        if (r29.inSampleSize == 1) goto L23;
        if (r22 == true) goto L23;
        WebpDownsampler r5 = this;
    L38:
        Bitmap r6 = decodeStream(r28, r29, r36, r5.bitmapPool);
        r36.onDecodeComplete(r5.bitmapPool, r6);
        if (Log.isLoggable(TAG, 2) == false) goto L42;
        logDecode(r4, r2, r1, r29, r6, r33, r34, r20);
    L42:
        Bitmap r7 = null;
        if (r6 == null) goto L47;
        r6.setDensity(r5.displayMetrics.densityDpi);
        r7 = TransformationUtils.rotateImageExif(r5.bitmapPool, r6, r3);
        if (r6.equals(r7) == true) goto L47;
        r5.bitmapPool.put(r6);
    L47:
        return r7;
    L23:
        r5 = this;
        if (r5.shouldUsePool(r12) == false) goto L38;
        if (r35 == false) goto L29;
        if (r22 == false) goto L29;
        int r8 = r25;
        int r9 = r26;
    L35:
        if (r8 <= 0) goto L38;
        if (r9 <= 0) goto L38;
        setInBitmap(r29, r5.bitmapPool, r8, r9);
    L29:
        if (isScaling(r29) == false) goto L31;
        float r10 = r29.inTargetDensity / r29.inDensity;
    L32:
        int r11 = r29.inSampleSize;
        float r13 = r11;
        int r15 = (int) Math.ceil(r4 / r13);
        int r16 = (int) Math.ceil(r2 / r13);
        r8 = Math.round(r15 * r10);
        r9 = Math.round(r16 * r10);
        if (Log.isLoggable(TAG, 2) == false) goto L35;
        Log.v(TAG, "Calculated target [" + r8 + "x" + r9 + "] for source [" + r4 + "x" + r2 + "], sampleSize: " + r11 + ", targetDensity: " + r29.inTargetDensity + ", density: " + r29.inDensity + ", density multiplier: " + r10);
        goto L35
    L31:
        r10 = 1.0f;
        goto L32
    L14:
        r26 = r34;
        goto L15
    L11:
        r25 = r33;
    L7:
        r23 = false;
        goto L8
    }

    private static Bitmap decodeStream(InputStream r6, BitmapFactory.Options r7, Downsampler.DecodeCallbacks r8, BitmapPool r9) throws IOException {
        if (r7.inJustDecodeBounds == false) goto L5;
        r6.mark(MARK_POSITION);
    L6:
        int r1 = r7.outWidth;
        int r2 = r7.outHeight;
        String r3 = r7.outMimeType;
        TransformationUtils.getBitmapDrawableLock().lock();
        Bitmap r10 = WebpBitmapFactory.decodeStream(r6, null, r7);     // Catch: Throwable -> L12 IllegalArgumentException -> L14
        TransformationUtils.getBitmapDrawableLock().unlock();
        if (r7.inJustDecodeBounds == false) goto L11;
        r6.reset();
    L11:
        return r10;
    L14:
        e = move-exception;
        IOException r4 = newIoExceptionForInBitmapAssertion(e, r1, r2, r3, r7);     // Catch: Throwable -> L12
        if (Log.isLoggable(TAG, 3) == false) goto L19;
        Log.d(TAG, "Failed to decode with inBitmap, trying again without Bitmap re-use", r4);     // Catch: Throwable -> L12
    L19:
        if (r7.inBitmap != null) goto L29;
        throw r4;     // Catch: Throwable -> L12
    L29:
        r6.reset();     // Catch: Throwable -> L12 IOException -> L23
        r9.put(r7.inBitmap);     // Catch: Throwable -> L12 IOException -> L23
        r7.inBitmap = null;     // Catch: Throwable -> L12 IOException -> L23
        Bitmap r11 = decodeStream(r6, r7, r8, r9);     // Catch: Throwable -> L12 IOException -> L23
        TransformationUtils.getBitmapDrawableLock().unlock();
        return r11;
    L31:
        throw r4;     // Catch: Throwable -> L12
    L23:
        throw r4;     // Catch: Throwable -> L12
    L12:
        th = move-exception;
        TransformationUtils.getBitmapDrawableLock().unlock();
        throw th;
    L5:
        r8.onObtainBounds();
        goto L6
    }

    @TargetApi(19)
    private static String getBitmapString(Bitmap r3) {
        if (r3 != null) goto L6;
        return null;
    L6:
        if (Build.VERSION.SDK_INT < 19) goto L8;
        String r0 = " (" + r3.getAllocationByteCount() + ")";
    L10:
        return "[" + r3.getWidth() + "x" + r3.getHeight() + "] " + r3.getConfig() + r0;
    L8:
        r0 = "";
        goto L10
    }

    private static synchronized BitmapFactory.Options getDefaultOptions() {
        monitor-enter(WebpDownsampler.class);
        Queue<BitmapFactory.Options> r1 = OPTIONS_QUEUE;     // Catch: Throwable -> L15
        monitor-enter(r1);     // Catch: Throwable -> L15
        BitmapFactory.Options r2 = r1.poll();     // Catch: Throwable -> L12
        monitor-exit(r1);     // Catch: Throwable -> L12
        if (r2 != null) goto L10;
        r2 = new BitmapFactory.Options();     // Catch: Throwable -> L15
        resetOptions(r2);     // Catch: Throwable -> L15
    L10:
        monitor-exit(WebpDownsampler.class);
        return r2;
    L12:
        th = move-exception;
        throw th;     // Catch: Throwable -> L15
    L15:
        th = move-exception;
        throw th;
    }

    private static int[] getDimensions(InputStream r1, BitmapFactory.Options r2, Downsampler.DecodeCallbacks r3, BitmapPool r4) throws IOException {
        r2.inJustDecodeBounds = true;
        decodeStream(r1, r2, r3, r4);
        r2.inJustDecodeBounds = false;
        return new int[]{r2.outWidth, r2.outHeight};
    }

    private static String getInBitmapString(BitmapFactory.Options r0) {
        return getBitmapString(r0.inBitmap);
    }

    private static boolean isScaling(BitmapFactory.Options r1) {
        int r0 = r1.inTargetDensity;
        if (r0 <= 0) goto L8;
        int r2 = r1.inDensity;
        if (r2 <= 0) goto L8;
        if (r0 == r2) goto L8;
        return true;
    L8:
        return false;
    }

    private static void logDecode(int r2, int r3, String r4, BitmapFactory.Options r5, Bitmap r6, int r7, int r8, long r9) {
        Log.v(TAG, "Decoded " + getBitmapString(r6) + " from [" + r2 + "x" + r3 + "] " + r4 + " with inBitmap " + getInBitmapString(r5) + " for [" + r7 + "x" + r8 + "], sample size: " + r5.inSampleSize + ", density: " + r5.inDensity + ", target density: " + r5.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + LogTime.getElapsedMillis(r9));
    }

    private static IOException newIoExceptionForInBitmapAssertion(IllegalArgumentException r3, int r4, int r5, String r6, BitmapFactory.Options r7) {
        return new IOException("Exception decoding bitmap, outWidth: " + r4 + ", outHeight: " + r5 + ", outMimeType: " + r6 + ", inBitmap: " + getInBitmapString(r7), r3);
    }

    private static void releaseOptions(BitmapFactory.Options r1) {
        resetOptions(r1);
        Queue<BitmapFactory.Options> r0 = OPTIONS_QUEUE;
        monitor-enter(r0);
        r0.offer(r1);     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    private static void resetOptions(BitmapFactory.Options r3) {
        r3.inTempStorage = null;
        r3.inDither = false;
        r3.inScaled = false;
        r3.inSampleSize = 1;
        r3.inPreferredConfig = null;
        r3.inJustDecodeBounds = false;
        r3.inDensity = 0;
        r3.inTargetDensity = 0;
        r3.outWidth = 0;
        r3.outHeight = 0;
        r3.outMimeType = null;
        r3.inBitmap = null;
        r3.inMutable = true;
    }

    private static int round(double r2) {
        return (int) (r2 + 0.5d);
    }

    @TargetApi(26)
    private static void setInBitmap(BitmapFactory.Options r2, BitmapPool r3, int r4, int r5) {
        if (Build.VERSION.SDK_INT >= 26) goto L5;
    L7:
        r2.inBitmap = r3.getDirty(r4, r5, r2.inPreferredConfig);
        return;
    L5:
        if (r2.inPreferredConfig != Bitmap.Config.HARDWARE) goto L7;
    }

    private boolean shouldUsePool(ImageHeaderParser.ImageType r2) throws IOException {
        if (Build.VERSION.SDK_INT < 19) goto L6;
        return true;
    L6:
        return false;
    }

    public Resource<Bitmap> decode(InputStream r7, int r8, int r9, Options r10) throws IOException {
        return decode(r7, r8, r9, r10, EMPTY_CALLBACKS);
    }

    public boolean handles(InputStream r2, Options r3) throws IOException {
        if (((Boolean) r3.get(DISABLE_DECODER)).booleanValue() == false) goto L5;
        return false;
    L5:
        if (WebpHeaderParser.sIsExtendedWebpSupported == true) goto L16;
        WebpHeaderParser.WebpImageType r4 = WebpHeaderParser.getType(r2, this.byteArrayPool);
        if (WebpHeaderParser.isStaticWebpType(r4) == true) goto L10;
        return false;
    L10:
        if (r4 == WebpHeaderParser.WebpImageType.WEBP_SIMPLE) goto L15;
        return true;
    L15:
        return false;
    L16:
        return false;
    }

    public Resource<Bitmap> decode(InputStream r16, int r17, int r18, Options r19, Downsampler.DecodeCallbacks r20) throws IOException {
        Preconditions.checkArgument(r16.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] r13 = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        BitmapFactory.Options r14 = getDefaultOptions();
        r14.inTempStorage = r13;
        DecodeFormat r5 = (DecodeFormat) r19.get(Downsampler.DECODE_FORMAT);
        DownsampleStrategy r4 = (DownsampleStrategy) r19.get(Downsampler.DOWNSAMPLE_STRATEGY);
        boolean r9 = ((Boolean) r19.get(Downsampler.FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
        Option<Boolean> r1 = Downsampler.ALLOW_HARDWARE_CONFIG;
        if (r19.get(r1) != null) goto L5;
    L7:
        boolean r6 = false;
    L15:
        BitmapResource r0 = BitmapResource.obtain(decodeFromWrappedStreams(r16, r14, r4, r5, r6, r17, r18, r9, r20), this.bitmapPool);     // Catch: Throwable -> L12
        releaseOptions(r14);
        this.byteArrayPool.put(r13, byte[].class);
        return r0;
    L12:
        th = move-exception;
        releaseOptions(r14);
        this.byteArrayPool.put(r13, byte[].class);
        throw th;
    L5:
        if (((Boolean) r19.get(r1)).booleanValue() == false) goto L7;
        r6 = true;
        goto L15
    }

    public boolean handles(ByteBuffer r2, Options r3) throws IOException {
        if (((Boolean) r3.get(DISABLE_DECODER)).booleanValue() == false) goto L5;
        return false;
    L5:
        if (WebpHeaderParser.sIsExtendedWebpSupported == true) goto L16;
        WebpHeaderParser.WebpImageType r4 = WebpHeaderParser.getType(r2);
        if (WebpHeaderParser.isStaticWebpType(r4) == true) goto L10;
        return false;
    L10:
        if (r4 == WebpHeaderParser.WebpImageType.WEBP_SIMPLE) goto L15;
        return true;
    L15:
        return false;
    L16:
        return false;
    }
}
