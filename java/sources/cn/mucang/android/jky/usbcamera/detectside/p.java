package cn.mucang.android.jky.usbcamera.detectside;

import android.util.Log;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import org.json.JSONArray;
import org.json.JSONObject;
import org.opencv.core.Mat;
import org.opencv.core.MatOfPoint2f;
import org.opencv.core.Point;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes4.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final double f8879a = b(2.0f);
    public static final double b;
    public static final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final double f8880d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final double f8881e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f8882f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Mat f8883g;

    static {
        double radians = Math.toRadians(8.0d);
        b = radians;
        c = Math.cos(radians);
        f8880d = Math.cos(radians * 2.0d);
        double radians2 = Math.toRadians(30.0d);
        f8881e = radians2;
        Math.cos(radians2);
        f8882f = null;
        f8883g = null;
    }

    private static void a(Point point) {
        if (point.x < 0.0d || point.y < 0.0d) {
            throw new RuntimeException("点不能在范围外");
        }
    }

    public static float b(float f2) {
        return f2 * 1.0f;
    }

    public static Mat c() {
        Mat mat = f8883g;
        if (mat != null) {
            return mat;
        }
        try {
            if (f8882f == null) {
                f8882f = i0.g("SideDetectLineMatKey", null);
            }
            if (f8882f == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(f8882f);
            int i = jSONObject.getInt("rows");
            int i2 = jSONObject.getInt("cols");
            int i3 = jSONObject.getInt("type");
            JSONArray jSONArray = jSONObject.getJSONArray("data");
            int length = jSONArray.length();
            double[] dArr = new double[length];
            for (int i4 = 0; i4 < length; i4++) {
                dArr[i4] = jSONArray.getDouble(i4);
            }
            Mat mat2 = new Mat(i, i2, i3);
            mat2.put(0, 0, dArr);
            f8883g = mat2;
            return mat2;
        } catch (Throwable th) {
            Log.e("PrintMat2", "相机没有校准:" + th.getLocalizedMessage());
            return null;
        }
    }

    public static void d(Mat mat) {
        MatOfPoint2f matOfPoint2f = new MatOfPoint2f(new Point(0.0d, 0.0d), new Point(74.80000305175781d, 0.0d), new Point(74.80000305175781d, 74.5d), new Point(0.0d, 74.5d));
        g(Imgproc.getPerspectiveTransform(mat, matOfPoint2f));
        matOfPoint2f.release();
    }

    private static void e(Point point, int i, int i2) {
        point.x = (point.x * 1.0d) / ((double) i);
        point.y = (point.y * 1.0d) / ((double) i2);
    }

    public static float f(float f2) {
        return f2 / 1.0f;
    }

    public static void g(Mat mat) {
        Mat mat2 = f8883g;
        if (mat2 != null) {
            mat2.release();
        }
        f8883g = mat;
        if (mat != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("rows", mat.rows());
                jSONObject.put("cols", mat.cols());
                jSONObject.put("type", mat.type());
                int iRows = mat.rows() * mat.cols();
                double[] dArr = new double[iRows];
                mat.get(0, 0, dArr);
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < iRows; i++) {
                    jSONArray.put(dArr[i]);
                }
                jSONObject.put("data", jSONArray);
                String string = jSONObject.toString();
                f8882f = string;
                i0.m("SideDetectLineMatKey", string);
            } catch (Throwable th) {
                Log.e("PrintMat1", "数据保存失败:" + th.getLocalizedMessage());
            }
        }
    }

    public static void h(Point point, Point point2, Point point3, Point point4, int i, int i2, int i3, int i4) throws RuntimeException {
        a(point);
        a(point2);
        a(point3);
        a(point4);
        e(point, i, i2);
        e(point2, i, i2);
        e(point3, i, i2);
        e(point4, i, i2);
        i(point, i3, i4);
        i(point2, i3, i4);
        i(point3, i3, i4);
        i(point4, i3, i4);
        d(new MatOfPoint2f(point, point2, point3, point4));
    }

    private static void i(Point point, int i, int i2) {
        point.x *= (double) i;
        point.y *= (double) i2;
    }
}
