.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e$b;
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "/dev/ttyMT1"

    const-string v1, "/dev/ttyMT2"

    const-string v2, "/dev/ttyS1"

    const-string v3, "/dev/ttyACM1"

    const-string v4, "/dev/ttyACM2"

    const-string v5, "/dev/ttyXRUSB0"

    const-string v6, "/dev/ttyS4"

    const-string v7, "/dev/ttyS3"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->a:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    array-length p1, p1

    if-nez p1, :cond_4

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->b:Ljava/util/List;

    .line 6
    new-instance p1, Landroid/serialport/SerialPortFinder;

    invoke-direct {p1}, Landroid/serialport/SerialPortFinder;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/serialport/SerialPortFinder;->getAllDevicesPath()[Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "this_device_serial_name"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->d(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;)V

    .line 7
    invoke-virtual {v1, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->F(Ljava/util/List;)V

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->A()V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6253\u5f00\u4e32\u53e3\u6210\u529f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 10
    monitor-enter p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "this_device_serial_name"

    .line 13
    invoke-static {v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :catchall_0
    move-exception v2

    .line 14
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 15
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6253\u5f00\u4e32\u53e3\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 16
    :try_start_5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 17
    :catchall_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u95ed\u4e32\u53e3\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterSerial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance p4, Ljava/lang/Exception;

    const-string v0, "\u6253\u5f00\u4e32\u53e3\u5931\u8d25"

    invoke-direct {p4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    monitor-enter p3

    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v1, v3, :cond_2

    .line 9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v1, v3, :cond_2

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Initialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v1, v3, :cond_2

    .line 11
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ReInitialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v1, v3, :cond_2

    .line 12
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->AiUpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v1, v3, :cond_2

    .line 13
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Authorising:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->C()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "release communicator\u5931\u8d25"

    .line 15
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 16
    :goto_0
    monitor-enter p3

    .line 17
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 18
    monitor-exit p3

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    :goto_2
    const/16 v0, 0xa

    if-ge v2, v0, :cond_7

    .line 19
    :try_start_3
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/q;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "V600"

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    return-object p1

    .line 21
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->a:[Ljava/lang/String;

    if-eqz v0, :cond_6

    array-length v1, v0

    if-nez v1, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    return-object p1

    .line 23
    :cond_6
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->b:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object p1

    :catchall_2
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v0, 0x1f4

    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 25
    :cond_7
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterSerial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u6253\u5f00\u4e32\u53e3\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw p1

    :catchall_3
    move-exception p1

    .line 26
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p1
.end method

.method protected d(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;-><init>()V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/c;

    const v2, 0x1c200

    invoke-direct {v1, p1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/c;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V1:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e$b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e$b;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e$a;)V

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->d(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i(Z)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    move-result-object p1

    return-object p1
.end method
