.class Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;
    }
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
.field first:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field last:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->size:I

    return-void
.end method


# virtual methods
.method addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->first:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;Ljava/lang/Object;Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;)V

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->first:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    if-nez v0, :cond_0

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->last:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->pre:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    .line 6
    :goto_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->size:I

    return-void
.end method

.method removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->last:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->item:Ljava/lang/Object;

    .line 3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->pre:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    .line 4
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->item:Ljava/lang/Object;

    .line 5
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->pre:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    .line 6
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->last:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    if-nez v3, :cond_1

    .line 7
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->first:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    goto :goto_0

    .line 8
    :cond_1
    iput-object v1, v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;->next:Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList$Node;

    .line 9
    :goto_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/PoseEstimator$SimpleList;->size:I

    return-object v2
.end method
