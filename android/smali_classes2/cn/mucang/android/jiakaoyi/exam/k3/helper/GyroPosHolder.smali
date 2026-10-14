.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;,
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;
    }
.end annotation


# static fields
.field private static final estimator:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final posCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->posCache:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->estimator:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 8

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->posCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$1;)V

    .line 3
    :cond_0
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_1

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;->time:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 4
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->estimator:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;

    if-nez v4, :cond_2

    .line 5
    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$1;)V

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    :cond_2
    invoke-static {v4, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->access$200(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;->time:J

    .line 9
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$PosInfo;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method

.method public static reset()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->posCache:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->estimator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
