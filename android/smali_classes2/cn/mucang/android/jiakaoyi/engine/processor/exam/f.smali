.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->d:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->e:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    new-instance v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    invoke-direct {v3, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    invoke-direct {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    :goto_0
    return-void
.end method

.method public b()Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->e:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->d:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a:I

    .line 4
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    .line 3
    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    .line 4
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->c(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/engine/model/Step;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    if-eqz p1, :cond_0

    .line 2
    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->d:J

    :cond_0
    return-void
.end method
