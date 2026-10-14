.class Lcom/alivc/component/capture/VideoPusher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/VideoPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$800(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/alivc/component/capture/VideoPusher;->access$102(Lcom/alivc/component/capture/VideoPusher;J)J

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/alivc/component/capture/VideoPusher;->access$202(Lcom/alivc/component/capture/VideoPusher;J)J

    :cond_0
    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$900(Lcom/alivc/component/capture/VideoPusher;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    add-long/2addr v7, v9

    mul-long v11, v7, v3

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$400(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$800(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    move-result-object v9

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v13

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$400(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v2

    rem-int/lit16 v14, v2, 0x168

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v15

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v16

    const/16 v17, 0x11

    move-object/from16 v10, p1

    invoke-interface/range {v9 .. v17}, Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;->onVideoFrame([BJIIIII)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$800(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    move-result-object v9

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v13

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$500(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v14

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v15

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v16

    const/16 v17, 0x11

    move-object/from16 v10, p1

    invoke-interface/range {v9 .. v17}, Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;->onVideoFrame([BJIIIII)V

    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/alivc/component/capture/VideoPusher;->access$602(Lcom/alivc/component/capture/VideoPusher;J)J

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$708(Lcom/alivc/component/capture/VideoPusher;)I

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$1000(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$600(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/alivc/component/capture/VideoPusher;->access$1002(Lcom/alivc/component/capture/VideoPusher;J)J

    :cond_4
    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$600(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v5

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$1000(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-lez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatLog: video capture fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v3}, Lcom/alivc/component/capture/VideoPusher;->access$700(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoPusher"

    invoke-static {v3, v2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$700(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alivc/component/capture/VideoPusher;->access$1102(Lcom/alivc/component/capture/VideoPusher;I)I

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$700(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-ge v2, v3, :cond_6

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$1200(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$1208(Lcom/alivc/component/capture/VideoPusher;)I

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2, v4}, Lcom/alivc/component/capture/VideoPusher;->access$1202(Lcom/alivc/component/capture/VideoPusher;I)I

    :goto_2
    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2, v4}, Lcom/alivc/component/capture/VideoPusher;->access$702(Lcom/alivc/component/capture/VideoPusher;I)I

    iget-object v2, v0, Lcom/alivc/component/capture/VideoPusher$2;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v2}, Lcom/alivc/component/capture/VideoPusher;->access$600(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/alivc/component/capture/VideoPusher;->access$1002(Lcom/alivc/component/capture/VideoPusher;J)J

    :cond_7
    if-eqz v1, :cond_8

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_8
    return-void
.end method
