package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class Downsampler {
    public static final Option<Boolean> ALLOW_HARDWARE_CONFIG = null;
    public static final Option<DecodeFormat> DECODE_FORMAT = null;

    @Deprecated
    public static final Option<DownsampleStrategy> DOWNSAMPLE_STRATEGY = null;
    private static final DecodeCallbacks EMPTY_CALLBACKS = null;
    public static final Option<Boolean> FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = null;
    private static final String ICO_MIME_TYPE = "image/x-ico";
    private static final Set<String> NO_DOWNSAMPLE_PRE_N_MIME_TYPES = null;
    private static final Queue<BitmapFactory.Options> OPTIONS_QUEUE = null;
    public static final Option<PreferredColorSpace> PREFERRED_COLOR_SPACE = null;
    static final String TAG = "Downsampler";
    private static final Set<ImageHeaderParser.ImageType> TYPES_THAT_USE_POOL_PRE_KITKAT = null;
    private static final String WBMP_MIME_TYPE = "image/vnd.wap.wbmp";
    private final BitmapPool bitmapPool;
    private final ArrayPool byteArrayPool;
    private final DisplayMetrics displayMetrics;
    private final HardwareConfigState hardwareConfigState;
    private final List<ImageHeaderParser> parsers;

    public interface DecodeCallbacks {
        void onDecodeComplete(BitmapPool r1, Bitmap r2) throws IOException;

        void onObtainBounds();
    }

    static {
        DECODE_FORMAT = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);
        PREFERRED_COLOR_SPACE = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", PreferredColorSpace.SRGB);
        DOWNSAMPLE_STRATEGY = DownsampleStrategy.OPTION;
        Boolean r0 = Boolean.FALSE;
        FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", r0);
        ALLOW_HARDWARE_CONFIG = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", r0);
        NO_DOWNSAMPLE_PRE_N_MIME_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{WBMP_MIME_TYPE, ICO_MIME_TYPE})));
        EMPTY_CALLBACKS = new AnonymousClass1();
        TYPES_THAT_USE_POOL_PRE_KITKAT = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        OPTIONS_QUEUE = Util.createQueue(0);
    }

    public Downsampler(List<ImageHeaderParser> r2, DisplayMetrics r3, BitmapPool r4, ArrayPool r5) {
        this.hardwareConfigState = HardwareConfigState.getInstance();
        this.parsers = r2;
        this.displayMetrics = (DisplayMetrics) Preconditions.checkNotNull(r3);
        this.bitmapPool = (BitmapPool) Preconditions.checkNotNull(r4);
        this.byteArrayPool = (ArrayPool) Preconditions.checkNotNull(r5);
    }

    private static int adjustTargetDensityForError(double r4) {
        int r0 = getDensityMultiplier(r4);
        int r1 = round(((double) r0) * r4);
        return round((r4 / ((double) (r1 / r0))) * ((double) r1));
    }

    private void calculateConfig(ImageReader r7, DecodeFormat r8, boolean r9, boolean r10, BitmapFactory.Options r11, int r12, int r13) {
        if (this.hardwareConfigState.setHardwareConfigIfAllowed(r12, r13, r11, r9, r10) == false) goto L6;
        return;
    L6:
        if (r8 != DecodeFormat.PREFER_ARGB_8888) goto L8;
    L24:
        r11.inPreferredConfig = Bitmap.Config.ARGB_8888;
        return;
    L8:
        if (Build.VERSION.SDK_INT == 16) goto L24;
        boolean r14 = false;
        r14 = r7.getImageType().hasAlpha();     // Catch: IOException -> L13
    L17:
        if (r14 == false) goto L19;
        Bitmap.Config r15 = Bitmap.Config.ARGB_8888;
    L20:
        r11.inPreferredConfig = r15;
        if (r15 != Bitmap.Config.RGB_565) goto L28;
        r11.inDither = true;
        return;
    L28:
        return;
    L19:
        r15 = Bitmap.Config.RGB_565;
    L13:
        e = move-exception;
        if (Log.isLoggable(TAG, 3) == false) goto L17;
        Log.d(TAG, "Cannot determine whether the image has alpha or not from header, format " + r8, e);
        goto L17
    }

    private static void calculateScaling(ImageHeaderParser.ImageType r18, ImageReader r19, DecodeCallbacks r20, BitmapPool r21, DownsampleStrategy r22, int r23, int r24, int r25, int r26, int r27, BitmapFactory.Options r28) throws IOException {
        if (r24 <= 0) goto L73;
        if (r25 <= 0) goto L73;
        if (isRotationRequired(r23) == false) goto L9;
        int r11 = r24;
        int r10 = r25;
    L10:
        float r12 = r22.getScaleFactor(r10, r11, r26, r27);
        if (r12 <= BitmapDescriptorFactory.HUE_RED) goto L71;
        DownsampleStrategy.SampleSizeRounding r7 = r22.getSampleSizeRounding(r10, r11, r26, r27);
        if (r7 == null) goto L69;
        float r13 = r10;
        int r14 = round(r12 * r13);
        float r15 = r11;
        int r3 = r10 / r14;
        int r2 = r11 / round(r12 * r15);
        DownsampleStrategy.SampleSizeRounding r16 = DownsampleStrategy.SampleSizeRounding.MEMORY;
        if (r7 != r16) goto L17;
        int r4 = Math.max(r3, r2);
    L18:
        int r5 = Build.VERSION.SDK_INT;
        if (r5 <= 23) goto L21;
    L23:
        int r6 = Math.max(1, Integer.highestOneBit(r4));
        if (r7 == r16) goto L26;
    L28:
        int r8 = r6;
    L29:
        r28.inSampleSize = r8;
        if (r18 != ImageHeaderParser.ImageType.JPEG) goto L35;
        float r0 = Math.min(r8, 8);
        int r9 = (int) Math.ceil(r13 / r0);
        int r1 = (int) Math.ceil(r15 / r0);
        int r17 = r8 / 8;
        if (r17 <= 0) goto L57;
        r9 = r9 / r17;
        r1 = r1 / r17;
    L57:
        double r29 = r22.getScaleFactor(r9, r1, r26, r27);
        if (r5 < 19) goto L61;
        r28.inTargetDensity = adjustTargetDensityForError(r29);
        r28.inDensity = getDensityMultiplier(r29);
    L61:
        if (isScaling(r28) == false) goto L63;
        r28.inScaled = true;
    L65:
        if (Log.isLoggable(TAG, 2) == false) goto L76;
        Log.v(TAG, "Calculate scaling, source: [" + r24 + "x" + r25 + "], degreesToRotate: " + r23 + ", target: [" + r26 + "x" + r27 + "], power of two scaled: [" + r9 + "x" + r1 + "], exact scale factor: " + r12 + ", power of 2 sample size: " + r8 + ", adjusted scale factor: " + r29 + ", target density: " + r28.inTargetDensity + ", density: " + r28.inDensity);
        return;
    L76:
        return;
    L63:
        r28.inTargetDensity = 0;
        r28.inDensity = 0;
        goto L65
    L35:
        if (r18 != ImageHeaderParser.ImageType.PNG) goto L37;
    L55:
        float r30 = r8;
        r9 = (int) Math.floor(r13 / r30);
        double r31 = Math.floor(r15 / r30);
    L56:
        r1 = (int) r31;
        goto L57
    L37:
        if (r18 == ImageHeaderParser.ImageType.PNG_A) goto L55;
        if (r18 == ImageHeaderParser.ImageType.WEBP) goto L52;
        if (r18 == ImageHeaderParser.ImageType.WEBP_A) goto L52;
        if ((r10 % r8) == 0) goto L47;
    L50:
        int[] r32 = getDimensions(r19, r28, r20, r21);
        r9 = r32[0];
        r1 = r32[1];
        goto L57
    L47:
        if ((r11 % r8) != 0) goto L50;
        r9 = r10 / r8;
        r1 = r11 / r8;
    L52:
        if (r5 < 24) goto L54;
        float r33 = r8;
        r9 = Math.round(r13 / r33);
        r1 = Math.round(r15 / r33);
        goto L57
    L54:
        float r34 = r8;
        r9 = (int) Math.floor(r13 / r34);
        r31 = Math.floor(r15 / r34);
        goto L56
    L26:
        if (r6 >= (1.0f / r12)) goto L28;
        r6 = r6 << 1;
        goto L28
    L21:
        if (NO_DOWNSAMPLE_PRE_N_MIME_TYPES.contains(r28.outMimeType) == false) goto L23;
        r8 = 1;
        goto L29
    L17:
        r4 = Math.min(r3, r2);
        goto L18
    L69:
        throw new IllegalArgumentException("Cannot round with null rounding");
    L71:
        throw new IllegalArgumentException("Cannot scale with factor: " + r12 + " from: " + r22 + ", source: [" + r24 + "x" + r25 + "], target: [" + r26 + "x" + r27 + "]");
    L9:
        r10 = r24;
        r11 = r25;
    L73:
        if (Log.isLoggable(TAG, 3) == false) goto L77;
        Log.d(TAG, "Unable to determine dimensions for: " + r18 + " with target [" + r26 + "x" + r27 + "]");
        return;
    }

    private Bitmap decodeFromWrappedStreams(ImageReader r28, BitmapFactory.Options r29, DownsampleStrategy r30, DecodeFormat r31, PreferredColorSpace r32, boolean r33, int r34, int r35, boolean r36, DecodeCallbacks r37) throws IOException {
        long r20 = LogTime.getLogTime();
        int[] r0 = getDimensions(r28, r29, r37, this.bitmapPool);
        boolean r22 = false;
        int r4 = r0[0];
        int r2 = r0[1];
        String r1 = r29.outMimeType;
        if (r4 == (-1)) goto L7;
        if (r2 == (-1)) goto L7;
        boolean r23 = r33;
    L8:
        int r3 = r28.getImageOrientation();
        int r14 = TransformationUtils.getExifOrientationDegrees(r3);
        boolean r24 = TransformationUtils.isExifOrientationRequired(r3);
        if (r34 != Integer.MIN_VALUE) goto L14;
        int r13 = r35;
        if (isRotationRequired(r14) == false) goto L13;
        int r25 = r2;
    L15:
        if (r13 == Integer.MIN_VALUE) goto L17;
        int r26 = r13;
    L21:
        ImageHeaderParser.ImageType r12 = r28.getImageType();
        calculateScaling(r12, r28, r37, this.bitmapPool, r30, r14, r4, r2, r25, r26, r29);
        calculateConfig(r28, r31, r23, r24, r29, r25, r26);
        int r5 = Build.VERSION.SDK_INT;
        if (r5 < 19) goto L24;
        boolean r6 = true;
    L26:
        if (r29.inSampleSize == 1) goto L30;
        if (r6 == true) goto L30;
        Downsampler r7 = this;
    L48:
        if (r5 < 28) goto L61;
        if (r32 != PreferredColorSpace.DISPLAY_P3) goto L56;
        ColorSpace r8 = r29.outColorSpace;
        if (r8 == null) goto L56;
        if (r8.isWideGamut() == false) goto L56;
        r22 = true;
    L56:
        if (r22 == false) goto L58;
        ColorSpace.Named r9 = ColorSpace.Named.DISPLAY_P3;
    L59:
        r29.inPreferredColorSpace = ColorSpace.get(r9);
    L63:
        Bitmap r10 = decodeStream(r28, r29, r37, r7.bitmapPool);
        r37.onDecodeComplete(r7.bitmapPool, r10);
        if (Log.isLoggable(TAG, 2) == false) goto L67;
        logDecode(r4, r2, r1, r29, r10, r34, r35, r20);
    L67:
        Bitmap r11 = null;
        if (r10 == null) goto L72;
        r10.setDensity(r7.displayMetrics.densityDpi);
        r11 = TransformationUtils.rotateImageExif(r7.bitmapPool, r10, r3);
        if (r10.equals(r11) == true) goto L72;
        r7.bitmapPool.put(r10);
    L72:
        return r11;
    L58:
        r9 = ColorSpace.Named.SRGB;
        goto L59
    L61:
        if (r5 < 26) goto L63;
        r29.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
    L30:
        r7 = this;
        if (r7.shouldUsePool(r12) == false) goto L48;
        if (r4 < 0) goto L38;
        if (r2 < 0) goto L38;
        if (r36 == false) goto L38;
        if (r6 == false) goto L38;
        int r15 = r25;
        int r16 = r26;
    L44:
        if (r15 <= 0) goto L48;
        if (r16 <= 0) goto L48;
        setInBitmap(r29, r7.bitmapPool, r15, r16);
    L38:
        if (isScaling(r29) == false) goto L40;
        float r17 = r29.inTargetDensity / r29.inDensity;
    L41:
        int r18 = r29.inSampleSize;
        float r19 = r18;
        float r38 = r17;
        int r21 = (int) Math.ceil(r4 / r19);
        int r27 = (int) Math.ceil(r2 / r19);
        r15 = Math.round(r21 * r38);
        r16 = Math.round(r27 * r38);
        if (Log.isLoggable(TAG, 2) == false) goto L44;
        Log.v(TAG, "Calculated target [" + r15 + "x" + r16 + "] for source [" + r4 + "x" + r2 + "], sampleSize: " + r18 + ", targetDensity: " + r29.inTargetDensity + ", density: " + r29.inDensity + ", density multiplier: " + r38);
        goto L44
    L40:
        r17 = 1.0f;
        goto L41
    L24:
        r6 = false;
        goto L26
    L17:
        if (isRotationRequired(r14) == false) goto L19;
        r26 = r4;
        goto L21
    L19:
        r26 = r2;
        goto L21
    L13:
        r25 = r4;
        goto L15
    L14:
        r13 = r35;
        r25 = r34;
    L7:
        r23 = false;
        goto L8
    }

    private static Bitmap decodeStream(ImageReader r5, BitmapFactory.Options r6, DecodeCallbacks r7, BitmapPool r8) throws IOException {
        if (r6.inJustDecodeBounds == true) goto L5;
        r7.onObtainBounds();
        r5.stopGrowingBuffers();
    L5:
        int r1 = r6.outWidth;
        int r2 = r6.outHeight;
        String r3 = r6.outMimeType;
        TransformationUtils.getBitmapDrawableLock().lock();
        Bitmap r9 = r5.decodeBitmap(r6);     // Catch: Throwable -> L9 IllegalArgumentException -> L11
        TransformationUtils.getBitmapDrawableLock().unlock();
        return r9;
    L9:
        th = move-exception;
        TransformationUtils.getBitmapDrawableLock().unlock();
        throw th;
    L11:
        e = move-exception;
        IOException r4 = newIoExceptionForInBitmapAssertion(e, r1, r2, r3, r6);     // Catch: Throwable -> L9
        if (Log.isLoggable(TAG, 3) == false) goto L15;
        Log.d(TAG, "Failed to decode with inBitmap, trying again without Bitmap re-use", r4);     // Catch: Throwable -> L9
    L15:
        Bitmap r0 = r6.inBitmap;     // Catch: Throwable -> L9
        if (r0 != null) goto L25;
        throw r4;     // Catch: Throwable -> L9
    L25:
        r8.put(r0);     // Catch: Throwable -> L9 IOException -> L20
        r6.inBitmap = null;     // Catch: Throwable -> L9 IOException -> L20
        Bitmap r10 = decodeStream(r5, r6, r7, r8);     // Catch: Throwable -> L9 IOException -> L20
        TransformationUtils.getBitmapDrawableLock().unlock();
        return r10;
    L28:
        throw r4;     // Catch: Throwable -> L9
    L20:
        throw r4;     // Catch: Throwable -> L9
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
        monitor-enter(Downsampler.class);
        Queue<BitmapFactory.Options> r1 = OPTIONS_QUEUE;     // Catch: Throwable -> L15
        monitor-enter(r1);     // Catch: Throwable -> L15
        BitmapFactory.Options r2 = r1.poll();     // Catch: Throwable -> L12
        monitor-exit(r1);     // Catch: Throwable -> L12
        if (r2 != null) goto L10;
        r2 = new BitmapFactory.Options();     // Catch: Throwable -> L15
        resetOptions(r2);     // Catch: Throwable -> L15
    L10:
        monitor-exit(Downsampler.class);
        return r2;
    L12:
        th = move-exception;
        throw th;     // Catch: Throwable -> L15
    L15:
        th = move-exception;
        throw th;
    }

    private static int getDensityMultiplier(double r3) {
        if (r3 <= 1.0d) goto L7;
        r3 = 1.0d / r3;
    L7:
        return (int) Math.round(r3 * 2.147483647E9d);
    }

    private static int[] getDimensions(ImageReader r1, BitmapFactory.Options r2, DecodeCallbacks r3, BitmapPool r4) throws IOException {
        r2.inJustDecodeBounds = true;
        decodeStream(r1, r2, r3, r4);
        r2.inJustDecodeBounds = false;
        return new int[]{r2.outWidth, r2.outHeight};
    }

    private static String getInBitmapString(BitmapFactory.Options r0) {
        return getBitmapString(r0.inBitmap);
    }

    private static boolean isRotationRequired(int r1) {
        if (r1 != 90) goto L5;
    L8:
        return true;
    L5:
        if (r1 == 270) goto L8;
        return false;
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

    private static void resetOptions(BitmapFactory.Options r5) {
        r5.inTempStorage = null;
        r5.inDither = false;
        r5.inScaled = false;
        r5.inSampleSize = 1;
        r5.inPreferredConfig = null;
        r5.inJustDecodeBounds = false;
        r5.inDensity = 0;
        r5.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT < 26) goto L5;
        r5.inPreferredColorSpace = null;
        r5.outColorSpace = null;
        r5.outConfig = null;
    L5:
        r5.outWidth = 0;
        r5.outHeight = 0;
        r5.outMimeType = null;
        r5.inBitmap = null;
        r5.inMutable = true;
    }

    private static int round(double r2) {
        return (int) (r2 + 0.5d);
    }

    @TargetApi(26)
    private static void setInBitmap(BitmapFactory.Options r2, BitmapPool r3, int r4, int r5) {
        if (Build.VERSION.SDK_INT >= 26) goto L5;
        Bitmap.Config r0 = null;
    L9:
        if (r0 != null) goto L11;
        r0 = r2.inPreferredConfig;
    L11:
        r2.inBitmap = r3.getDirty(r4, r5, r0);
        return;
    L5:
        if (r2.inPreferredConfig != Bitmap.Config.HARDWARE) goto L7;
        return;
    L7:
        r0 = r2.outConfig;
        goto L9
    }

    private boolean shouldUsePool(ImageHeaderParser.ImageType r3) {
        if (Build.VERSION.SDK_INT < 19) goto L7;
        return true;
    L7:
        return TYPES_THAT_USE_POOL_PRE_KITKAT.contains(r3);
    }

    public Resource<Bitmap> decode(InputStream r7, int r8, int r9, Options r10) throws IOException {
        return decode(r7, r8, r9, r10, EMPTY_CALLBACKS);
    }

    public boolean handles(ParcelFileDescriptor r1) {
        return ParcelFileDescriptorRewinder.isSupported();
    }

    public boolean handles(InputStream r1) {
        return true;
    }

    public boolean handles(ByteBuffer r1) {
        return true;
    }

    public Resource<Bitmap> decode(InputStream r7, int r8, int r9, Options r10, DecodeCallbacks r11) throws IOException {
        return decode(new ImageReader.InputStreamImageReader(r7, this.parsers, this.byteArrayPool), r8, r9, r10, r11);
    }

    public Resource<Bitmap> decode(ParcelFileDescriptor r7, int r8, int r9, Options r10) throws IOException {
        return decode(new ImageReader.ParcelFileDescriptorImageReader(r7, this.parsers, this.byteArrayPool), r8, r9, r10, EMPTY_CALLBACKS);
    }

    private Resource<Bitmap> decode(ImageReader r16, int r17, int r18, Options r19, DecodeCallbacks r20) throws IOException {
        byte[] r13 = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        BitmapFactory.Options r14 = getDefaultOptions();
        r14.inTempStorage = r13;
        DecodeFormat r5 = (DecodeFormat) r19.get(DECODE_FORMAT);
        PreferredColorSpace r6 = (PreferredColorSpace) r19.get(PREFERRED_COLOR_SPACE);
        DownsampleStrategy r4 = (DownsampleStrategy) r19.get(DownsampleStrategy.OPTION);
        boolean r10 = ((Boolean) r19.get(FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
        Option<Boolean> r1 = ALLOW_HARDWARE_CONFIG;
        if (r19.get(r1) != null) goto L5;
    L7:
        boolean r7 = false;
    L15:
        BitmapResource r0 = BitmapResource.obtain(decodeFromWrappedStreams(r16, r14, r4, r5, r6, r7, r17, r18, r10, r20), this.bitmapPool);     // Catch: Throwable -> L12
        releaseOptions(r14);
        this.byteArrayPool.put(r13);
        return r0;
    L12:
        th = move-exception;
        releaseOptions(r14);
        this.byteArrayPool.put(r13);
        throw th;
    L5:
        if (((Boolean) r19.get(r1)).booleanValue() == false) goto L7;
        r7 = true;
        goto L15
    }
}
