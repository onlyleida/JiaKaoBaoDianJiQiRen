.class public final enum Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MovePose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

.field public static final enum Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

.field public static final enum TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

.field public static final enum TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    const-string v1, "TurnLeft"

    const/4 v2, 0x0

    const-string v3, "\u5de6\u8f6c"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    const-string v3, "Straight"

    const/4 v4, 0x1

    const-string v5, "\u76f4\u884c"

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    const-string v5, "TurnRight"

    const/4 v6, 0x2

    const-string v7, "\u53f3\u8f6c"

    invoke-direct {v3, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$MovePose;

    return-object v0
.end method
