.class public Lcom/amap/api/mapcore/util/h2$a;
.super Lcom/amap/api/mapcore/util/g2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/g2;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision highp float;\n        attribute vec4 aVertex;\n        attribute vec2 aTexture;\n        uniform vec4 aMapAttribute;\n        uniform mat4 aMVPMatrix;\n        uniform mat4 aProjection;\n        uniform vec3 aInstanceOffset["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/mapcore/util/v;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "];\n        varying vec2 texture;\n        mat4 rotationMatrix(vec3 axis, float angle)\n        {\n           axis = normalize(axis);\n           float s = sin(angle);\n           float c = cos(angle);\n           float oc = 1.0 - c;\n           return mat4(oc * axis.x * axis.x + c,           oc * axis.x * axis.y - axis.z * s,  oc * axis.z * axis.x + axis.y * s,  0.0,\n                 oc * axis.x * axis.y + axis.z * s,  oc * axis.y * axis.y + c,           oc * axis.y * axis.z - axis.x * s,  0.0,\n                 oc * axis.z * axis.x - axis.y * s,  oc * axis.y * axis.z + axis.x * s,  oc * axis.z * axis.z + c,           0.0,\n                 0.0,                                0.0,                                0.0,                                1.0);\n        }\n        void main(){\n            int instance = int(aVertex.w);\n            vec3 offset_value = aInstanceOffset[instance];\n            mat4 marker_rotate_mat4 = rotationMatrix(vec3(0,0,1.0), offset_value.z * 0.01745);\n            float map_rotate = -aMapAttribute.z * 0.01745;\n            float map_tilt = aMapAttribute.w * 0.01745;\n            //tilt\u65cb\u8f6c\u77e9\u9635\n            mat4 map_tilt_mat4 = rotationMatrix(vec3(1,0,0), map_tilt);\n            //bearing\u65cb\u8f6c\u77e9\u9635\n            mat4 map_rotate_mat4 = rotationMatrix(vec3(0,0,1), map_rotate);\n                 \n            //\u65cb\u8f6c\u56fe\u7247\n            vec4 pos_1 = marker_rotate_mat4 * vec4(aVertex.xy * aMapAttribute.xy, 0,1);\n                  \n            //\u8ba9marker\u7ad9\u7acb\uff0ctilt\u65cb\u8f6c\u4e4b\u540ez\u8f74\u503c\u6709\u53ef\u80fd\u4e0d\u662f0\n            vec4 pos_2 =  map_tilt_mat4 * pos_1;\n                  \n            //\u65cb\u8f6c bearing\n            vec4 pos_3 =  map_rotate_mat4 * pos_2;\n            gl_Position = aProjection * aMVPMatrix * vec4(pos_3.xy + offset_value.xy, pos_3.z, 1.0);\n            texture = aTexture;\n        }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2$a;->e:Ljava/lang/String;

    const-string v1, "        precision highp float;\n        varying vec2 texture;\n        uniform sampler2D aTextureUnit0;\n        void main(){\n            vec4 tempColor = texture2D(aTextureUnit0, texture);\n            gl_FragColor = tempColor;\n        }"

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h2$a;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/g2;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "aMVPMatrix"

    .line 5
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g2;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$a;->h:I

    const-string v0, "aProjection"

    .line 6
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g2;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$a;->l:I

    const-string v0, "aInstanceOffset"

    .line 7
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g2;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$a;->j:I

    const-string v0, "aMapAttribute"

    .line 8
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g2;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$a;->k:I

    const-string v0, "aVertex"

    .line 9
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g2;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$a;->g:I

    const-string v0, "aTexture"

    .line 10
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/g2;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$a;->i:I

    return-void
.end method
