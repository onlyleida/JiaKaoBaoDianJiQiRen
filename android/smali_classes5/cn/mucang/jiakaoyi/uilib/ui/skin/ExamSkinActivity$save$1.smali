.class final Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->t()V
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
    c = "cn.mucang.jiakaoyi.uilib.ui.skin.ExamSkinActivity$save$1"
    f = "ExamSkinActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $loading:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->$loading:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->invokeSuspend$lambda-0(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->invokeSuspend$lambda-1(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final invokeSuspend$lambda-1(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->$loading:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->a()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->parse(I)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p1

    const-string v0, "parse(AppUtils.getKemu())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v3

    .line 3
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/i/m;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/i/m;-><init>()V

    const/4 v5, 0x1

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const-string v1, "selectSkin"

    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->b()I

    move-result p1

    int-to-long v6, p1

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->c()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual/range {v2 .. v8}, Lcn/mucang/jiakaoyi/uilib/i/m;->n(JIJLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\u4fdd\u5b58\u76ae\u80a4\u5931\u8d25"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "keyExamSkinType"

    .line 8
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)Lcn/mucang/jiakaoyi/uilib/ui/skin/f;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/ui/skin/f;->b()I

    move-result v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/skin/d;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/d;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->$loading:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/skin/e;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    goto :goto_1

    .line 11
    :cond_1
    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 12
    :cond_2
    :try_start_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 13
    :cond_3
    :try_start_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->$loading:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/skin/e;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/skin/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    :goto_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 16
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 17
    :goto_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinActivity$save$1;->$loading:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/skin/e;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/skin/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    throw p1

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
