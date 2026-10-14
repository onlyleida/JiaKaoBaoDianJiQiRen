.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/d<",
        "Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;",
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
.field final synthetic a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$b;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;

    .line 2
    new-instance p2, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$b;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-direct {p2, v0, p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1$2$a;-><init>(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
