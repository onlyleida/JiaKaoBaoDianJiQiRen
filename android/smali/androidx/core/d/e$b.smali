.class Landroidx/core/d/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/d/e;->d(Landroid/content/Context;Landroidx/core/d/d;ILjava/util/concurrent/Executor;Landroidx/core/d/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/a<",
        "Landroidx/core/d/e$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/d/a;


# direct methods
.method constructor <init>(Landroidx/core/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/d/e$b;->a:Landroidx/core/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/d/e$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/d/e$b;->a:Landroidx/core/d/a;

    invoke-virtual {v0, p1}, Landroidx/core/d/a;->b(Landroidx/core/d/e$e;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/d/e$e;

    invoke-virtual {p0, p1}, Landroidx/core/d/e$b;->a(Landroidx/core/d/e$e;)V

    return-void
.end method
