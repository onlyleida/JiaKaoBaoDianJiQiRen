.class public Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sixents/sdk/base/SixentsSDKManagerImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;


# direct methods
.method constructor <init>(Lcom/sixents/sdk/base/SixentsSDKManagerImp;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$900(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$900(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$900(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const-wide/16 v0, 0x50

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-static {}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tickThread is interrupt"

    invoke-static {v0, v1}, Lcom/sixents/sdk/utils/LogUtils;->ii(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$TickThread;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$1100(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
