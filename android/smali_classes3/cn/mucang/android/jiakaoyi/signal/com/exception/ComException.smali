.class public Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final name:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

.field public final state:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field public tip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->name:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    .line 10
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->state:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 11
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->tip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->name:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->state:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->name:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->state:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->tip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->tip:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->state:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;->name:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    return-object v0
.end method
