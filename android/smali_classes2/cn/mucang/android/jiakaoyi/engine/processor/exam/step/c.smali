.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public final c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public d:J


# direct methods
.method public constructor <init>(JLcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->d:J

    return-void
.end method

.method public constructor <init>(JLcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;",
            ">;I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a:Ljava/util/List;

    .line 12
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->d:J

    .line 13
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 14
    iput p5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    .line 15
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    return-void
.end method

.method public b()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;
    .locals 7

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->a()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v6, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->d:J

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;-><init>(JLcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/util/List;I)V

    return-object v6
.end method

.method public c(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    .line 2
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b(Lcn/mucang/android/jiakaoyi/engine/model/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->b:I

    :cond_1
    return-void
.end method
