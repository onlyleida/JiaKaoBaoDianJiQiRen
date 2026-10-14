.class Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;->getOnErrorListenerProxyContext()Lcom/alivc/component/player/BGMPlayer/ReflectionProxyContext;
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

    iput-object p1, p0, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener$3;->this$0:Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamicListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onError"

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const-string p2, "com.aliyun.player.bean.ErrorInfo"

    const-string p3, "getCode"

    invoke-static {p1, p2, p3}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "com.aliyun.player.bean.ErrorCode"

    const-string v0, "getValue"

    invoke-static {p1, p3, v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string v0, "getMsg"

    invoke-static {p1, p2, v0}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "getExtra"

    invoke-static {p1, p2, v1}, Lcom/alivc/component/player/BGMPlayer/ReflectionUtility;->callFunc0Param(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p3, v0, p1}, Lcom/alivc/component/player/BGMPlayerEventJNI;->onErrorEvent(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
