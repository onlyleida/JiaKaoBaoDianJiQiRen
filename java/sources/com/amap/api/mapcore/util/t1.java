package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.RemoteException;
import android.view.animation.AnimationUtils;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.GL3DModelOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.animation.Animation;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.animation.GLAnimation;
import com.autonavi.amap.mapcore.animation.GLAnimationSet;
import com.autonavi.amap.mapcore.animation.GLTransformation;
import com.autonavi.amap.mapcore.animation.GLTranslateAnimation;
import com.autonavi.amap.mapcore.interfaces.IglModel;
import com.autonavi.base.ae.gmap.GLMapState;
import com.autonavi.base.amap.api.mapcore.BaseOverlayImp;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.mapcore.FPoint;
import com.serenegiant.glutils.ShaderConst;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class t1 extends BaseOverlayImp implements IglModel {
    private String F;
    private String G;
    private String b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ba f11183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BitmapDescriptor f11184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private IAMapDelegate f11185f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11186g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f11187h;
    private LatLng i;
    private GLAnimation j;
    private Bitmap m;
    private h2.b n;
    private float o;
    private Object p;
    private z9 u;
    private int v;
    float[] y;
    float[] z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f11182a = true;
    private float[] c = new float[16];
    private boolean k = true;
    private boolean l = true;
    private float q = 18.0f;
    private float r = -1.0f;
    private float s = BitmapDescriptorFactory.HUE_RED;
    private boolean t = false;
    private boolean w = false;
    private FPoint x = FPoint.obtain();
    Rect A = new Rect(0, 0, 0, 0);
    private int B = 0;
    private int C = 0;
    private float D = 0.5f;
    private float E = 0.5f;
    float H = 1.0f;
    private float I = -1.0f;

    public t1(z9 z9Var, GL3DModelOptions gL3DModelOptions, IAMapDelegate iAMapDelegate) {
        this.y = new float[16];
        this.z = new float[16];
        if (gL3DModelOptions == null || iAMapDelegate == null) {
            return;
        }
        this.u = z9Var;
        this.f11185f = iAMapDelegate;
        this.f11184e = gL3DModelOptions.getBitmapDescriptor();
        List<Float> textrue = gL3DModelOptions.getTextrue();
        List<Float> vertext = gL3DModelOptions.getVertext();
        this.i = gL3DModelOptions.getLatLng();
        this.o = gL3DModelOptions.getAngle();
        setModelFixedLength(gL3DModelOptions.getModelFixedLength());
        if (this.i != null) {
            IPoint iPointObtain = IPoint.obtain();
            LatLng latLng = this.i;
            GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
            this.f11186g = ((Point) iPointObtain).x;
            this.f11187h = ((Point) iPointObtain).y;
        }
        if (textrue != null && textrue.size() > 0 && vertext != null) {
            if ((vertext.size() > 0) & (this.f11184e != null)) {
                ba baVar = new ba(vertext, textrue);
                this.f11183d = baVar;
                baVar.b(this.o);
            }
        }
        this.y = new float[16];
        this.z = new float[4];
    }

    private int a(Bitmap bitmap) {
        if (bitmap != null) {
            this.m = bitmap;
        }
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, iArr[0]);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10241, 9728.0f);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10240, 9729.0f);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10242, 33071.0f);
        GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10243, 33071.0f);
        GLUtils.texImage2D(ShaderConst.GL_TEXTURE_2D, 0, this.m, 0);
        return iArr[0];
    }

    private void c(GLAnimation gLAnimation) {
        if (gLAnimation instanceof GLTranslateAnimation) {
            GLTranslateAnimation gLTranslateAnimation = (GLTranslateAnimation) gLAnimation;
            gLTranslateAnimation.mFromXDelta = this.f11186g;
            gLTranslateAnimation.mFromYDelta = this.f11187h;
            IPoint iPointObtain = IPoint.obtain();
            GLMapState.lonlat2Geo(gLTranslateAnimation.mToXDelta, gLTranslateAnimation.mToYDelta, iPointObtain);
            gLTranslateAnimation.mToXDelta = ((Point) iPointObtain).x;
            gLTranslateAnimation.mToYDelta = ((Point) iPointObtain).y;
            iPointObtain.recycle();
        }
    }

    private float e() {
        float mapPerPixelUnitLength = this.f11185f.getMapConfig().getMapPerPixelUnitLength();
        if (this.f11185f.getMapConfig().getSZ() < this.q) {
            return mapPerPixelUnitLength / this.r;
        }
        this.I = mapPerPixelUnitLength;
        return mapPerPixelUnitLength / mapPerPixelUnitLength;
    }

    private float f() {
        return (this.f11185f.getMapConfig().getMapPerPixelUnitLength() * this.s) / this.f11183d.a();
    }

    private void g() {
        GLAnimation gLAnimation;
        if (this.k || (gLAnimation = this.j) == null || gLAnimation.hasEnded()) {
            this.k = true;
            return;
        }
        h();
        GLTransformation gLTransformation = new GLTransformation();
        this.j.getTransformation(AnimationUtils.currentAnimationTimeMillis(), gLTransformation);
        if (Double.isNaN(gLTransformation.x) || Double.isNaN(gLTransformation.y)) {
            return;
        }
        double d2 = gLTransformation.x;
        double d3 = gLTransformation.y;
        this.f11186g = (int) d2;
        this.f11187h = (int) d3;
    }

    private void h() {
        IAMapDelegate iAMapDelegate = this.f11185f;
        if (iAMapDelegate != null) {
            iAMapDelegate.setRunLowFrame(false);
        }
    }

    public void b() {
        try {
            if (this.f11183d != null) {
                if (this.n == null) {
                    this.n = (h2.b) this.f11185f.getGLShader(5);
                }
                if (this.r == -1.0f) {
                    this.r = this.f11185f.getUnitLengthByZoom((int) this.q);
                }
                if (this.f11182a) {
                    int iA = a(this.f11184e.getBitmap());
                    this.v = iA;
                    this.f11183d.c(iA);
                    this.f11182a = false;
                }
                g();
                float sx = this.f11186g - ((int) this.f11185f.getMapConfig().getSX());
                ((PointF) this.x).x = sx;
                float sy = this.f11187h - ((int) this.f11185f.getMapConfig().getSY());
                ((PointF) this.x).y = sy;
                Matrix.setIdentityM(this.c, 0);
                Matrix.multiplyMM(this.c, 0, this.f11185f.getProjectionMatrix(), 0, this.f11185f.getViewMatrix(), 0);
                Matrix.translateM(this.c, 0, sx, sy, BitmapDescriptorFactory.HUE_RED);
                if (this.t) {
                    this.H = f();
                } else {
                    this.H = e();
                }
                float[] fArr = this.c;
                float f2 = this.H;
                Matrix.scaleM(fArr, 0, f2, f2, f2);
                this.f11183d.d(this.n, this.c);
                if (this.w) {
                    this.f11185f.redrawInfoWindow();
                    this.w = false;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean checkInBounds() {
        return this.f11185f.getMapConfig().getGeoRectangle().contains(this.f11186g, this.f11187h);
    }

    public void d(String str) {
        this.b = str;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void destroy() {
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            r3.g0(bitmap);
        }
        z9 z9Var = this.u;
        if (z9Var != null) {
            z9Var.c(this.v);
        }
        ba baVar = this.f11183d;
        if (baVar != null) {
            baVar.f();
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public IPoint getAnchor() {
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public BitmapDescriptor getBitmapDescriptor() {
        return this.f11184e;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public FPoint getGeoPosition() {
        return FPoint.obtain(this.f11186g, this.f11187h);
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getHeight() {
        return (int) ((this.f11183d.a() * this.H) / this.f11185f.getMapConfig().getMapPerPixelUnitLength());
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public String getId() {
        return this.b;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getInfoWindowOffsetX() {
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getInfoWindowOffsetY() {
        return 0;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public Object getObject() {
        return this.p;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public LatLng getPosition() {
        return this.i;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getRealInfoWindowOffsetX() {
        return this.B;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getRealInfoWindowOffsetY() {
        return this.C;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public LatLng getRealPosition() {
        return null;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public Rect getRect() {
        try {
            GLMapState mapProjection = this.f11185f.getMapProjection();
            int width = getWidth();
            int height = getHeight();
            FPoint fPointObtain = FPoint.obtain();
            mapProjection.p20ToScreenPoint(this.f11186g, this.f11187h, fPointObtain);
            Matrix.setIdentityM(this.y, 0);
            Matrix.rotateM(this.y, 0, -this.o, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            Matrix.rotateM(this.y, 0, this.f11185f.getMapConfig().getSC(), 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            Matrix.rotateM(this.y, 0, this.f11185f.getMapConfig().getSR(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
            float[] fArr = new float[4];
            float[] fArr2 = this.z;
            float f2 = -width;
            fArr2[0] = this.D * f2;
            float f3 = height;
            fArr2[1] = this.E * f3;
            fArr2[2] = 0.0f;
            fArr2[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.y, 0, fArr2, 0);
            Rect rect = this.A;
            float f4 = ((PointF) fPointObtain).x;
            int i = (int) (fArr[0] + f4);
            float f5 = ((PointF) fPointObtain).y;
            rect.set(i, (int) (f5 - fArr[1]), (int) (f4 + fArr[0]), (int) (f5 - fArr[1]));
            float[] fArr3 = this.z;
            float f6 = width;
            fArr3[0] = (1.0f - this.D) * f6;
            fArr3[1] = f3 * this.E;
            fArr3[2] = 0.0f;
            fArr3[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.y, 0, fArr3, 0);
            this.A.union((int) (((PointF) fPointObtain).x + fArr[0]), (int) (((PointF) fPointObtain).y - fArr[1]));
            float[] fArr4 = this.z;
            fArr4[0] = f6 * (1.0f - this.D);
            float f7 = -height;
            fArr4[1] = (1.0f - this.E) * f7;
            fArr4[2] = 0.0f;
            fArr4[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.y, 0, fArr4, 0);
            this.A.union((int) (((PointF) fPointObtain).x + fArr[0]), (int) (((PointF) fPointObtain).y - fArr[1]));
            float[] fArr5 = this.z;
            fArr5[0] = f2 * this.D;
            fArr5[1] = f7 * (1.0f - this.E);
            fArr5[2] = 0.0f;
            fArr5[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.y, 0, fArr5, 0);
            this.A.union((int) (((PointF) fPointObtain).x + fArr[0]), (int) (((PointF) fPointObtain).y - fArr[1]));
            this.B = this.A.centerX() - ((int) ((PointF) fPointObtain).x);
            this.C = this.A.top - ((int) ((PointF) fPointObtain).y);
            fPointObtain.recycle();
            return this.A;
        } catch (Throwable th) {
            e6.r(th, "MarkerDelegateImp", "getRect");
            th.printStackTrace();
            return new Rect(0, 0, 0, 0);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public float getRotateAngle() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public String getSnippet() {
        return this.F;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public String getTitle() {
        return this.G;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public int getWidth() {
        return (int) ((this.f11183d.e() * this.H) / this.f11185f.getMapConfig().getMapPerPixelUnitLength());
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean isContains() {
        return this.u.e(this);
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean isDestory() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean isInfoWindowEnable() {
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public boolean isViewMode() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public boolean isVisible() {
        return this.l;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public boolean remove() {
        IAMapDelegate iAMapDelegate = this.f11185f;
        if (iAMapDelegate == null) {
            return true;
        }
        iAMapDelegate.removeGLModel(this.b);
        return true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setAnimation(Animation animation) {
        if (animation == null) {
            return;
        }
        this.j = animation.glAnimation;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setGeoPoint(IPoint iPoint) {
        if (iPoint != null) {
            this.f11186g = ((Point) iPoint).x;
            this.f11187h = ((Point) iPoint).y;
            DPoint dPointObtain = DPoint.obtain();
            GLMapState.geo2LonLat(this.f11186g, this.f11187h, dPointObtain);
            this.i = new LatLng(dPointObtain.y, dPointObtain.x, false);
            dPointObtain.recycle();
        }
        this.f11185f.setRunLowFrame(false);
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public void setInfoWindowOffset(int i, int i2) throws RemoteException {
    }

    @Override // com.autonavi.base.amap.api.mapcore.InfoWindowCalculate
    public void setInfoWindowShown(boolean z) {
        this.w = true;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IglModel
    public void setModelFixedLength(int i) {
        if (i > 0) {
            this.s = i;
            this.t = true;
        } else {
            this.s = BitmapDescriptorFactory.HUE_RED;
            this.t = false;
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setObject(Object obj) {
        this.p = obj;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setPosition(LatLng latLng) {
        if (latLng != null) {
            this.i = latLng;
            IPoint iPointObtain = IPoint.obtain();
            GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, iPointObtain);
            this.f11186g = ((Point) iPointObtain).x;
            this.f11187h = ((Point) iPointObtain).y;
            iPointObtain.recycle();
        }
        this.w = true;
        this.f11185f.setRunLowFrame(false);
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setRotateAngle(float f2) {
        this.o = f2;
        if (this.f11183d != null) {
            this.f11183d.b(this.o - this.f11185f.getMapConfig().getSR());
        }
        this.w = true;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setSnippet(String str) {
        this.F = str;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setTitle(String str) {
        this.G = str;
    }

    @Override // com.autonavi.base.amap.api.mapcore.BaseOverlayImp, com.autonavi.amap.mapcore.interfaces.IglModel
    public void setVisible(boolean z) {
        this.l = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IglModel
    public void setZoomLimit(float f2) {
        this.q = f2;
        this.r = this.f11185f.getUnitLengthByZoom((int) f2);
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IglModel
    public void showInfoWindow() {
        try {
            this.f11185f.showInfoWindow(this);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IglModel
    public boolean startAnimation() {
        GLAnimation gLAnimation = this.j;
        if (gLAnimation != null) {
            if (gLAnimation instanceof GLAnimationSet) {
                GLAnimationSet gLAnimationSet = (GLAnimationSet) gLAnimation;
                for (GLAnimation gLAnimation2 : gLAnimationSet.getAnimations()) {
                    c(gLAnimation2);
                    gLAnimation2.setDuration(gLAnimationSet.getDuration());
                }
            } else {
                c(gLAnimation);
            }
            this.k = false;
            this.j.start();
        }
        return false;
    }
}
