.class final Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
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
    c = "cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1"
    f = "CommonMainTitleBar.kt"
    l = {
        0x5f,
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/ui/widget/c;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;",
            ">;)V"
        }
    .end annotation

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, p0

    .line 4
    :cond_3
    iget-object v1, p1, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->b(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;

    iget-object v5, p1, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;Lkotlin/coroutines/c;)V

    iput v3, p1, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->label:I

    invoke-static {v1, v4, p1}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    const-wide/16 v4, 0x3e8

    .line 6
    iput v2, p1, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->label:I

    invoke-static {v4, v5, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    .line 7
    :cond_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
