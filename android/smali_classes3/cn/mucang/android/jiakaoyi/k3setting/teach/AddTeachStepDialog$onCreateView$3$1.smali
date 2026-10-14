.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->F(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;Landroid/view/View;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.teach.AddTeachStepDialog$onCreateView$3$1"
    f = "AddTeachStepDialog.kt"
    l = {
        0x5d,
        0x67,
        0x67,
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field final synthetic $remark:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$remark:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$remark:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->Z$0:Z

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->r(Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v7

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$remark:Ljava/lang/String;

    invoke-virtual {p1, v1, v7, v8}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;->m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v7, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1$1;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    invoke-direct {v7, v8, v9, v6}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;Lkotlin/coroutines/c;)V

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->Z$0:Z

    iput v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->label:I

    invoke-static {p1, v7, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    const-string p1, "\u6dfb\u52a0\u6210\u529f"

    goto :goto_1

    :cond_5
    const-string p1, "\u6dfb\u52a0\u5931\u8d25"

    .line 6
    :goto_1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1$2;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v1, v2, v6}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1$2;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v1, v2, v6}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 10
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 11
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1$2;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v3, v4, v6}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$onCreateView$3$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p1

    .line 12
    :goto_4
    throw v0
.end method
