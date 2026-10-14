.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/j;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/j;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/j;->b:Z

    const/4 p4, 0x1

    if-nez p3, :cond_0

    .line 2
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/j;->b:Z

    .line 3
    new-instance p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p5

    iget-object p5, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p3, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/j;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    :cond_0
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/j;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;->distance:I

    int-to-double p5, p1

    cmpl-double p1, p2, p5

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    return p4
.end method
