.class final Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/q<",
        "Lkotlinx/coroutines/flow/d<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "it",
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$2"
    f = "CountDownDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;->this$0:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/d;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;->invoke(Lkotlinx/coroutines/flow/d;Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/d;Ljava/lang/Throwable;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;->this$0:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    invoke-direct {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;Lkotlin/coroutines/c;)V

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;->this$0:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->i()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$2;->this$0:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->c()Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 4
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
