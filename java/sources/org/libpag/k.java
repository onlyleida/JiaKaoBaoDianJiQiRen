package org.libpag;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.hardware.HardwareBuffer;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f16290a;
    private static HandlerThread b;
    private static volatile int c;

    protected static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        PAGImageView f16291a;
        String b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Bitmap f16292d;

        protected a() {
        }

        static a a(PAGImageView pAGImageView, String str, int i, Bitmap bitmap) {
            a aVar = new a();
            aVar.f16291a = pAGImageView;
            aVar.b = str;
            aVar.c = i;
            aVar.f16292d = bitmap;
            return aVar;
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f16293a;
        int b;
        float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f16294d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f16295e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        PAGDecoder f16296f;

        b() {
        }

        boolean a() {
            return this.f16293a > 0 && this.b > 0;
        }

        void b() {
            PAGDecoder pAGDecoder = this.f16296f;
            if (pAGDecoder != null) {
                pAGDecoder.release();
            }
            this.f16296f = null;
        }

        void c() {
            b();
            this.f16293a = 0;
            this.b = 0;
            this.c = BitmapDescriptorFactory.HUE_RED;
            this.f16294d = 0;
            this.f16295e = 0L;
        }

        boolean a(Context context, PAGComposition pAGComposition, String str, int i, int i2, float f2) {
            if ((pAGComposition == null && str == null) || i == 0) {
                return false;
            }
            if (pAGComposition == null) {
                pAGComposition = str.startsWith("assets://") ? PAGFile.Load(context.getAssets(), str.substring(9)) : PAGFile.Load(str);
            }
            if (pAGComposition == null) {
                return false;
            }
            float fMax = Math.max((i * 1.0f) / pAGComposition.width(), (i2 * 1.0f) / pAGComposition.height());
            if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                this.c = pAGComposition.frameRate();
            } else {
                this.c = Math.min(pAGComposition.frameRate(), f2);
            }
            PAGDecoder pAGDecoderMake = PAGDecoder.Make(pAGComposition, this.c, fMax);
            this.f16296f = pAGDecoderMake;
            this.f16293a = pAGDecoderMake.width();
            this.b = this.f16296f.height();
            this.f16294d = this.f16296f.numFrames();
            this.f16295e = pAGComposition.duration();
            return true;
        }
    }

    static class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f16297a;
        private List<PAGImageView> b;

        c(Looper looper) {
            super(looper);
            this.f16297a = new Object();
            this.b = new ArrayList();
        }

        void a(PAGImageView pAGImageView) {
            synchronized (this.f16297a) {
                if (this.b.isEmpty()) {
                    Message messageObtainMessage = obtainMessage();
                    messageObtainMessage.arg1 = 1;
                    sendMessage(messageObtainMessage);
                }
                this.b.add(pAGImageView);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ArrayList arrayList;
            PAGImageView pAGImageView;
            super.handleMessage(message);
            int i = message.arg1;
            if (i == 0) {
                CacheManager cacheManagerA = CacheManager.a((Context) null);
                if (cacheManagerA != null) {
                    cacheManagerA.a();
                }
                new Handler(Looper.getMainLooper()).post(new l(this));
                return;
            }
            if (i == 1) {
                synchronized (this.f16297a) {
                    arrayList = new ArrayList(this.b);
                    this.b.clear();
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (obj instanceof PAGImageView) {
                        PAGImageView pAGImageView2 = (PAGImageView) obj;
                        if (!arrayList2.contains(pAGImageView2)) {
                            pAGImageView2.e();
                            arrayList2.add(pAGImageView2);
                        }
                    }
                }
                return;
            }
            if (i != 2) {
                if (i == 3) {
                    ((PAGImageView) message.obj).b();
                    return;
                } else {
                    if (i == 4 && (pAGImageView = (PAGImageView) message.obj) != null) {
                        pAGImageView.c();
                        return;
                    }
                    return;
                }
            }
            PAGImageView pAGImageView3 = (PAGImageView) message.obj;
            if (pAGImageView3 != null) {
                pAGImageView3.d();
                if (pAGImageView3.u != null) {
                    pAGImageView3.u.c();
                }
            }
        }
    }

    protected static synchronized void a() {
        HandlerThread handlerThread;
        c--;
        if (c != 0) {
            return;
        }
        if (f16290a != null && (handlerThread = b) != null) {
            if (handlerThread.isAlive()) {
                b(0, (Object) null);
            }
        }
    }

    protected static double b(int i, int i2) {
        if (i2 <= 1 || i < 0) {
            return 0.0d;
        }
        if (i >= i2 - 1) {
            return 1.0d;
        }
        return ((((double) i) * 1.0d) + 0.1d) / ((double) i2);
    }

    protected static synchronized void b() {
        c++;
        if (b == null) {
            HandlerThread handlerThread = new HandlerThread("pagImageView-renderer");
            b = handlerThread;
            handlerThread.start();
        }
        if (f16290a == null) {
            f16290a = new c(b.getLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        HandlerThread handlerThread;
        if (c == 0 && f16290a != null && (handlerThread = b) != null && handlerThread.isAlive()) {
            f16290a.removeCallbacksAndMessages(null);
            if (Build.VERSION.SDK_INT > 18) {
                b.quitSafely();
            } else {
                b.quit();
            }
            b = null;
            f16290a = null;
        }
    }

    protected static void a(int i, Object obj) {
        c cVar = f16290a;
        if (cVar == null) {
            return;
        }
        cVar.removeMessages(i, obj);
    }

    protected static void b(int i, Object obj) {
        c cVar = f16290a;
        if (cVar == null) {
            return;
        }
        Message messageObtainMessage = cVar.obtainMessage();
        messageObtainMessage.arg1 = i;
        if (obj != null) {
            messageObtainMessage.obj = obj;
        }
        f16290a.sendMessage(messageObtainMessage);
    }

    protected static void a(PAGImageView pAGImageView) {
        c cVar = f16290a;
        if (cVar == null) {
            return;
        }
        cVar.a(pAGImageView);
    }

    protected static Matrix a(int i, int i2, int i3, int i4, int i5) {
        Matrix matrix = new Matrix();
        if (i != 0 && i2 > 0 && i3 > 0 && i4 > 0 && i5 > 0) {
            float f2 = i4;
            float f3 = i2;
            float f4 = (f2 * 1.0f) / f3;
            float f5 = i5;
            float f6 = i3;
            float f7 = (1.0f * f5) / f6;
            if (i == 1) {
                matrix.setScale(f4, f7);
            } else if (i != 3) {
                float fMin = Math.min(f4, f7);
                matrix.setScale(fMin, fMin);
                if (f4 < f7) {
                    matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, (f5 - (f6 * fMin)) * 0.5f);
                } else {
                    matrix.postTranslate((f2 - (f3 * fMin)) * 0.5f, BitmapDescriptorFactory.HUE_RED);
                }
            } else {
                float fMax = Math.max(f4, f7);
                matrix.setScale(fMax, fMax);
                if (f4 > f7) {
                    matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, (f5 - (f6 * fMax)) * 0.5f);
                } else {
                    matrix.postTranslate((f2 - (f3 * fMax)) * 0.5f, BitmapDescriptorFactory.HUE_RED);
                }
            }
        }
        return matrix;
    }

    protected static String a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new BigInteger(1, MessageDigest.getInstance("md5").digest(str.getBytes("utf-8"))).toString(16);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static double a(double d2, double d3) {
        return d2 - (((double) ((int) Math.floor(d2 / d3))) * d3);
    }

    protected static int a(double d2, int i) {
        if (i <= 1) {
            return 0;
        }
        double dA = a(d2, 1.0d);
        if (dA <= 0.0d && d2 != 0.0d) {
            dA += 1.0d;
        }
        int iFloor = (int) Math.floor(dA * ((double) i));
        return iFloor == i ? i - 1 : iFloor;
    }

    protected static Bitmap a(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return null;
        }
        if (CacheManager.f16245a) {
            HardwareBuffer hardwareBufferCreate = HardwareBuffer.create(i, i2, 1, 1, 307L);
            if (hardwareBufferCreate == null) {
                return null;
            }
            Bitmap bitmapWrapHardwareBuffer = Bitmap.wrapHardwareBuffer(hardwareBufferCreate, ColorSpace.get(ColorSpace.Named.SRGB));
            try {
                hardwareBufferCreate.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return bitmapWrapHardwareBuffer;
        }
        return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
    }
}
