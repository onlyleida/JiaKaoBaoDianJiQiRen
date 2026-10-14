.class public Lcn/mucang/jiakaoyi/uilib/socket/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/socket/p$a;
    }
.end annotation


# instance fields
.field private volatile a:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

.field private volatile b:Z

.field private final c:Ljava/io/DataInputStream;

.field private final d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;Lcn/mucang/jiakaoyi/uilib/socket/p$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->b:Z

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->c:Ljava/io/DataInputStream;

    .line 4
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->a:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    .line 5
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->e:I

    return-void
.end method

.method private a(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5173\u95edreader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->a:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->b:Z

    if-eqz v0, :cond_7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->c:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/c;->b(Ljava/io/DataInputStream;)Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 3
    :try_start_1
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;->getType()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->getMessageHandler(I)Lcn/mucang/jiakaoyi/uilib/socket/y/w;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/y/w;->a(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->a:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->a:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    invoke-interface {v1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/p$a;->b(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "SocketTag"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e27\u5904\u7406\u5f02\u5e38"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e27\u5904\u7406\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e27\u83b7\u53d6\u4e3a\u7a7a: , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->b:Z

    if-nez v1, :cond_3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e3b\u52a8\u5173\u95edsocket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e27\u89e3\u6790\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , error = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 13
    instance-of v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;

    if-eqz v1, :cond_5

    .line 14
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->e:I

    const-wide/16 v1, 0xa

    .line 15
    invoke-direct {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/p;->a(J)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\u81ea\u5b9a\u4e49\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , frameErrorCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 17
    move-object v1, v0

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;

    .line 18
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->a:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    if-eqz v2, :cond_4

    .line 19
    invoke-interface {v2, v1}, Lcn/mucang/jiakaoyi/uilib/socket/p$a;->a(Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;)V

    .line 20
    :cond_4
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->e:I

    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/p;->close()V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u591a\u6b21\u5e27\u89e3\u6790\u5f02\u5e38\uff0c\u91cd\u542f\u8fde\u63a5:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/mucang/jiakaoyi/uilib/socket/p$a;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",io\u8fde\u63a5\u5f02\u5e38:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/p;->a:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    if-eqz v1, :cond_6

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/p$a;->c(Ljava/lang/String;)V

    .line 26
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/p;->close()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method
