.class public Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->start:J

    .line 4
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->end:J

    return-void
.end method

.method public static create(I)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    int-to-long v3, p0

    sub-long v3, v0, v3

    invoke-direct {v2, v3, v4, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;-><init>(JJ)V

    return-object v2
.end method
