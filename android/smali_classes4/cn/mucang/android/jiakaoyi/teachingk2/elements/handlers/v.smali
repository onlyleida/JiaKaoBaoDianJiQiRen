.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/v;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;",
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
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;->headType:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    .line 2
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    if-ne p1, p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    return p3

    :cond_1
    const/4 p5, 0x2

    if-ne p1, p5, :cond_3

    .line 3
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    if-ne p1, p5, :cond_2

    const/4 p3, 0x1

    :cond_2
    return p3

    .line 4
    :cond_3
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    if-nez p1, :cond_4

    const/4 p3, 0x1

    :cond_4
    return p3
.end method
