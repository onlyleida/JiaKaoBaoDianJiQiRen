.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;"
        }
    .end annotation
.end field

.field public remark:Ljava/lang/String;

.field public stepId:I

.field public stepName:Ljava/lang/String;

.field public teachNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepId:I

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepId:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepId:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->remark:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepName:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepName:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->teachNum:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->teachNum:I

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 9
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->copy()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    :cond_1
    return-object v0
.end method
