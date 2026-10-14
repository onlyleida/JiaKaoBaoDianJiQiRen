.class public Lcn/mucang/android/voice/interaction/speex/Speex;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mcSpeex"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native resampleDestroy()I
.end method

.method public native resampleFile(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public native resampleFrame(I[B[BII)I
.end method

.method public native resampleInit(II)I
.end method

.method public native speexDestroy()I
.end method

.method public native speexFft([B[F)I
.end method

.method public native speexInit(II)I
.end method

.method public native speexProcess([BII)I
.end method
