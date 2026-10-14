.class public final Lcom/loc/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/e;


# direct methods
.method public constructor <init>(Lcom/loc/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "c"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v5, v4}, Lcom/loc/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_0

    const/16 v4, 0x836

    invoke-static {v1, v4}, Lcom/loc/fn;->a(Ljava/lang/String;I)V

    const-string v4, "invalid handlder scode!!!#1002"

    invoke-static {v4}, Lcom/loc/e;->b(Ljava/lang/String;)Lcom/loc/en;

    move-result-object v4

    new-instance v5, Lcom/loc/eh;

    invoke-direct {v5}, Lcom/loc/eh;-><init>()V

    const-string v6, "#1002"

    invoke-virtual {v5, v6}, Lcom/loc/eh;->f(Ljava/lang/String;)V

    const-string v6, "conitue"

    invoke-virtual {v5, v6}, Lcom/loc/eh;->e(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v4}, Lcom/loc/en;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v4, v7, v5}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;Lcom/loc/eh;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v3, v1

    goto :goto_0

    :catchall_2
    move-exception v4

    move-object v2, v1

    move-object v3, v2

    :goto_0
    :try_start_3
    const-string v5, "ApsServiceCore"

    const-string v6, "ActionHandler handlerMessage"

    invoke-static {v4, v5, v6}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    if-eqz v4, :cond_a

    if-eq v4, v0, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    iget-object v0, v0, Lcom/loc/e;->f:Lcom/loc/ei;

    invoke-virtual {v0}, Lcom/loc/ei;->g()V

    goto/16 :goto_3

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v2}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v2}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v2}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v1}, Lcom/loc/e;->b(Lcom/loc/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->c(Lcom/loc/e;)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v3}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Messenger;)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v0}, Lcom/loc/e;->e()V

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v2}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v0, v3, v2}, Lcom/loc/e;->a(Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v2}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0}, Lcom/loc/e;->a(Lcom/loc/e;)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v0}, Lcom/loc/e;->d()V

    goto :goto_3

    :cond_5
    :goto_1
    return-void

    :cond_6
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-virtual {v0}, Lcom/loc/e;->c()V

    goto :goto_3

    :cond_8
    :goto_2
    return-void

    :cond_9
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v2}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v3, v2}, Lcom/loc/e;->b(Lcom/loc/e;Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v2}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/e$a;->a:Lcom/loc/e;

    invoke-static {v0, v3, v2}, Lcom/loc/e;->a(Lcom/loc/e;Landroid/os/Messenger;Landroid/os/Bundle;)V

    :cond_b
    :goto_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    const-string v0, "actionHandler"

    const-string v1, "handleMessage"

    invoke-static {p1, v0, v1}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
