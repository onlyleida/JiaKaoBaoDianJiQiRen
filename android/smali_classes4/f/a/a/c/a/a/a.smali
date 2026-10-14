.class public Lf/a/a/c/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;",
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
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 0

    .line 1
    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;

    invoke-virtual {p0, p1, p2, p3}, Lf/a/a/c/a/a/a;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/a;",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 2
    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 3
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 4
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j()I

    move-result p2

    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 5
    const-class p2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
