.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u001a\u001a\u00020 R\u001a\u0010\u000c\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0015R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000e\"\u0004\u0008\u001a\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u000eR\u0011\u0010\u001e\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;",
        "",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "stepDirection",
        "",
        "group",
        "",
        "list",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/util/List;)V",
        "count",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "getGroup",
        "()Ljava/lang/String;",
        "isReverse",
        "",
        "()Z",
        "getList",
        "()Ljava/util/List;",
        "position",
        "getPosition",
        "setPosition",
        "getStep",
        "()Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "getStepDirection",
        "title",
        "getTitle",
        "",
        "TeachingK2_release"
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
.field private final a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private g:I

.field private h:I

.field final synthetic i:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->i:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->b:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->d:Ljava/util/List;

    .line 2
    iget p5, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {p5, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/e0;->i(II)Z

    move-result p3

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e:Z

    .line 3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->z(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->g:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->h:I

    return v0
.end method

.method public final e()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->b:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->g:I

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->i:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;I)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;)I

    move-result v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x186a0

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->i:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;I)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;)I

    move-result v0

    .line 6
    :goto_0
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->h:I

    return-void
.end method
