.class public final Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;->k(I)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$setData$7$a;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;)Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;->secondText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    const-string p1, "viewBinding"

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
