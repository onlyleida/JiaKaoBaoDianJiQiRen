.class public final Lkotlinx/coroutines/flow/internal/SafeCollectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/jvm/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/q<",
            "Lkotlinx/coroutines/flow/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;-><init>()V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/z;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/b/q;

    sput-object v0, Lkotlinx/coroutines/flow/internal/SafeCollectorKt;->a:Lkotlin/jvm/b/q;

    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/b/q;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/SafeCollectorKt;->a:Lkotlin/jvm/b/q;

    return-object v0
.end method
