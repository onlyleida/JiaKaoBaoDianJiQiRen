.class public Lorg/tensorflow/lite/gpu/GpuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/tensorflow/lite/Delegate;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/gpu/GpuDelegate$Options;
    }
.end annotation

.annotation build Lorg/tensorflow/lite/annotations/UsedByReflection;
    value = "TFLiteSupport/model/GpuDelegateProxy"
.end annotation


# static fields
.field private static final INVALID_DELEGATE_HANDLE:J = 0x0L

.field private static final TFLITE_GPU_LIB:Ljava/lang/String; = "tensorflowlite_gpu_jni"


# instance fields
.field private delegateHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tensorflowlite_gpu_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Lorg/tensorflow/lite/annotations/UsedByReflection;
        value = "TFLiteSupport/model/GpuDelegateProxy"
    .end annotation

    .line 4
    new-instance v0, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;

    invoke-direct {v0}, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;-><init>()V

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/gpu/GpuDelegate;-><init>(Lorg/tensorflow/lite/gpu/GpuDelegate$Options;)V

    return-void
.end method

.method public constructor <init>(Lorg/tensorflow/lite/gpu/GpuDelegate$Options;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->precisionLossAllowed:Z

    iget-boolean v1, p1, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->quantizedModelsAllowed:Z

    iget p1, p1, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->inferencePreference:I

    .line 3
    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/gpu/GpuDelegate;->createDelegate(ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tensorflow/lite/gpu/GpuDelegate;->delegateHandle:J

    return-void
.end method

.method private static native createDelegate(ZZI)J
.end method

.method private static native deleteDelegate(J)V
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/tensorflow/lite/gpu/GpuDelegate;->delegateHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lorg/tensorflow/lite/gpu/GpuDelegate;->deleteDelegate(J)V

    .line 3
    iput-wide v2, p0, Lorg/tensorflow/lite/gpu/GpuDelegate;->delegateHandle:J

    :cond_0
    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/tensorflow/lite/gpu/GpuDelegate;->delegateHandle:J

    return-wide v0
.end method
