.class final Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->g(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;)V
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
    c = "cn.mucang.jiakaoyi.uilib.message.DialogMessageManager$showMessageDialogBySocket$1"
    f = "DialogMessageManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dialogDetail:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;->$dialogDetail:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;->$dialogDetail:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;-><init>(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;->$dialogDetail:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->a()Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;-><init>(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->b()Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->k()Lcn/mucang/android/core/config/n;

    move-result-object v1

    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->b()Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->i()Z

    move-result p1

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->b()Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->f(Lcn/mucang/jiakaoyi/uilib/message/dialog/f;)Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    .line 6
    :goto_2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->b()Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->n()V

    goto :goto_3

    .line 7
    :cond_5
    invoke-virtual {v0, v2}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->c(Lcn/mucang/jiakaoyi/uilib/message/dialog/e;)V

    .line 8
    :goto_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
