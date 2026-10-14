.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public offset:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;->offset:D

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;->offset:D

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
