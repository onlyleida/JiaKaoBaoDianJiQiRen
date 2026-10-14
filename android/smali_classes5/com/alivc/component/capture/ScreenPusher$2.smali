.class Lcom/alivc/component/capture/ScreenPusher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/ScreenPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/ScreenPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/ScreenPusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$000(Lcom/alivc/component/capture/ScreenPusher;)Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$100(Lcom/alivc/component/capture/ScreenPusher;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alivc/component/capture/ScreenPusher;->access$102(Lcom/alivc/component/capture/ScreenPusher;J)J

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alivc/component/capture/ScreenPusher;->access$202(Lcom/alivc/component/capture/ScreenPusher;J)J

    :cond_0
    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$300(Lcom/alivc/component/capture/ScreenPusher;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$400(Lcom/alivc/component/capture/ScreenPusher;)Lcom/alivc/component/capture/ScreenVideoParam;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$100(Lcom/alivc/component/capture/ScreenPusher;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$200(Lcom/alivc/component/capture/ScreenPusher;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v5, v0, v2

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$000(Lcom/alivc/component/capture/ScreenPusher;)Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;

    move-result-object v4

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$400(Lcom/alivc/component/capture/ScreenPusher;)Lcom/alivc/component/capture/ScreenVideoParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/component/capture/ScreenVideoParam;->getWidth()I

    move-result v7

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$400(Lcom/alivc/component/capture/ScreenPusher;)Lcom/alivc/component/capture/ScreenVideoParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alivc/component/capture/ScreenVideoParam;->getHeight()I

    move-result v8

    const/16 v9, 0x11

    invoke-interface/range {v4 .. v9}, Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;->onVideoFrame(JIII)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alivc/component/capture/ScreenPusher;->access$502(Lcom/alivc/component/capture/ScreenPusher;J)J

    iget-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$2;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-static {p1}, Lcom/alivc/component/capture/ScreenPusher;->access$608(Lcom/alivc/component/capture/ScreenPusher;)I

    return-void
.end method
