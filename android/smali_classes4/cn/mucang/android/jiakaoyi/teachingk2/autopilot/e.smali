.class public Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a([B)Lkotlin/v;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoPilotCtl:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)Lkotlin/v;
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_auto_teach_order_timeout:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6307\u4ee4\u53d1\u9001\u8d85\u65f6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)Lkotlin/v;
    .locals 3

    .line 1
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const-string v1, ":"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6307\u4ee4\u53d1\u9001\u6210\u529f:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6307\u4ee4\u53d1\u9001\u5931\u8d25:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic d(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;)V
    .locals 2

    .line 1
    iget v0, p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;->c:I

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u6536\u5230\u8def\u5f84\u53d1\u9001\u56de\u5e94\u6210\u529f:start="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;->c:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",end="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;->d:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;->b:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6536\u5230\u8def\u5f84\u53d1\u9001\u56de\u5e94\u9519\u8bef:start="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",end="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",\u7b49\u5f85\u54cd\u5e94\u7684start="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 5
    :goto_0
    monitor-enter p2

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/jiakaoyi/uilib/h;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/h;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->OpenAutoTeach:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    invoke-interface {v0, v1}, Lcn/mucang/jiakaoyi/uilib/h;->a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Collect:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v2, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->f([BLcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)V

    goto :goto_0

    :cond_1
    const-string p0, "sendCollectOrder failed , \u81ea\u52a8\u9a7e\u9a76\u5f00\u5173\u672a\u6253\u5f00"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static f([BLcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;",
            ">([B",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u6307\u4ee4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/c;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/c;-><init>([B)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/d;

    invoke-direct {v7, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)V

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/b;

    invoke-direct {v8, p3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method public static g(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Gear:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v2, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 5
    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->f([BLcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)V

    return-void
.end method

.method public static h(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/a;

    invoke-direct {v7, v6, v3, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/a;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V

    .line 7
    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 8
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5b9e\u9645\u53d1\u9001\u6570\u636e:\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_8

    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-le v11, v12, :cond_0

    .line 11
    invoke-virtual {v3, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v11, v10, 0x12

    if-le v11, v8, :cond_2

    move v11, v8

    :cond_2
    if-ne v11, v8, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 13
    :goto_1
    new-instance v14, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    invoke-direct {v14, v13}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 14
    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Path:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v15, v15, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v14, v15}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    int-to-byte v12, v12

    .line 15
    invoke-virtual {v14, v12}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 16
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v14, v12}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 17
    invoke-virtual {v14, v10}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    add-int/lit8 v12, v11, -0x1

    .line 18
    invoke-virtual {v14, v12}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    move v15, v10

    :goto_2
    if-ge v15, v11, :cond_5

    move-object/from16 v4, p0

    .line 19
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 20
    iget-byte v4, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    invoke-virtual {v14, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 21
    iget-byte v4, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->pointType:B

    const-wide v17, 0x408f400000000000L    # 1000.0

    move/from16 v16, v11

    const/4 v11, 0x1

    if-ne v4, v11, :cond_4

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u8bbe\u7f6e\u7279\u6b8a\u70b9\u4f4d,x:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, v1

    iget-wide v0, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v0, v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " y:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v0, v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object v11, v1

    .line 23
    :goto_3
    iget-short v0, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->step:S

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 24
    iget-byte v0, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 25
    iget-byte v0, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 26
    iget-byte v0, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->light:B

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 27
    iget-wide v0, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v0, v0, v17

    double-to-long v0, v0

    invoke-virtual {v14, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->g(J)V

    .line 28
    iget-wide v0, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v0, v0, v17

    double-to-long v0, v0

    invoke-virtual {v14, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->g(J)V

    .line 29
    iget-short v0, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 30
    iget-short v0, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-virtual {v14, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 31
    iget-wide v0, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object v1, v11

    move/from16 v11, v16

    const/4 v4, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_5
    move/from16 v16, v11

    move-object v11, v1

    .line 32
    invoke-virtual {v6, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u8f68\u8ff9\u6307\u4ee4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Path:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v4, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->desc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",start="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",end="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",size="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v14}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v0

    .line 35
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v4

    sget-object v13, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoPilotCtl:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v4, v13, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    .line 36
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 37
    monitor-enter v5

    .line 38
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    move-object v4, v7

    const-wide/16 v6, 0xbb8

    .line 39
    :try_start_1
    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    const-wide/16 v13, 0xb86

    cmp-long v15, v6, v13

    if-lez v15, :cond_7

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53d1\u9001\u8f68\u8ff9\u6307\u4ee4\u8d85\u65f6,\u91cd\u65b0\u53d1\u9001:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v7, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->desc:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",start="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",end="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    .line 43
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 44
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v0

    move-object v7, v4

    move-object v1, v11

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 46
    :try_start_5
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    :try_start_6
    monitor-exit v5

    move-object v6, v0

    move-object v7, v4

    move-object v1, v11

    move/from16 v10, v16

    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-object v4, v7

    :catch_1
    const/4 v0, 0x1

    .line 48
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "\u53d1\u9001\u8f68\u8ff9\u6307\u4ee4\u7ebf\u7a0b\u88ab\u6253\u65ad"

    .line 49
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 50
    monitor-exit v5

    goto :goto_7

    .line 51
    :goto_5
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_8
    :goto_6
    move-object v11, v1

    move-object v4, v7

    .line 52
    :goto_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 53
    invoke-static {v4, v11}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u53d1\u9001\u8f68\u8ff9\u6570\u636e\u5931\u8d25"

    .line 55
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    move-object/from16 v1, p1

    const-string v0, "\u53d1\u9001\u8f68\u8ff9\u6570\u636e\u6210\u529f"

    .line 57
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 59
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u53d1\u81ea\u52a8\u793a\u6559\u8f68\u8ff9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "\u5931\u8d25"

    goto :goto_9

    :cond_a
    const-string v1, "\u6210\u529f"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public static i(ZILcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Speed:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v2, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    int-to-byte p0, p1

    .line 4
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    const-class p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;

    invoke-static {p0, p2, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->f([BLcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)V

    return-void
.end method

.method public static j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->State:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v2, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->cmd:B

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u72b6\u6001\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->cmd:B

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->b(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;

    invoke-static {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->f([BLcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)V

    return-void
.end method

.method public static k(ZSLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZS",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Wheel:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v2, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    const-class p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;

    invoke-static {p0, p2, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->f([BLcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)V

    return-void
.end method

.method public static l(BBLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->Motor:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;

    iget-byte v2, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;->order:B

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    const-class p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;

    invoke-static {p0, p2, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->f([BLcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotOrder;)V

    return-void
.end method
