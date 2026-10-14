.class public Lcom/serenegiant/glutils/EGLBase10$Config;
.super Lcom/serenegiant/glutils/EGLBase$IConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/EGLBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;


# direct methods
.method private constructor <init>(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/serenegiant/glutils/EGLBase$IConfig;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/serenegiant/glutils/EGLBase10$Config;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/microedition/khronos/egl/EGLConfig;Lcom/serenegiant/glutils/EGLBase10$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/glutils/EGLBase10$Config;-><init>(Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method
