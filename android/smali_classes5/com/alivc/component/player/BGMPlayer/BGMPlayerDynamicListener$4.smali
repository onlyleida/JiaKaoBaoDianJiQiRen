.class Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;->getOnRenderFrameProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;


# direct methods
.method constructor <init>(Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$4;->this$0:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRenderFrame"

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const-string p2, "com.cicada.player.utils.FrameInfo"

    const-string p3, "frameType"

    invoke-static {p1, p2, p3}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const-string p3, "audio_data"

    invoke-static {p1, p2, p3}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, [[B

    const-string p3, "pts"

    invoke-static {p1, p2, p3}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getLongField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const-string p3, "audio_format"

    invoke-static {p1, p2, p3}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string p3, "audio_nb_samples"

    invoke-static {p1, p2, p3}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string p3, "audio_channels"

    invoke-static {p1, p2, p3}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string p3, "audio_sample_rate"

    invoke-static {p1, p2, p3}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onRenderAudioFrameEvent([[BJIIII)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
