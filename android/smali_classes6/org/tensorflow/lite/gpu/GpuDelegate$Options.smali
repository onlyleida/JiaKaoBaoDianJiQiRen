.class public final Lorg/tensorflow/lite/gpu/GpuDelegate$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/gpu/GpuDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# static fields
.field public static final INFERENCE_PREFERENCE_FAST_SINGLE_ANSWER:I = 0x0

.field public static final INFERENCE_PREFERENCE_SUSTAINED_SPEED:I = 0x1


# instance fields
.field inferencePreference:I

.field precisionLossAllowed:Z

.field quantizedModelsAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->precisionLossAllowed:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->quantizedModelsAllowed:Z

    .line 4
    iput v0, p0, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->inferencePreference:I

    return-void
.end method


# virtual methods
.method public setInferencePreference(I)Lorg/tensorflow/lite/gpu/GpuDelegate$Options;
    .locals 0

    .line 1
    iput p1, p0, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->inferencePreference:I

    return-object p0
.end method

.method public setPrecisionLossAllowed(Z)Lorg/tensorflow/lite/gpu/GpuDelegate$Options;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->precisionLossAllowed:Z

    return-object p0
.end method

.method public setQuantizedModelsAllowed(Z)Lorg/tensorflow/lite/gpu/GpuDelegate$Options;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/tensorflow/lite/gpu/GpuDelegate$Options;->quantizedModelsAllowed:Z

    return-object p0
.end method
