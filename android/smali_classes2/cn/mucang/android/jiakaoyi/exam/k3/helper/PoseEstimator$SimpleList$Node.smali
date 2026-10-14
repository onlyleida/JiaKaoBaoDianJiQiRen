.class Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field next:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field pre:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;Ljava/lang/Object;Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node<",
            "TT;>;TT;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->item:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->pre:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->next:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    return-void
.end method
