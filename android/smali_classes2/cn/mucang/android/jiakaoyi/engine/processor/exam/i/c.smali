.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/b;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field private final b:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/f/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;->a:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;->b:I

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/engine/model/a;Lcn/mucang/android/jiakaoyi/engine/model/a;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    sub-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sub-long/2addr p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;->a:Lcn/mucang/android/jiakaoyi/engine/f/b;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->e(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    return-void
.end method

.method public onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;->a:Lcn/mucang/android/jiakaoyi/engine/f/b;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    .line 6
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    .line 7
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/a;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/a;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->k(Ljava/util/List;)V

    .line 11
    :cond_2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/c;->b:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 12
    invoke-static {p1, p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->T(ZZ)V

    return-void
.end method
