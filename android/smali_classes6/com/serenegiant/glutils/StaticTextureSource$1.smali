.class Lcom/serenegiant/glutils/StaticTextureSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/StaticTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/glutils/StaticTextureSource;


# direct methods
.method constructor <init>(Lcom/serenegiant/glutils/StaticTextureSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v0}, Lcom/serenegiant/glutils/StaticTextureSource;->access$600(Lcom/serenegiant/glutils/StaticTextureSource;)Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    move-result-object v0

    invoke-static {v0}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->access$700(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 2
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v4}, Lcom/serenegiant/glutils/StaticTextureSource;->access$600(Lcom/serenegiant/glutils/StaticTextureSource;)Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    move-result-object v4

    invoke-static {v4}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->access$700(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)J

    move-result-wide v4

    rem-long/2addr v4, v2

    long-to-int v2, v4

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v3}, Lcom/serenegiant/glutils/StaticTextureSource;->access$300(Lcom/serenegiant/glutils/StaticTextureSource;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v3}, Lcom/serenegiant/glutils/StaticTextureSource;->access$600(Lcom/serenegiant/glutils/StaticTextureSource;)Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v3}, Lcom/serenegiant/glutils/StaticTextureSource;->access$200(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v4}, Lcom/serenegiant/glutils/StaticTextureSource;->access$200(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 7
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v4}, Lcom/serenegiant/glutils/StaticTextureSource;->access$600(Lcom/serenegiant/glutils/StaticTextureSource;)Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    move-result-object v4

    invoke-static {v4}, Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;->access$800(Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;)Lcom/serenegiant/glutils/TextureOffscreen;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v4}, Lcom/serenegiant/glutils/StaticTextureSource;->access$600(Lcom/serenegiant/glutils/StaticTextureSource;)Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/serenegiant/utils/MessageTask;->removeRequest(I)V

    .line 9
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v4}, Lcom/serenegiant/glutils/StaticTextureSource;->access$600(Lcom/serenegiant/glutils/StaticTextureSource;)Lcom/serenegiant/glutils/StaticTextureSource$RendererTask;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/serenegiant/utils/MessageTask;->offer(I)Z

    .line 10
    iget-object v4, p0, Lcom/serenegiant/glutils/StaticTextureSource$1;->this$0:Lcom/serenegiant/glutils/StaticTextureSource;

    invoke-static {v4}, Lcom/serenegiant/glutils/StaticTextureSource;->access$200(Lcom/serenegiant/glutils/StaticTextureSource;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 11
    :try_start_1
    invoke-static {}, Lcom/serenegiant/glutils/StaticTextureSource;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_3
    return-void
.end method
