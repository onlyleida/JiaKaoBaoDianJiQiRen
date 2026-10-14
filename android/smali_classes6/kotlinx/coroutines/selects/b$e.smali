.class public final Lkotlinx/coroutines/selects/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/selects/b;->f(JLkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/selects/b;

.field final synthetic b:Lkotlin/jvm/b/l;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/b;Lkotlin/jvm/b/l;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/b$e;->a:Lkotlinx/coroutines/selects/b;

    iput-object p2, p0, Lkotlinx/coroutines/selects/b$e;->b:Lkotlin/jvm/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/b$e;->a:Lkotlinx/coroutines/selects/b;

    invoke-virtual {v0}, Lkotlinx/coroutines/selects/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/selects/b$e;->b:Lkotlin/jvm/b/l;

    iget-object v1, p0, Lkotlinx/coroutines/selects/b$e;->a:Lkotlinx/coroutines/selects/b;

    invoke-virtual {v1}, Lkotlinx/coroutines/selects/b;->o()Lkotlin/coroutines/c;

    invoke-static {v0, v1}, Lkotlinx/coroutines/a3/a;->b(Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    :cond_0
    return-void
.end method
