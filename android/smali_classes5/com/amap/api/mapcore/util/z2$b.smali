.class public Lcom/amap/api/mapcore/util/z2$b;
.super Lcom/amap/api/mapcore/util/x2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static h:I = 0x4


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x2;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/z2$b;->g:[I

    .line 3
    iput p1, p0, Lcom/amap/api/mapcore/util/z2$b;->a:I

    .line 4
    iput p2, p0, Lcom/amap/api/mapcore/util/z2$b;->b:I

    .line 5
    iput p3, p0, Lcom/amap/api/mapcore/util/z2$b;->c:I

    .line 6
    iput p4, p0, Lcom/amap/api/mapcore/util/z2$b;->d:I

    .line 7
    iput p5, p0, Lcom/amap/api/mapcore/util/z2$b;->e:I

    .line 8
    iput p6, p0, Lcom/amap/api/mapcore/util/z2$b;->f:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z2$b;->g:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z2$b;->g:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_0
    return p5
.end method

.method private b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/mapcore/util/z2$d;
    .locals 11

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/z2$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/z2$d;-><init>(Lcom/amap/api/mapcore/util/z2$a;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2
    invoke-direct {p0, v2, v3}, Lcom/amap/api/mapcore/util/z2$b;->d(IZ)[I

    move-result-object v6

    iput-object v6, v0, Lcom/amap/api/mapcore/util/z2$d;->a:[I

    .line 3
    iget-object v9, v0, Lcom/amap/api/mapcore/util/z2$d;->b:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 4
    iget-object v3, v0, Lcom/amap/api/mapcore/util/z2$d;->b:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-gtz v3, :cond_0

    .line 5
    invoke-direct {p0, v2, v4}, Lcom/amap/api/mapcore/util/z2$b;->d(IZ)[I

    move-result-object v7

    iput-object v7, v0, Lcom/amap/api/mapcore/util/z2$d;->a:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6
    iget-object v10, v0, Lcom/amap/api/mapcore/util/z2$d;->b:[I

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 7
    iget-object p1, v0, Lcom/amap/api/mapcore/util/z2$d;->b:[I

    aget p1, p1, v4

    if-gtz p1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method private d(IZ)[I
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x3032

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/16 v8, 0x3022

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x3023

    const/16 v12, 0x3024

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    move/from16 v4, p1

    if-ne v4, v15, :cond_0

    const/16 v4, 0x11

    new-array v4, v4, [I

    aput v12, v4, v13

    .line 1
    iget v12, v0, Lcom/amap/api/mapcore/util/z2$b;->a:I

    aput v12, v4, v14

    aput v11, v4, v15

    iget v11, v0, Lcom/amap/api/mapcore/util/z2$b;->b:I

    aput v11, v4, v10

    aput v8, v4, v9

    iget v8, v0, Lcom/amap/api/mapcore/util/z2$b;->c:I

    aput v8, v4, v7

    const/16 v7, 0x3021

    aput v7, v4, v6

    iget v6, v0, Lcom/amap/api/mapcore/util/z2$b;->d:I

    aput v6, v4, v5

    const/16 v5, 0x3025

    aput v5, v4, v3

    iget v3, v0, Lcom/amap/api/mapcore/util/z2$b;->e:I

    aput v3, v4, v2

    const/16 v2, 0xa

    const/16 v3, 0x3026

    aput v3, v4, v2

    const/16 v2, 0xb

    iget v3, v0, Lcom/amap/api/mapcore/util/z2$b;->f:I

    aput v3, v4, v2

    const/16 v2, 0xc

    aput v1, v4, v2

    const/16 v1, 0xd

    aput p2, v4, v1

    const/16 v1, 0xe

    const/16 v2, 0x3040

    aput v2, v4, v1

    const/16 v1, 0xf

    sget v2, Lcom/amap/api/mapcore/util/z2$b;->h:I

    aput v2, v4, v1

    const/16 v1, 0x10

    const/16 v2, 0x3038

    aput v2, v4, v1

    return-object v4

    :cond_0
    if-eqz p2, :cond_1

    new-array v2, v2, [I

    aput v12, v2, v13

    .line 2
    iget v4, v0, Lcom/amap/api/mapcore/util/z2$b;->a:I

    aput v4, v2, v14

    aput v11, v2, v15

    iget v4, v0, Lcom/amap/api/mapcore/util/z2$b;->b:I

    aput v4, v2, v10

    aput v8, v2, v9

    iget v4, v0, Lcom/amap/api/mapcore/util/z2$b;->c:I

    aput v4, v2, v7

    aput v1, v2, v6

    aput v14, v2, v5

    const/16 v1, 0x3038

    aput v1, v2, v3

    return-object v2

    :cond_1
    new-array v1, v5, [I

    aput v12, v1, v13

    .line 3
    iget v2, v0, Lcom/amap/api/mapcore/util/z2$b;->a:I

    aput v2, v1, v14

    aput v11, v1, v15

    iget v2, v0, Lcom/amap/api/mapcore/util/z2$b;->b:I

    aput v2, v1, v10

    aput v8, v1, v9

    iget v2, v0, Lcom/amap/api/mapcore/util/z2$b;->c:I

    aput v2, v1, v7

    const/16 v2, 0x3038

    aput v2, v1, v6

    return-object v1
.end method


# virtual methods
.method public c(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .line 1
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    .line 2
    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/z2$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3026

    .line 3
    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/z2$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 4
    iget v3, p0, Lcom/amap/api/mapcore/util/z2$b;->e:I

    if-lt v9, v3, :cond_1

    iget v3, p0, Lcom/amap/api/mapcore/util/z2$b;->f:I

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/z2$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3023

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/z2$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v6, 0x3022

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/z2$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v6, 0x3021

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/amap/api/mapcore/util/z2$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 9
    iget v3, p0, Lcom/amap/api/mapcore/util/z2$b;->a:I

    if-ne v9, v3, :cond_1

    iget v3, p0, Lcom/amap/api/mapcore/util/z2$b;->b:I

    if-ne v10, v3, :cond_1

    iget v3, p0, Lcom/amap/api/mapcore/util/z2$b;->c:I

    if-ne v11, v3, :cond_1

    iget v3, p0, Lcom/amap/api/mapcore/util/z2$b;->d:I

    if-ne v2, v3, :cond_1

    return-object v8

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/z2$b;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/mapcore/util/z2$d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v3, v0, Lcom/amap/api/mapcore/util/z2$d;->a:[I

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v6, v0, Lcom/amap/api/mapcore/util/z2$d;->b:[I

    const/4 v0, 0x0

    aget v1, v6, v0

    new-array v7, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 4
    aget v5, v6, v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    invoke-virtual {p0, p1, p2, v7}, Lcom/amap/api/mapcore/util/z2$b;->c(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v2, 0x8

    .line 6
    iput v2, p0, Lcom/amap/api/mapcore/util/z2$b;->a:I

    .line 7
    iput v2, p0, Lcom/amap/api/mapcore/util/z2$b;->b:I

    .line 8
    iput v2, p0, Lcom/amap/api/mapcore/util/z2$b;->c:I

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/z2$b;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/mapcore/util/z2$d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v5, v2, Lcom/amap/api/mapcore/util/z2$d;->a:[I

    if-eqz v5, :cond_1

    .line 11
    iget-object v8, v2, Lcom/amap/api/mapcore/util/z2$d;->b:[I

    aget v1, v8, v0

    new-array v1, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 12
    aget v7, v8, v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 13
    invoke-virtual {p0, p1, p2, v1}, Lcom/amap/api/mapcore/util/z2$b;->c(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
