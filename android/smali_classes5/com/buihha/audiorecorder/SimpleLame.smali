.class public Lcom/buihha/audiorecorder/SimpleLame;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mp3lame"

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

.method public static a(IIII)V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/buihha/audiorecorder/SimpleLame;->init(IIIII)V

    return-void
.end method

.method public static native close()V
.end method

.method public static native encode([S[SI[B)I
.end method

.method public static native flush([B)I
.end method

.method public static native init(IIIII)V
.end method
