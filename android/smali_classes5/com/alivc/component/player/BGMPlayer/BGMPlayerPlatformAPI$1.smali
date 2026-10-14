.class Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->playAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;


# direct methods
.method constructor <init>(Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI$1;->this$0:Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onStateChangedEvent(I)V

    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI$1;->this$0:Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;

    invoke-static {v0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;->access$000(Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "BGMPlayerPlatformAPI"

    const-string v2, "player thread joined failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v2, v1, v0}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onErrorEvent(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
