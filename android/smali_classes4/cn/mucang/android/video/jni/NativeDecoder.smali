.class public Lcn/mucang/android/video/jni/NativeDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/video/jni/DecoderImpl;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tnpn"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/video/jni/NativeDecoder;->loadClass()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/video/jni/NativeDecoder;->nInit()V

    return-void
.end method

.method private static native loadClass()V
.end method


# virtual methods
.method public native d([BIIJ)V
.end method

.method public native h([B)I
.end method

.method public native nInit()V
.end method

.method public native p([B)I
.end method
