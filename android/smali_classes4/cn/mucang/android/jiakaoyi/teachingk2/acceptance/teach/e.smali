.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/DeductChecker;",
        "",
        "()V",
        "currentBoundary",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "deductList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;",
        "getDeductList",
        "()Ljava/util/List;",
        "onOneError",
        "",
        "deduct",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "setCurrentBoundary",
        "boundDetector",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 4

    const-string v0, "deduct"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;->setBoundaryKey(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->t()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;->setBoundaryName(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v3, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    :goto_2
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;->setStepId(I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;->setStepName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;->setScore(I)V

    .line 7
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;->setDesc(Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;->setCode(I)V

    .line 9
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachDeductModel;->setTime(J)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->b:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    return-void
.end method
