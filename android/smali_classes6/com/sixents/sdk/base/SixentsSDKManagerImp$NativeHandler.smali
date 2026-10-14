.class Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sixents/sdk/base/SixentsSDKManagerImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;


# direct methods
.method public constructor <init>(Lcom/sixents/sdk/base/SixentsSDKManagerImp;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$800(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/sixents/sdk/base/JNICall;->k()V

    .line 5
    iget-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$800(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [D

    .line 8
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$700(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    monitor-enter v0

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$700(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    const/4 v2, 0x1

    aget-wide v5, p1, v2

    const/4 v2, 0x2

    aget-wide v7, p1, v2

    invoke-static/range {v3 .. v8}, Lcom/sixents/sdk/base/JNICall;->f(DDD)I

    move-result p1

    iput p1, v1, Lcom/sixents/sdk/base/NativeFlag;->rescode:I

    .line 10
    iget-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$700(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 11
    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 12
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$600(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    monitor-enter v0

    .line 14
    :try_start_2
    iget-object v1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$600(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v1

    invoke-static {p1}, Lcom/sixents/sdk/base/JNICall;->r(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/sixents/sdk/base/NativeFlag;->rescode:I

    .line 15
    iget-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$600(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 16
    monitor-exit v0

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 17
    :pswitch_3
    iget-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$500(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object p1

    monitor-enter p1

    .line 18
    :try_start_3
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$500(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    invoke-static {}, Lcom/sixents/sdk/base/JNICall;->x()I

    move-result v1

    iput v1, v0, Lcom/sixents/sdk/base/NativeFlag;->rescode:I

    .line 19
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$500(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 20
    monitor-exit p1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 21
    :pswitch_4
    iget-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$400(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object p1

    monitor-enter p1

    .line 22
    :try_start_4
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$400(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    invoke-static {}, Lcom/sixents/sdk/base/JNICall;->e()I

    move-result v1

    iput v1, v0, Lcom/sixents/sdk/base/NativeFlag;->rescode:I

    .line 23
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$400(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 24
    monitor-exit p1

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 25
    :pswitch_5
    iget-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$300(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object p1

    monitor-enter p1

    .line 26
    :try_start_5
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$300(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    invoke-static {}, Lcom/sixents/sdk/base/JNICall;->b()I

    move-result v1

    iput v1, v0, Lcom/sixents/sdk/base/NativeFlag;->rescode:I

    .line 27
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$300(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit p1

    goto :goto_0

    :catchall_5
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    .line 29
    :pswitch_6
    iget-object p1, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {p1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$200(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object p1

    monitor-enter p1

    .line 30
    :try_start_6
    iget-object v0, p0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$NativeHandler;->this$0:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    invoke-static {v0}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;->access$200(Lcom/sixents/sdk/base/SixentsSDKManagerImp;)Lcom/sixents/sdk/base/NativeFlag;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 31
    monitor-exit p1

    goto :goto_0

    :catchall_6
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
