.class Landroidx/core/a/f/f$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/a/f/f$c;->callbackFailAsync(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/core/a/f/f$c;


# direct methods
.method constructor <init>(Landroidx/core/a/f/f$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/a/f/f$c$b;->b:Landroidx/core/a/f/f$c;

    iput p2, p0, Landroidx/core/a/f/f$c$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/a/f/f$c$b;->b:Landroidx/core/a/f/f$c;

    iget v1, p0, Landroidx/core/a/f/f$c$b;->a:I

    invoke-virtual {v0, v1}, Landroidx/core/a/f/f$c;->onFontRetrievalFailed(I)V

    return-void
.end method
