.class final Lcom/tencent/connect/share/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/open/utils/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/utils/d;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/open/utils/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/open/utils/d;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 3
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4
    iget-object v0, p0, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/open/utils/d;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tencent/open/utils/d;->a(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 6
    iget-object v0, p0, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/open/utils/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/tencent/open/utils/d;->a(ILjava/util/ArrayList;)V

    return-void
.end method
