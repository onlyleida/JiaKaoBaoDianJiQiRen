.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/c;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    return v1
.end method

.method public c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->BltServer:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->BloothSimulator:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V1:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    move-result-object v0

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->l()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;-><init>()V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/com/n;->f:Lcn/mucang/android/jiakaoyi/signal/com/n;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/signal/com/n;->a:Ljava/lang/String;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/com/n;->b:I

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->AiNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {v4, v6, v5, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 9
    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 10
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->e(Z)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->AI:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 11
    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 12
    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 13
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    .line 14
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v1, v2, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    aput-object v0, v1, v3

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
