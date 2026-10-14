package com.amap.api.maps.model.particle;

import com.autonavi.base.amap.mapcore.AMapNativeParticleSystem;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class RandomColorBetWeenTwoConstants extends ColorGenerate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f11536a;
    private float a1;
    private float b;
    private float b1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f11537g;
    private float g1;
    private float r;
    private float r1;
    private float[] color = {1.0f, 1.0f, 1.0f, 1.0f};
    private Random random = new Random();

    public RandomColorBetWeenTwoConstants(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.r = f2 / 255.0f;
        this.f11537g = f3 / 255.0f;
        this.b = f4 / 255.0f;
        this.f11536a = f5 / 255.0f;
        this.r1 = f6 / 255.0f;
        this.g1 = f7 / 255.0f;
        this.b1 = f8 / 255.0f;
        this.a1 = f9 / 255.0f;
        createNativeInstace();
        this.type = 0;
    }

    @Override // com.autonavi.amap.mapcore.AbstractNativeInstance
    public void createNativeInstace() {
        try {
            this.nativeInstance = AMapNativeParticleSystem.nativeCreateRandomColorBetWeenTwoConstants(this.r, this.f11537g, this.b, this.f11536a, this.r1, this.g1, this.b1, this.a1);
        } catch (Throwable unused) {
        }
    }

    @Override // com.amap.api.maps.model.particle.ColorGenerate
    public float[] getColor() {
        float[] fArr = this.color;
        float fNextFloat = this.random.nextFloat();
        float f2 = this.r1;
        float f3 = this.r;
        fArr[0] = (fNextFloat * (f2 - f3)) + f3;
        float[] fArr2 = this.color;
        float fNextFloat2 = this.random.nextFloat();
        float f4 = this.g1;
        float f5 = this.f11537g;
        fArr2[1] = (fNextFloat2 * (f4 - f5)) + f5;
        float[] fArr3 = this.color;
        float fNextFloat3 = this.random.nextFloat();
        float f6 = this.b1;
        float f7 = this.b;
        fArr3[2] = (fNextFloat3 * (f6 - f7)) + f7;
        float[] fArr4 = this.color;
        float fNextFloat4 = this.random.nextFloat();
        float f8 = this.a1;
        float f9 = this.f11536a;
        fArr4[3] = (fNextFloat4 * (f8 - f9)) + f9;
        return this.color;
    }
}
