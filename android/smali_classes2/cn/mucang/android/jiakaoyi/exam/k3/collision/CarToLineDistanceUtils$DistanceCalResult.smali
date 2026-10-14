.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistanceCalResult"
.end annotation


# instance fields
.field public collisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field public distance:D


# direct methods
.method public constructor <init>(DLcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->distance:D

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->distance:D

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$DistanceCalResult;->collisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-void
.end method
