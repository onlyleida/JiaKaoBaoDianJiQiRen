package cn.mucang.jiakaoyi.sundial.utils;

import android.graphics.Bitmap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import org.opencv.android.Utils;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.b.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/utils/MatUtils;", "", "()V", "Companion", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MatUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f9098a = new a(null);

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.b.a$a */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J&\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012J.\u0010\u0013\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012¨\u0006\u0014"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/utils/MatUtils$Companion;", "", "()V", "mat2Bitmap", "Landroid/graphics/Bitmap;", "rgb", "Lorg/opencv/core/Mat;", "mat2File", "", "file", "Ljava/io/File;", "yuv2Bitmap", "data", "", "width", "", "height", "i420", "", "yuv2File", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final Bitmap a(byte[] data, int i, int i2, boolean z) {
            r.e(data, "data");
            Mat mat = new Mat((i2 * 3) / 2, i, CvType.CV_8UC1);
            mat.put(0, 0, data);
            Mat mat2 = new Mat();
            if (z) {
                Imgproc.cvtColor(mat, mat2, 100);
            } else {
                Imgproc.cvtColor(mat, mat2, 92);
            }
            Bitmap bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
            Utils.matToBitmap(mat2, bitmap);
            mat.release();
            mat2.release();
            r.d(bitmap, "bitmap");
            return bitmap;
        }

        public final void b(File file, byte[] data, int i, int i2, boolean z) throws IOException {
            r.e(file, "file");
            r.e(data, "data");
            Bitmap bitmapA = a(data, i, i2, z);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmapA.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        }
    }
}
