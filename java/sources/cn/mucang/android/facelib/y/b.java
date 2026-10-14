package cn.mucang.android.facelib.y;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.os.Trace;
import com.amap.api.maps.model.BitmapDescriptorFactory;
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
@SuppressLint({"LongLogTag"})
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3057a;
    private int b;
    private int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[][] f3058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ByteBuffer f3059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Interpreter f3060f;

    private b() {
    }

    public static c b(Context context, String str, int i, boolean z, boolean z2) throws IOException {
        b bVar = new b();
        MappedByteBuffer mappedByteBufferC = c(context.getAssets(), str);
        bVar.b = i;
        try {
            Interpreter.Options options = new Interpreter.Options();
            if (z) {
                options.addDelegate(new GpuDelegate(new GpuDelegate.Options()));
            } else {
                options.setNumThreads(4);
            }
            bVar.f3060f = new Interpreter(mappedByteBufferC, options);
            CompatibilityList compatibilityList = new CompatibilityList();
            if (z || compatibilityList.isDelegateSupportedOnThisDevice()) {
                cn.mucang.android.facelib.x.a.a("口罩Tensorflow支持GPU加速：TRUE");
            } else {
                cn.mucang.android.facelib.x.a.a("口罩Tensorflow支持GPU加速：FALSE");
            }
            bVar.f3057a = z2;
            int i2 = z2 ? 1 : 4;
            int i3 = bVar.b;
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i3 * 1 * i3 * 3 * i2);
            bVar.f3059e = byteBufferAllocateDirect;
            byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
            int i4 = bVar.b;
            bVar.c = new int[i4 * i4];
            bVar.f3058d = (float[][]) Array.newInstance((Class<?>) float.class, 1, 2);
            return bVar;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    private static MappedByteBuffer c(AssetManager assetManager, String str) throws IOException {
        AssetFileDescriptor assetFileDescriptorOpenFd = assetManager.openFd(str);
        return new FileInputStream(assetFileDescriptorOpenFd.getFileDescriptor()).getChannel().map(FileChannel.MapMode.READ_ONLY, assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getDeclaredLength());
    }

    @Override // cn.mucang.android.facelib.y.c
    public List<d> a(Bitmap bitmap) {
        Trace.beginSection("recognizeImage");
        Trace.beginSection("preprocessBitmap");
        bitmap.getPixels(this.c, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.f3059e.rewind();
        for (int i = 0; i < this.b; i++) {
            int i2 = 0;
            while (true) {
                int i3 = this.b;
                if (i2 < i3) {
                    int i4 = this.c[(i3 * i) + i2];
                    if (this.f3057a) {
                        this.f3059e.put((byte) ((i4 >> 16) & 255));
                        this.f3059e.put((byte) ((i4 >> 8) & 255));
                        this.f3059e.put((byte) (i4 & 255));
                    } else {
                        this.f3059e.putFloat((((i4 >> 16) & 255) - BitmapDescriptorFactory.HUE_RED) / 1.0f);
                        this.f3059e.putFloat((((i4 >> 8) & 255) - BitmapDescriptorFactory.HUE_RED) / 1.0f);
                        this.f3059e.putFloat(((i4 & 255) - BitmapDescriptorFactory.HUE_RED) / 1.0f);
                    }
                    i2++;
                }
            }
        }
        Trace.endSection();
        Trace.beginSection("feed");
        this.f3058d = (float[][]) Array.newInstance((Class<?>) float.class, 1, 2);
        Object[] objArr = {this.f3059e};
        HashMap map = new HashMap();
        map.put(0, this.f3058d);
        Trace.endSection();
        Trace.beginSection("run");
        this.f3060f.runForMultipleInputsOutputs(objArr, map);
        Trace.endSection();
        ArrayList arrayList = new ArrayList(2);
        int i5 = 0;
        while (i5 < 2) {
            arrayList.add(new d(i5 == 0 ? 0 : 1, this.f3058d[0][i5]));
            i5++;
        }
        Trace.endSection();
        return arrayList;
    }

    @Override // cn.mucang.android.facelib.y.c
    public void close() {
        Interpreter interpreter = this.f3060f;
        if (interpreter != null) {
            interpreter.close();
            this.f3060f = null;
        }
    }
}
