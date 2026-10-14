.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/d;


# instance fields
.field public a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

.field public b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

.field public c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    .line 1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/i/f/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
