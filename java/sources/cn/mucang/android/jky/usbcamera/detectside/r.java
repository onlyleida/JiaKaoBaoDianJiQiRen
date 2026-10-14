package cn.mucang.android.jky.usbcamera.detectside;

import android.graphics.Bitmap;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.opencv.android.Utils;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.Point;
import org.opencv.core.Scalar;
import org.opencv.core.Size;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes4.dex */
public class r implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f8890e = r.class.getName();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static float f8891f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static double f8892g = 30.0d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static double f8893h = 50.0d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Mat f8894a;
    public final long b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8895d = 0;

    public r(Mat mat, long j, boolean z) {
        this.f8894a = mat;
        this.b = j;
        this.c = z;
    }

    private List<q> a(List<float[]> list, float f2, float f3) {
        ArrayList<q> arrayList = new ArrayList();
        for (float[] fArr : list) {
            arrayList.add(new q(fArr[1], fArr[0]));
        }
        float fAbs = BitmapDescriptorFactory.HUE_RED;
        float fAbs2 = BitmapDescriptorFactory.HUE_RED;
        for (q qVar : arrayList) {
            if (Math.abs(qVar.f8889h) > fAbs) {
                fAbs = Math.abs(qVar.f8889h);
            }
            if (Math.abs(qVar.f8888g) > fAbs2) {
                fAbs2 = Math.abs(qVar.f8888g);
            }
        }
        for (q qVar2 : arrayList) {
            if (fAbs > BitmapDescriptorFactory.HUE_RED) {
                qVar2.m = qVar2.f8889h / fAbs;
            }
            if (fAbs2 > BitmapDescriptorFactory.HUE_RED) {
                qVar2.l = qVar2.f8888g / fAbs2;
            }
        }
        Log.e(f8890e, "处理前线条总数 = " + arrayList.size());
        ArrayList arrayList2 = new ArrayList();
        while (arrayList.size() > 0) {
            ArrayList<q> arrayList3 = new ArrayList();
            q qVar3 = (q) arrayList.remove(0);
            arrayList3.add(qVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (b(qVar3, (q) arrayList.get(size), f2, f3)) {
                    arrayList3.add(arrayList.remove(size));
                }
            }
            float f4 = BitmapDescriptorFactory.HUE_RED;
            float f5 = BitmapDescriptorFactory.HUE_RED;
            float f6 = BitmapDescriptorFactory.HUE_RED;
            float f7 = BitmapDescriptorFactory.HUE_RED;
            for (q qVar4 : arrayList3) {
                f4 += qVar4.f8889h;
                f5 += qVar4.f8888g;
                f6 += qVar4.m;
                f7 += qVar4.l;
            }
            float size2 = f4 / arrayList3.size();
            float size3 = f5 / arrayList3.size();
            if (arrayList3.size() > 4) {
                float size4 = f6 / arrayList3.size();
                float size5 = f7 / arrayList3.size();
                for (q qVar5 : arrayList3) {
                    qVar5.n = Math.abs(qVar5.m - size4);
                    qVar5.o = Math.abs(qVar5.l - size5);
                }
                for (int size6 = arrayList3.size() - 1; size6 >= 0; size6--) {
                    q qVar6 = (q) arrayList3.get(size6);
                    if (qVar6.o > 0.06f || qVar6.n >= 0.06f) {
                        arrayList3.remove(size6);
                    }
                }
                float f8 = BitmapDescriptorFactory.HUE_RED;
                float f9 = BitmapDescriptorFactory.HUE_RED;
                for (q qVar7 : arrayList3) {
                    f8 += qVar7.f8889h;
                    f9 += qVar7.f8888g;
                }
                size2 = f8 / arrayList3.size();
                size3 = f9 / arrayList3.size();
            }
            arrayList2.add(new q(size3, size2));
        }
        Log.e(f8890e, "处理后线条总数 = " + arrayList2.size());
        return arrayList2;
    }

    private boolean b(q qVar, q qVar2, float f2, float f3) {
        Point pointF;
        double dAbs = Math.abs(q.e(qVar.j, qVar2.j));
        if (dAbs >= p.c && Math.abs(qVar.k - qVar2.k) < p.f8879a) {
            return true;
        }
        if (dAbs < p.f8880d || (pointF = qVar.f(qVar2)) == null) {
            return false;
        }
        double d2 = pointF.x;
        if (d2 > (-f2) * 0.1f && d2 < f2 * 1.1f) {
            double d3 = pointF.y;
            if (d3 > (-f3) * 0.1f && d3 < f3 * 1.1f) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        Mat mat;
        long j;
        Bitmap bitmapCreateBitmap;
        int i = this.f8895d + 1;
        this.f8895d = i;
        if (i > 0) {
            t.j(true);
        }
        Mat matC = p.c();
        if (matC != null) {
            double d2 = 74;
            Size size = new Size(d2, d2);
            mat = new Mat(74, 74, CvType.CV_8UC1);
            Imgproc.warpPerspective(this.f8894a, mat, matC, size, 1);
        } else {
            mat = this.f8894a;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iRows = this.f8894a.rows();
        int iCols = this.f8894a.cols();
        int i2 = CvType.CV_8UC1;
        Mat mat2 = new Mat(iRows, iCols, i2);
        Imgproc.GaussianBlur(mat, mat2, new Size(3.0d, 3.0d), 0.0d);
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        Mat mat3 = new Mat(this.f8894a.rows(), this.f8894a.cols(), i2);
        Mat mat4 = new Mat(this.f8894a.rows(), this.f8894a.cols(), i2);
        try {
            j = jCurrentTimeMillis;
            double d3 = mat2.cols() < 200 ? 3 : 15;
            try {
                Imgproc.erode(mat2, mat3, Imgproc.getStructuringElement(0, new Size(d3, d3)), new Point(-1.0d, -1.0d), 3);
                Imgproc.dilate(mat3, mat4, Imgproc.getStructuringElement(0, new Size(d3, d3)), new Point(-1.0d, -1.0d), 3);
            } catch (Throwable unused) {
                mat4 = mat2;
            }
        } catch (Throwable unused2) {
            j = jCurrentTimeMillis;
        }
        Log.e("TAG", "膨胀腐蚀的时间是 : " + (System.currentTimeMillis() - jCurrentTimeMillis2));
        Mat mat5 = new Mat(this.f8894a.rows(), this.f8894a.cols(), CvType.CV_8UC1);
        Imgproc.Canny(mat4, mat5, f8892g, f8893h, 3, true);
        Mat mat6 = new Mat();
        Imgproc.HoughLines(mat5, mat6, 1.0d, 0.017453292519943295d, (int) (((double) 2220) / 74.8d));
        int iRows2 = mat6.rows();
        int i3 = 10;
        if (iRows2 <= 0 || iRows2 >= 10) {
            double d4 = f8892g + 10.0d;
            f8892g = d4;
            f8893h += 10.0d;
            if (d4 > 140.0d) {
                f8892g = 30.0d;
                f8893h = 50.0d;
            }
        }
        int iWidth = mat5.width();
        int iHeight = mat5.height();
        mat3.release();
        mat5.release();
        Bitmap bitmapCreateBitmap2 = null;
        if (mat6.rows() <= 0) {
            if (this.f8894a.width() > 0) {
                if (this.c) {
                    bitmapCreateBitmap = Bitmap.createBitmap(this.f8894a.width(), this.f8894a.height(), Bitmap.Config.ARGB_8888);
                    Utils.matToBitmap(this.f8894a, bitmapCreateBitmap);
                } else {
                    bitmapCreateBitmap = null;
                }
                o.e(bitmapCreateBitmap, null, this.b);
            }
            mat6.release();
            this.f8894a.release();
            mat2.release();
            mat4.release();
            mat.release();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < mat6.rows(); i4++) {
            float[] fArr = new float[2];
            mat6.get(i4, 0, fArr);
            arrayList.add(fArr);
        }
        List<q> listA = a(arrayList, iWidth, iHeight);
        long jCurrentTimeMillis3 = System.currentTimeMillis();
        Collections.sort(listA, new Comparator() { // from class: cn.mucang.android.jky.usbcamera.detectside.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Float.valueOf(((q) obj2).k).compareTo(Float.valueOf(((q) obj).k));
            }
        });
        List<q> listB = LinesProcessor.b(listA);
        if (listB != null && listB.size() == 2) {
            q qVar = listB.get(0);
            q qVar2 = listB.get(1);
            float fAbs = Math.abs(qVar.k - qVar2.k);
            float fB = p.b(30.0f);
            float fB2 = p.b(10.0f);
            if (Math.abs(qVar.i - qVar2.i) <= 1.0f && fAbs >= fB2 && fAbs < fB) {
                f8891f = fAbs;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("边线检测时间:");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis3);
        sb.append(" , 线条数:");
        sb.append(listB == null ? 0 : listB.size());
        Log.e("TAG", sb.toString());
        if (listB != null) {
            if (this.c) {
                int i5 = 0;
                while (i5 < listB.size()) {
                    q qVar3 = listB.get(i5);
                    Imgproc.line(mat4, qVar3.f8884a, qVar3.b, new Scalar(0.0d, 0.0d, 255.0d), 1, 8, 0);
                    Imgproc.circle(mat4, qVar3.f8887f, i3, new Scalar(0.0d, 255.0d, 255.0d), 1);
                    Point point = qVar3.f8887f;
                    Imgproc.putText(mat4, "" + i5, new Point(point.x, point.y + 10.0d), 0, 1.0d, new Scalar(0.0d, 0.0d, 255.0d));
                    i5++;
                    i3 = 10;
                }
                bitmapCreateBitmap2 = Bitmap.createBitmap(mat4.width(), mat4.height(), Bitmap.Config.ARGB_8888);
                Utils.matToBitmap(mat4, bitmapCreateBitmap2);
            }
            o.e(bitmapCreateBitmap2, listB, this.b);
        } else {
            if (this.c) {
                bitmapCreateBitmap2 = Bitmap.createBitmap(mat4.width(), mat4.height(), Bitmap.Config.ARGB_8888);
                Utils.matToBitmap(mat4, bitmapCreateBitmap2);
            }
            o.e(bitmapCreateBitmap2, listA, this.b);
        }
        Log.e("TAG", "line detect time : " + (System.currentTimeMillis() - j) + "ms");
        mat4.release();
        mat2.release();
        mat6.release();
        mat.release();
        this.f8894a.release();
    }
}
