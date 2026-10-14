.class public final Lkotlinx/coroutines/android/HandlerContext$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/HandlerContext;->c(JLkotlinx/coroutines/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/android/HandlerContext;

.field final synthetic b:Lkotlinx/coroutines/k;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Lkotlinx/coroutines/k;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext$b;->a:Lkotlinx/coroutines/android/HandlerContext;

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext$b;->b:Lkotlinx/coroutines/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$b;->b:Lkotlinx/coroutines/k;

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext$b;->a:Lkotlinx/coroutines/android/HandlerContext;

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/k;->C(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void
.end method
