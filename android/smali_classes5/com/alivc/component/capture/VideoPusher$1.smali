.class Lcom/alivc/component/capture/VideoPusher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


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

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$000(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$102(Lcom/alivc/component/capture/VideoPusher;J)J

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$202(Lcom/alivc/component/capture/VideoPusher;J)J

    :cond_0
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v5, v0, v2

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$400(Lcom/alivc/component/capture/VideoPusher;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$000(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    move-result-object v4

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v7

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$400(Lcom/alivc/component/capture/VideoPusher;)I

    move-result p1

    rem-int/lit16 v8, p1, 0x168

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$000(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    move-result-object v4

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v7

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$500(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v8

    :goto_0
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v9

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    const/16 v11, 0x11

    invoke-interface/range {v4 .. v11}, Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;->onVideoFrame(JIIIII)V

    :cond_2
    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$602(Lcom/alivc/component/capture/VideoPusher;J)J

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/VideoPusher;->access$708(Lcom/alivc/component/capture/VideoPusher;)I

    return-void
.end method
