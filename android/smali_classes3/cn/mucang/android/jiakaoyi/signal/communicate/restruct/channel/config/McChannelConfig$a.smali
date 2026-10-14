.class public Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/c<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/com/v/a;",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

.field public b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

.field public c:Z

.field public d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

.field public e:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

.field public g:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->j:Ljava/util/Map;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->Serial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/d;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->BltServer:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/b;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->BltClient:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->Net:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/e;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->TypeC:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/f;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->j:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V1:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/h;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->j:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V2:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->j:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->AI:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V1:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    if-eqz v1, :cond_8

    .line 3
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    if-eqz v2, :cond_7

    .line 4
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    if-eqz v2, :cond_6

    .line 6
    :try_start_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i:Ljava/util/Map;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/c;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/c;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    .line 8
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->a:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->j:Ljava/util/Map;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    if-eqz v1, :cond_0

    .line 10
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    if-eqz v1, :cond_4

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    if-eqz v2, :cond_3

    .line 13
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->Transparent:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    if-ne v3, v4, :cond_1

    .line 14
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/g;

    invoke-direct {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;Lcn/mucang/android/jiakaoyi/signal/com/u/a;)V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    if-nez v1, :cond_2

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 17
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 18
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->c:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->e:Z

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

    .line 20
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->g:Z

    return-object v0

    .line 21
    :cond_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\u4fe1\u9053\u4e0d\u652f\u6301\u6d88\u606f\u7f16\u7801"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\u4fe1\u9053\u4e0d\u652f\u6301\u6d88\u606f\u89e3\u6790"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0

    .line 23
    :cond_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\u4fe1\u9053\u521d\u59cb\u5316\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0

    .line 24
    :catch_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\u4fe1\u9053\u521d\u59cb\u5316\u53c2\u6570\u975e\u6cd5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0

    .line 25
    :cond_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "\u53c2\u6570\u975e\u6cd5:\u534f\u8bae\u7248\u672c\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0

    .line 26
    :cond_7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->None:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "\u4fe1\u9053\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0

    .line 27
    :cond_8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->None:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "\u53c2\u6570\u975e\u6cd5:\u914d\u7f6e\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;

    return-object p0
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/com/u/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    return-object p0
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->g:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

    return-object p0
.end method

.method public e(Z)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h:Z

    return-object p0
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    return-object p0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a<",
            "*>;)",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;

    return-object p0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u534f\u8bae\u7248\u672c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    return-object p0
.end method

.method public i(Z)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->c:Z

    return-object p0
.end method
