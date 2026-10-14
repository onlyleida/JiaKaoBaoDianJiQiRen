package com.amap.api.mapcore.util;

import android.opengl.GLES20;
import com.autonavi.base.amap.mapcore.gles.AMapNativeGLShaderManager;

/* JADX INFO: loaded from: classes5.dex */
public class h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f10837a;
    private g b;
    private c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f10838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e f10839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f10840f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f10841g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f10842h;

    public static class a extends g2 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f10843e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f10844f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10845g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10846h;
        public int i;
        public int j;
        public int k;
        public int l;

        public a() {
            String str = "precision highp float;\n        attribute vec4 aVertex;\n        attribute vec2 aTexture;\n        uniform vec4 aMapAttribute;\n        uniform mat4 aMVPMatrix;\n        uniform mat4 aProjection;\n        uniform vec3 aInstanceOffset[" + v.l + "];\n        varying vec2 texture;\n        mat4 rotationMatrix(vec3 axis, float angle)\n        {\n           axis = normalize(axis);\n           float s = sin(angle);\n           float c = cos(angle);\n           float oc = 1.0 - c;\n           return mat4(oc * axis.x * axis.x + c,           oc * axis.x * axis.y - axis.z * s,  oc * axis.z * axis.x + axis.y * s,  0.0,\n                 oc * axis.x * axis.y + axis.z * s,  oc * axis.y * axis.y + c,           oc * axis.y * axis.z - axis.x * s,  0.0,\n                 oc * axis.z * axis.x - axis.y * s,  oc * axis.y * axis.z + axis.x * s,  oc * axis.z * axis.z + c,           0.0,\n                 0.0,                                0.0,                                0.0,                                1.0);\n        }\n        void main(){\n            int instance = int(aVertex.w);\n            vec3 offset_value = aInstanceOffset[instance];\n            mat4 marker_rotate_mat4 = rotationMatrix(vec3(0,0,1.0), offset_value.z * 0.01745);\n            float map_rotate = -aMapAttribute.z * 0.01745;\n            float map_tilt = aMapAttribute.w * 0.01745;\n            //tilt旋转矩阵\n            mat4 map_tilt_mat4 = rotationMatrix(vec3(1,0,0), map_tilt);\n            //bearing旋转矩阵\n            mat4 map_rotate_mat4 = rotationMatrix(vec3(0,0,1), map_rotate);\n                 \n            //旋转图片\n            vec4 pos_1 = marker_rotate_mat4 * vec4(aVertex.xy * aMapAttribute.xy, 0,1);\n                  \n            //让marker站立，tilt旋转之后z轴值有可能不是0\n            vec4 pos_2 =  map_tilt_mat4 * pos_1;\n                  \n            //旋转 bearing\n            vec4 pos_3 =  map_rotate_mat4 * pos_2;\n            gl_Position = aProjection * aMVPMatrix * vec4(pos_3.xy + offset_value.xy, pos_3.z, 1.0);\n            texture = aTexture;\n        }";
            this.f10843e = str;
            this.f10844f = "        precision highp float;\n        varying vec2 texture;\n        uniform sampler2D aTextureUnit0;\n        void main(){\n            vec4 tempColor = texture2D(aTextureUnit0, texture);\n            gl_FragColor = tempColor;\n        }";
            if (d(str, "        precision highp float;\n        varying vec2 texture;\n        uniform sampler2D aTextureUnit0;\n        void main(){\n            vec4 tempColor = texture2D(aTextureUnit0, texture);\n            gl_FragColor = tempColor;\n        }")) {
                this.f10846h = h("aMVPMatrix");
                this.l = h("aProjection");
                this.j = h("aInstanceOffset");
                this.k = h("aMapAttribute");
                this.f10845g = e("aVertex");
                this.i = e("aTexture");
            }
        }
    }

    public static class b extends g2 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f10847e = "precision highp float;\n        attribute vec3 aVertex;//顶点数组,三维坐标\n        attribute vec2 aTexture;\n        uniform mat4 aMVPMatrix;//mvp矩阵\n        varying vec2 texture;//\n        void main(){\n            gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n            texture = aTexture;\n        }";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f10848f = "        precision highp float;\n        varying vec2 texture;//\n        uniform sampler2D aTextureUnit0;//纹理id\n        void main(){\n            gl_FragColor = texture2D(aTextureUnit0, texture);\n        }";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10849g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10850h;
        public int i;

        public b() {
            if (d("precision highp float;\n        attribute vec3 aVertex;//顶点数组,三维坐标\n        attribute vec2 aTexture;\n        uniform mat4 aMVPMatrix;//mvp矩阵\n        varying vec2 texture;//\n        void main(){\n            gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n            texture = aTexture;\n        }", "        precision highp float;\n        varying vec2 texture;//\n        uniform sampler2D aTextureUnit0;//纹理id\n        void main(){\n            gl_FragColor = texture2D(aTextureUnit0, texture);\n        }")) {
                this.f10849g = GLES20.glGetAttribLocation(this.f10808a, "aVertex");
                this.i = GLES20.glGetAttribLocation(this.f10808a, "aTexture");
                this.f10850h = GLES20.glGetUniformLocation(this.f10808a, "aMVPMatrix");
            }
        }
    }

    public static class c extends g2 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f10851e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10852f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10853g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10854h;
        public int i;

        c(String str) {
            if (c(str)) {
                this.f10851e = h("aMVP");
                this.f10852f = e("aVertex");
                this.f10853g = e("aTextureCoord");
                this.f10854h = h("aTransform");
                this.i = h("aColor");
            }
        }
    }

    public static class d extends g2 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f10855e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10856f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10857g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f10858h;
        public int i;

        d(String str) {
            if (c(str)) {
                this.f10855e = h("aMVP");
                z2.i("getUniform");
                this.i = h("aMapBearing");
                this.f10856f = e("aVertex");
                this.f10857g = e("aTextureCoord");
                this.f10858h = e("aBearingTiltAlpha");
            }
        }
    }

    public static class e extends g2 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f10859e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10860f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10861g;

        e(String str) {
            if (c(str)) {
                this.f10859e = h("aMVPMatrix");
                this.f10861g = h("aColor");
                this.f10860f = e("aVertex");
            }
        }
    }

    public static class f extends e {
        f(String str) {
            super(str);
        }
    }

    public static class g extends g2 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f10862e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10863f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10864g;

        g(String str) {
            if (c(str)) {
                this.f10862e = h("aMVP");
                this.f10863f = e("aVertex");
                this.f10864g = e("aTextureCoord");
            }
        }
    }

    public h2() {
        this.f10842h = 0L;
        this.f10842h = AMapNativeGLShaderManager.nativeCreateGLShaderManager();
    }

    private synchronized g2 d() {
        if (this.f10837a == null) {
            this.f10837a = new d("texture_normal.glsl");
        }
        return this.f10837a;
    }

    private synchronized g2 e() {
        if (this.b == null) {
            this.b = new g("texture.glsl");
        }
        return this.b;
    }

    private synchronized g2 f() {
        if (this.c == null) {
            this.c = new c("texture_layer.glsl");
        }
        return this.c;
    }

    private synchronized g2 g() {
        if (this.f10838d == null) {
            this.f10838d = new e("point.glsl");
        }
        return this.f10838d;
    }

    private synchronized g2 h() {
        if (this.f10839e == null) {
            this.f10839e = new f("point_2.glsl");
        }
        return this.f10839e;
    }

    private synchronized a i() {
        if (this.f10840f == null) {
            this.f10840f = new a();
        }
        return this.f10840f;
    }

    private synchronized g2 j() {
        if (this.f10841g == null) {
            this.f10841g = new b();
        }
        return this.f10841g;
    }

    public long a() {
        return this.f10842h;
    }

    public g2 b(int i) {
        switch (i) {
            case 0:
                return e();
            case 1:
                return d();
            case 2:
                return f();
            case 3:
                return g();
            case 4:
                return i();
            case 5:
                return j();
            case 6:
                return h();
            default:
                return null;
        }
    }

    public synchronized void c() {
        d dVar = this.f10837a;
        if (dVar != null) {
            dVar.g();
            this.f10837a = null;
        }
        g gVar = this.b;
        if (gVar != null) {
            gVar.g();
            this.b = null;
        }
        c cVar = this.c;
        if (cVar != null) {
            cVar.g();
            this.c = null;
        }
        e eVar = this.f10838d;
        if (eVar != null) {
            eVar.g();
            this.f10838d = null;
        }
        e eVar2 = this.f10839e;
        if (eVar2 != null) {
            eVar2.g();
            this.f10839e = null;
        }
        long j = this.f10842h;
        if (j != 0) {
            AMapNativeGLShaderManager.nativeDestroyGLShaderManager(j);
            this.f10842h = 0L;
        }
    }
}
