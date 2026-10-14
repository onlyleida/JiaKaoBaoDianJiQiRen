.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u001a\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3LightPage$lightExamCallback$1",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
        "onClickClose",
        "",
        "onFailure",
        "model",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "deduct",
        "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
        "onFinish",
        "onStart",
        "teachbase_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)V

    return-void
.end method


# virtual methods
.method public onClickClose()V
    .locals 0

    return-void
.end method

.method public onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 1

    const-string v0, "deduct"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 2
    iget p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    if-lez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Ljava/util/LinkedHashMap;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Error:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v0, "getCurrentActivity()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    .line 8
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;-><init>()V

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    iput-object v1, v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;-><init>(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/e;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method public onStart(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 4

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/TrainDataModel;->desc:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "exeList.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->p0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Starting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    if-ne v2, v3, :cond_1

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Ljava/util/LinkedHashMap;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Finish:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;->Starting:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionState;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;)V

    return-void
.end method
