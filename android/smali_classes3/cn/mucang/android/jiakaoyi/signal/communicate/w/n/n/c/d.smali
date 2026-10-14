.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/d;
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
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public c()Ljava/util/List;
    .locals 12
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

    const-string v0, "="

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/n;->d:Lcn/mucang/android/jiakaoyi/signal/com/n;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/com/n;->a:Ljava/lang/String;

    .line 2
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/n;->b:I

    .line 3
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/n;->e:Lcn/mucang/android/jiakaoyi/signal/com/n;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/com/n;->a:Ljava/lang/String;

    .line 4
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/com/n;->b:I

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 6
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "jky_config.txt"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 8
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 10
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 13
    array-length v9, v5

    if-eq v9, v6, :cond_3

    goto :goto_0

    :cond_3
    const-string v9, "mip"

    .line 14
    aget-object v11, v5, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 15
    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v9, "mport"

    .line 16
    aget-object v11, v5, v7

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 17
    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_5
    const-string v9, "gip"

    .line 18
    aget-object v11, v5, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 19
    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    const-string v9, "gport"

    .line 20
    aget-object v11, v5, v7

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 21
    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v5, v10

    .line 22
    :catchall_1
    invoke-static {v5}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 23
    :cond_7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;-><init>()V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {v5, v2, v1, v9}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 24
    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V2:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 25
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 26
    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->i(Z)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 27
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 28
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    move-result-object v0

    .line 29
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;-><init>()V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->GpsNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {v2, v4, v3, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 30
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->Transparent:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 31
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/u/b/c;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/c;-><init>()V

    .line 32
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->c(Lcn/mucang/android/jiakaoyi/signal/com/u/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;-><init>()V

    .line 33
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->g(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 34
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 35
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    move-result-object v1

    .line 36
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;-><init>()V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/n;->f:Lcn/mucang/android/jiakaoyi/signal/com/n;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/com/n;->a:Ljava/lang/String;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/com/n;->b:I

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->AiNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {v3, v5, v4, v9}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 37
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 38
    invoke-virtual {v2, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->e(Z)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->AI:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 39
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 40
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;)Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;

    .line 41
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;->a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    move-result-object v2

    .line 42
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->l()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x3

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    aput-object v2, v3, v6

    .line 43
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_8
    new-array v2, v6, [Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    aput-object v1, v2, v7

    aput-object v0, v2, v8

    .line 44
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
