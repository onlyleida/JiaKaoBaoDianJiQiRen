.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->c:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->c:Z

    .line 8
    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    iput v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/engine/model/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->c:Z

    .line 13
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    iput v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(ZLcn/mucang/android/jiakaoyi/engine/model/Deduct;ZLcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;)V
    .locals 8

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    .line 17
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->c:Z

    .line 18
    iget p1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    .line 19
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/engine/model/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZLcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->c:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->c:Z

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public b(Lcn/mucang/android/jiakaoyi/engine/model/a;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/model/a;

    if-eq v3, p1, :cond_1

    .line 3
    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    iget-object v0, v3, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    if-gtz p1, :cond_2

    .line 6
    iput v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    :cond_2
    return v1

    :cond_3
    return v2
.end method
