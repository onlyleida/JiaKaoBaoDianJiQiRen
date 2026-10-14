.class public Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public intervalSeconds:I

.field public stopBeatDiff:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->intervalSeconds:I

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->stopBeatDiff:I

    return-void
.end method
