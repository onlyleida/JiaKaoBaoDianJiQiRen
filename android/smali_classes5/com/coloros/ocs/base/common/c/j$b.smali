.class final Lcom/coloros/ocs/base/common/c/j$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/base/common/c/j;->e(Lcom/coloros/ocs/base/common/c/c;Lcom/coloros/ocs/base/common/c/f;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/c/f;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/c/j;Landroid/os/Looper;Lcom/coloros/ocs/base/common/c/f;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/coloros/ocs/base/common/c/j$b;->a:Lcom/coloros/ocs/base/common/c/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/j$b;->a:Lcom/coloros/ocs/base/common/c/f;

    invoke-interface {p1}, Lcom/coloros/ocs/base/common/c/f;->onConnectionSucceed()V

    return-void
.end method
