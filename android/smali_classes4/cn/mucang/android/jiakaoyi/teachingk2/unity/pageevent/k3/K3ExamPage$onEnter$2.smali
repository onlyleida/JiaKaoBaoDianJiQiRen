.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$onEnter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$onEnter$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$onEnter$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->isStart()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$onEnter$2;->invoke(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
