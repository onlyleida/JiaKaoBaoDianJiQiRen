.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public d:Z

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->b:I

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->e:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->d:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public c(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
