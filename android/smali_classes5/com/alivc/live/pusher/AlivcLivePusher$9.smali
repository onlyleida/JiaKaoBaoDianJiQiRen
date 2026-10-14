.class Lcom/alivc/live/pusher/AlivcLivePusher$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/live/pusher/AlivcLivePusher;->getNetworkTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/live/pusher/AlivcLivePusher;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    const-string v6, "time.pool.aliyun.com"

    invoke-static {v1, v6}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2700(Lcom/alivc/live/pusher/AlivcLivePusher;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2302(Lcom/alivc/live/pusher/AlivcLivePusher;J)J

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2300(Lcom/alivc/live/pusher/AlivcLivePusher;)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2300(Lcom/alivc/live/pusher/AlivcLivePusher;)J

    move-result-wide v6

    div-long/2addr v6, v2

    invoke-static {v0, v6, v7}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2302(Lcom/alivc/live/pusher/AlivcLivePusher;J)J

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2300(Lcom/alivc/live/pusher/AlivcLivePusher;)J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v0, v4, v5}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2302(Lcom/alivc/live/pusher/AlivcLivePusher;J)J

    :cond_2
    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2800(Lcom/alivc/live/pusher/AlivcLivePusher;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2800(Lcom/alivc/live/pusher/AlivcLivePusher;Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/alivc/live/pusher/AlivcLivePusher$9;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v3}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2300(Lcom/alivc/live/pusher/AlivcLivePusher;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2402(Lcom/alivc/live/pusher/AlivcLivePusher;I)I

    :cond_3
    return-void
.end method
