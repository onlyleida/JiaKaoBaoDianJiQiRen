.class final Landroidx/lifecycle/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/g;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/g;

.field final synthetic b:Lkotlin/coroutines/CoroutineContext;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/lifecycle/g;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/g$a;->a:Landroidx/lifecycle/g;

    iput-object p2, p0, Landroidx/lifecycle/g$a;->b:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Landroidx/lifecycle/g$a;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/g$a;->a:Landroidx/lifecycle/g;

    iget-object v1, p0, Landroidx/lifecycle/g$a;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/g;Ljava/lang/Runnable;)V

    return-void
.end method
