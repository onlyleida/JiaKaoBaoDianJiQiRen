package cn.mucang.android.facelib.y;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.os.Trace;
import cn.mucang.android.core.utils.u;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.tensorflow.lite.Interpreter;
import org.tensorflow.lite.gpu.CompatibilityList;
import org.tensorflow.lite.gpu.GpuDelegate;

/* JADX INFO: loaded from: classes.dex */
public class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3063a;
    private int b;
    private int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[][] f3064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ByteBuffer f3065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Interpreter f3066f;

    private f() {
    }

    public static e b(AssetManager assetManager, String str, int i, boolean z, boolean z2) throws IOException {
        f fVar = new f();
        fVar.b = i;
        try {
            Interpreter.Options options = new Interpreter.Options();
            if (z) {
                options.addDelegate(new GpuDelegate(new GpuDelegate.Options()));
            } else {
                options.setNumThreads(4);
            }
            fVar.f3066f = new Interpreter(d(assetManager, str), options);
            CompatibilityList compatibilityList = new CompatibilityList();
            if (z || compatibilityList.isDelegateSupportedOnThisDevice()) {
                cn.mucang.android.facelib.x.a.a("人脸Tensorflow支持GPU加速：TRUE");
            } else {
                cn.mucang.android.facelib.x.a.a("人脸Tensorflow支持GPU加速：FALSE");
            }
            fVar.f3063a = z2;
            int i2 = z2 ? 1 : 4;
            int i3 = fVar.b;
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i3 * 1 * i3 * 3 * i2);
            fVar.f3065e = byteBufferAllocateDirect;
            byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
            int i4 = fVar.b;
            fVar.c = new int[i4 * i4];
            fVar.f3066f.setNumThreads(4);
            return fVar;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    static /* synthetic */ void c(Interpreter interpreter) {
        if (interpreter != null) {
            interpreter.close();
        }
    }

    private static MappedByteBuffer d(AssetManager assetManager, String str) throws IOException {
        AssetFileDescriptor assetFileDescriptorOpenFd = assetManager.openFd(str);
        return new FileInputStream(assetFileDescriptorOpenFd.getFileDescriptor()).getChannel().map(FileChannel.MapMode.READ_ONLY, assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getDeclaredLength());
    }

    @Override // cn.mucang.android.facelib.y.e
    public List<e.a> a(Bitmap bitmap, boolean z) {
        Trace.beginSection("recognizeImage");
        Trace.beginSection("preprocessBitmap");
        bitmap.getPixels(this.c, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.f3065e.rewind();
        for (int i = 0; i < this.b; i++) {
            int i2 = 0;
            while (true) {
                int i3 = this.b;
                if (i2 < i3) {
                    int i4 = this.c[(i3 * i) + i2];
                    if (this.f3063a) {
                        this.f3065e.put((byte) ((i4 >> 16) & 255));
                        this.f3065e.put((byte) ((i4 >> 8) & 255));
                        this.f3065e.put((byte) (i4 & 255));
                    } else {
                        this.f3065e.putFloat((((i4 >> 16) & 255) - 128.0f) / 128.0f);
                        this.f3065e.putFloat((((i4 >> 8) & 255) - 128.0f) / 128.0f);
                        this.f3065e.putFloat(((i4 & 255) - 128.0f) / 128.0f);
                    }
                    i2++;
                }
            }
        }
        Trace.endSection();
        Trace.beginSection("feed");
        Object[] objArr = {this.f3065e};
        Trace.endSection();
        HashMap map = new HashMap();
        this.f3064d = (float[][]) Array.newInstance((Class<?>) float.class, 1, 192);
        map.put(0, this.f3064d);
        Trace.beginSection("run");
        this.f3066f.runForMultipleInputsOutputs(objArr, map);
        Trace.endSection();
        ArrayList arrayList = new ArrayList(1);
        e.a aVar = new e.a();
        arrayList.add(aVar);
        if (z) {
            aVar.c(this.f3064d);
        }
        Trace.endSection();
        return arrayList;
    }

    @Override // cn.mucang.android.facelib.y.e
    public void close() {
        final Interpreter interpreter = this.f3066f;
        this.f3066f = null;
        u.d(new Runnable() { // from class: cn.mucang.android.facelib.y.a
            @Override // java.lang.Runnable
            public final void run() {
                f.c(interpreter);
            }
        }, 200L);
    }
}
