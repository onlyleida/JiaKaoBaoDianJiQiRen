.class final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "group",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $ids:Ljava/lang/String;

.field final synthetic $item:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->$ids:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->y()Lcom/drakeet/multitype/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->b()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->f()I

    move-result v4

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->$ids:Ljava/lang/String;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1$2;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;

    invoke-direct {v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;)V

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/e0;->a(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    goto :goto_3

    :cond_4
    const-string p1, "\u65b9\u6848\u540d\u79f0\u91cd\u590d\uff0c\u4e0d\u80fd\u65b0\u589e"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$addGroup$1;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
