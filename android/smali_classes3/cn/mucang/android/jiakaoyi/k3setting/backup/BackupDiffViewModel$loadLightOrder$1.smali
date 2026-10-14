.class final Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.k3setting.backup.BackupDiffViewModel$loadLightOrder$1"
    f = "BackupDiffViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->k(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->i(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "lightExamProgramList"

    .line 6
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    .line 8
    const-class v4, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-static {p1, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-static {v3, p1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->n(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-static {p1, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-static {p1, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 13
    :cond_0
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->k(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->k(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->s()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->p()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/diff/l;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_MODEL:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/diff/l;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 18
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
