package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Build;
import android.os.RemoteException;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.particle.ColorGenerate;
import com.amap.api.maps.model.particle.ParticleEmissionModule;
import com.amap.api.maps.model.particle.ParticleOverLifeModule;
import com.amap.api.maps.model.particle.ParticleOverlayOptions;
import com.amap.api.maps.model.particle.ParticleShapeModule;
import com.amap.api.maps.model.particle.VelocityGenerate;
import com.autonavi.amap.api.mapcore.overlays.IParticleLatyer;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate;
import com.autonavi.base.amap.mapcore.AMapNativeParticleSystem;
import com.autonavi.base.amap.mapcore.MapConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class z1 implements IParticleLatyer, IOverlayDelegate {
    private h2 b;
    private r c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f11421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private BitmapDescriptor f11422g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f11418a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11419d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f11420e = 1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f11423h = false;
    private List<ha> i = new ArrayList();
    private int j = 0;
    private ParticleOverlayOptions k = new ParticleOverlayOptions();
    private boolean l = false;
    float m = 1.0f;
    int n = 0;
    int o = 0;
    private float p = -1.0f;
    private float q = -1.0f;
    private float[] r = new float[16];
    private float[] s = new float[16];
    private float[] t = new float[16];

    public z1(r rVar) {
        this.c = rVar;
        try {
            this.f11421f = getId();
        } catch (RemoteException e2) {
            e6.r(e2, "ParticleLayerDelegateImp", "create");
            e2.printStackTrace();
        }
    }

    private int a() {
        if (this.f11423h) {
            return this.j;
        }
        int iB = b(Build.VERSION.SDK_INT >= 12, this.f11422g);
        this.f11423h = true;
        return iB;
    }

    private int b(boolean z, BitmapDescriptor bitmapDescriptor) {
        ha haVar;
        e();
        if (z) {
            haVar = this.c.a(bitmapDescriptor);
            if (haVar != null) {
                int iU = haVar.u();
                c(haVar);
                return iU;
            }
        } else {
            haVar = null;
        }
        int iF = 0;
        if (haVar == null) {
            haVar = new ha(bitmapDescriptor, 0);
        }
        Bitmap bitmap = bitmapDescriptor.getBitmap();
        if (bitmap != null && !bitmap.isRecycled()) {
            iF = f();
            haVar.b(iF);
            if (z) {
                this.c.A().addTextureItem(haVar);
            }
            c(haVar);
            r3.c0(iF, bitmap, true);
        }
        return iF;
    }

    private void c(ha haVar) {
        if (haVar != null) {
            this.i.add(haVar);
            haVar.w();
        }
    }

    private void e() {
        r rVar;
        List<ha> list = this.i;
        if (list != null) {
            for (ha haVar : list) {
                if (haVar != null && (rVar = this.c) != null) {
                    rVar.o(haVar);
                }
            }
            this.i.clear();
        }
    }

    private int f() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    private void g() {
        if (this.f11418a != 0) {
            setMaxParticles(this.k.getMaxParticles());
            setDuration(this.k.getDuration());
            setLoop(this.k.isLoop());
            setPreWram(true);
            setParticleLifeTime(this.k.getParticleLifeTime());
            setParticleStartSpeed(this.k.getParticleStartSpeed());
            if (this.k.getParticleEmissionModule() != null) {
                setParticleEmission(this.k.getParticleEmissionModule());
            }
            if (this.k.getParticleShapeModule() != null) {
                setParticleShapeModule(this.k.getParticleShapeModule());
            }
            if (this.k.getParticleStartColor() != null) {
                setStartColor(this.k.getParticleStartColor());
            }
            if (this.k.getParticleOverLifeModule() != null) {
                setParticleOverLifeModule(this.k.getParticleOverLifeModule());
            }
            setStartParticleSize(this.k.getStartParticleW(), this.k.getstartParticleH());
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean calMapFPoint() throws RemoteException {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean checkInBounds() {
        return true;
    }

    public void d(ParticleOverlayOptions particleOverlayOptions) {
        synchronized (this) {
            if (particleOverlayOptions != null) {
                setCustomTexture(particleOverlayOptions.getIcon());
                this.k.setMaxParticles(particleOverlayOptions.getMaxParticles());
                this.k.setLoop(particleOverlayOptions.isLoop());
                this.k.setDuration(particleOverlayOptions.getDuration());
                this.k.setParticleLifeTime(particleOverlayOptions.getParticleLifeTime());
                this.k.setParticleEmissionModule(particleOverlayOptions.getParticleEmissionModule());
                this.k.setParticleShapeModule(particleOverlayOptions.getParticleShapeModule());
                this.k.setParticleStartSpeed(particleOverlayOptions.getParticleStartSpeed());
                this.k.setParticleStartColor(particleOverlayOptions.getParticleStartColor());
                this.k.setParticleOverLifeModule(particleOverlayOptions.getParticleOverLifeModule());
                this.k.setStartParticleSize(particleOverlayOptions.getStartParticleW(), particleOverlayOptions.getstartParticleH());
                this.k.zIndex(particleOverlayOptions.getZIndex());
                this.f11420e = this.k.getZIndex();
                this.k.setVisible(particleOverlayOptions.isVisibile());
                this.f11419d = this.k.isVisibile();
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer, com.autonavi.amap.mapcore.interfaces.IOverlay
    public void destroy() {
        Bitmap bitmap;
        List<ha> list = this.i;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < this.i.size(); i++) {
                ha haVar = this.i.get(i);
                if (haVar != null) {
                    r rVar = this.c;
                    if (rVar != null) {
                        rVar.o(haVar);
                    }
                    if (this.c.A() != null) {
                        this.c.A().removeTextureItem(haVar.z());
                    }
                }
            }
            this.i.clear();
        }
        BitmapDescriptor bitmapDescriptor = this.f11422g;
        if (bitmapDescriptor != null && (bitmap = bitmapDescriptor.getBitmap()) != null) {
            r3.g0(bitmap);
            this.f11422g = null;
        }
        long j = this.f11418a;
        if (j != 0) {
            AMapNativeParticleSystem.nativeDestroy(j);
        }
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public void draw(MapConfig mapConfig) throws RemoteException {
        float f2;
        float f3;
        h2 h2Var;
        if (this.b == null) {
            this.b = this.c.t();
        }
        if (this.b == null) {
            return;
        }
        if (this.f11418a == 0) {
            long jNativeCreate = AMapNativeParticleSystem.nativeCreate();
            this.f11418a = jNativeCreate;
            if (jNativeCreate != 0 && (h2Var = this.b) != null) {
                AMapNativeParticleSystem.nativeSetGLShaderManager(jNativeCreate, h2Var.a());
            }
        }
        if (this.f11418a != 0) {
            synchronized (this) {
                if (this.l) {
                    g();
                    this.l = false;
                }
            }
            int iA = a();
            this.j = iA;
            if (iA == 0) {
                return;
            }
            AMapNativeParticleSystem.nativeSetTextureId(this.f11418a, iA);
            r rVar = this.c;
            if (rVar != null) {
                rVar.q(false);
            }
            if (this.n != mapConfig.getMapWidth() || this.o != mapConfig.getMapHeight()) {
                this.n = mapConfig.getMapWidth();
                int mapHeight = mapConfig.getMapHeight();
                this.o = mapHeight;
                int i = this.n;
                if (i > mapHeight) {
                    f2 = i;
                    f3 = mapHeight;
                } else {
                    f2 = mapHeight;
                    f3 = i;
                }
                float f4 = f2 / f3;
                this.m = f4;
                if (i > mapHeight) {
                    this.p = -f4;
                    this.q = 1.0f;
                } else {
                    this.p = -1.0f;
                    this.q = f4;
                }
                float[] fArr = this.r;
                float f5 = this.p;
                float f6 = this.q;
                Matrix.orthoM(fArr, 0, f5, -f5, -f6, f6, 3.0f, 7.0f);
                Matrix.setLookAtM(this.s, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 3.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
            }
            Matrix.multiplyMM(this.t, 0, this.r, 0, this.s, 0);
            Matrix.translateM(this.t, 0, this.p, this.q, BitmapDescriptorFactory.HUE_RED);
            Matrix.scaleM(this.t, 0, Math.abs(this.p * 2.0f) / this.n, Math.abs(this.q * 2.0f) / this.o, BitmapDescriptorFactory.HUE_RED);
            AMapNativeParticleSystem.nativeRender(this.f11418a, (float[]) this.t.clone(), mapConfig.getProjectionMatrix(), (int) mapConfig.getSX(), (int) mapConfig.getSY(), mapConfig.getSZ(), this.n, this.o);
        }
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        return false;
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public int getCurrentParticleNum() {
        long j = this.f11418a;
        if (j != 0) {
            return AMapNativeParticleSystem.getCurrentParticleNum(j);
        }
        return 0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public String getId() throws RemoteException {
        if (this.f11421f == null) {
            this.f11421f = this.c.l("Particle");
        }
        return this.f11421f;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public float getZIndex() throws RemoteException {
        return this.f11420e;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public int hashCodeRemote() throws RemoteException {
        return 0;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isAboveMaskLayer() {
        return false;
    }

    @Override // com.autonavi.base.amap.api.mapcore.overlays.IOverlayDelegate
    public boolean isDrawFinish() {
        return false;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public boolean isVisible() throws RemoteException {
        return this.f11419d;
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void pause() {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void remove() throws RemoteException {
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setAboveMaskLayer(boolean z) {
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setCustomTexture(BitmapDescriptor bitmapDescriptor) {
        if (bitmapDescriptor == null) {
            return;
        }
        synchronized (this) {
            if (bitmapDescriptor.equals(this.f11422g)) {
                return;
            }
            this.f11423h = false;
            this.f11422g = bitmapDescriptor;
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setDuration(long j) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setDuration(j);
        }
        long j2 = this.f11418a;
        if (j2 != 0) {
            AMapNativeParticleSystem.setDuration(j2, j);
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setLoop(boolean z) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setLoop(z);
        }
        long j = this.f11418a;
        if (j != 0) {
            AMapNativeParticleSystem.setLoop(j, z);
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setMaxParticles(int i) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setMaxParticles(i);
        }
        long j = this.f11418a;
        if (j != 0) {
            AMapNativeParticleSystem.setMaxParticles(j, i);
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setParticleEmission(ParticleEmissionModule particleEmissionModule) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setParticleEmissionModule(particleEmissionModule);
        }
        if (this.f11418a != 0 && particleEmissionModule != null) {
            if (particleEmissionModule.getNativeInstance() == 0) {
                particleEmissionModule.createNativeInstace();
            }
            AMapNativeParticleSystem.setParticleEmission(this.f11418a, particleEmissionModule.getNativeInstance());
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setParticleLifeTime(long j) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setParticleLifeTime(j);
        }
        long j2 = this.f11418a;
        if (j2 != 0) {
            AMapNativeParticleSystem.setParticleLifeTime(j2, j);
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setParticleOverLifeModule(ParticleOverLifeModule particleOverLifeModule) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setParticleOverLifeModule(particleOverLifeModule);
        }
        if (this.f11418a != 0 && particleOverLifeModule != null) {
            if (particleOverLifeModule.getNativeInstance() == 0) {
                particleOverLifeModule.createNativeInstace();
            }
            AMapNativeParticleSystem.setParticleOverLifeModule(this.f11418a, particleOverLifeModule.getNativeInstance());
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setParticleShapeModule(ParticleShapeModule particleShapeModule) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setParticleShapeModule(particleShapeModule);
        }
        if (this.f11418a != 0 && particleShapeModule != null) {
            if (particleShapeModule.getNativeInstance() == 0) {
                particleShapeModule.createNativeInstace();
            }
            AMapNativeParticleSystem.setParticleShapeModule(this.f11418a, particleShapeModule.getNativeInstance());
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setParticleStartSpeed(VelocityGenerate velocityGenerate) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setParticleStartSpeed(velocityGenerate);
        }
        if (this.f11418a != 0 && velocityGenerate != null) {
            if (velocityGenerate.getNativeInstance() == 0) {
                velocityGenerate.createNativeInstace();
            }
            AMapNativeParticleSystem.setParticleStartSpeed(this.f11418a, velocityGenerate.getNativeInstance());
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setPreWram(boolean z) {
        long j = this.f11418a;
        if (j != 0) {
            AMapNativeParticleSystem.setPreWram(j, z);
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setStartColor(ColorGenerate colorGenerate) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setParticleStartColor(colorGenerate);
        }
        if (this.f11418a != 0 && colorGenerate != null) {
            if (colorGenerate.getNativeInstance() == 0) {
                colorGenerate.createNativeInstace();
            }
            AMapNativeParticleSystem.setStartColor(this.f11418a, colorGenerate.getNativeInstance());
        } else if (this.k != null) {
            synchronized (this) {
                this.l = true;
            }
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void setStartParticleSize(int i, int i2) {
        ParticleOverlayOptions particleOverlayOptions = this.k;
        if (particleOverlayOptions != null) {
            particleOverlayOptions.setStartParticleSize(i, i2);
        }
        long j = this.f11418a;
        if (j != 0) {
            AMapNativeParticleSystem.setStartParticleSize(j, i, i2);
        }
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer, com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setVisible(boolean z) throws RemoteException {
        this.f11419d = z;
    }

    @Override // com.autonavi.amap.mapcore.interfaces.IOverlay
    public void setZIndex(float f2) throws RemoteException {
        this.f11420e = f2;
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void start() {
    }

    @Override // com.autonavi.amap.api.mapcore.overlays.IParticleLatyer
    public void stop() {
    }
}
