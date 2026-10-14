.class public Lcom/tencent/bugly/proguard/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/bugly/proguard/z;->b:I

    .line 3
    iput-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    .line 4
    iput p2, p0, Lcom/tencent/bugly/proguard/z;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "File name is null."

    .line 97
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v0

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 100
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 101
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 102
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_1
    return-wide v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/util/Comparator;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    new-instance p6, Ljava/io/File;

    invoke-direct {p6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p6}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p6}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 51
    :try_start_0
    new-instance p0, Lcom/tencent/bugly/proguard/z$1;

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/z$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 52
    array-length p0, v2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x0

    sub-long v7, v0, p3

    move-object v3, p1

    move-object v4, p2

    .line 53
    invoke-static/range {v2 .. v8}, Lcom/tencent/bugly/proguard/z;->a([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return-object p5

    :catchall_0
    move-exception p0

    .line 54
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_3
    :goto_1
    return-object p5

    :cond_4
    :goto_2
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p0, p3

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "prefix %s and/or postfix %s is null."

    .line 55
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object p5
.end method

.method private static a([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 85
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v4, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    cmp-long v6, p3, v4

    if-gtz v6, :cond_0

    cmp-long v6, v4, p5

    if-gtz v6, :cond_0

    .line 87
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 32
    invoke-static/range {v0 .. v6}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 33
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    const-string p4, "File %s is to be deleted."

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {p4, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Number of overdue trace files that has deleted: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 37
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;JZ)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    :try_start_0
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0, p4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v1, v8

    move-wide v6, p2

    invoke-static/range {v1 .. v7}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/Writer;[CIJJ)Z

    move-result p0

    .line 6
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return v0
.end method

.method private static a(Ljava/io/Writer;[CIJJ)Z
    .locals 4

    const/4 v0, 0x0

    cmp-long v1, p3, p5

    if-ltz v1, :cond_0

    return v0

    :cond_0
    shl-int/lit8 v1, p2, 0x1

    int-to-long v1, v1

    add-long/2addr v1, p3

    cmp-long v3, v1, p5

    if-gtz v3, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    :cond_1
    sub-long/2addr p5, p3

    const-wide/16 p2, 0x2

    .line 21
    div-long/2addr p5, p2

    long-to-int p2, p5

    .line 22
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/Writer;->write([CII)V

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 24
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "rqdp{  sv sd start} %s"

    .line 112
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 118
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_2
    int-to-long v3, p2

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p1, v3, v4, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;JZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 120
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return v2
.end method


# virtual methods
.method public a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 10
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 12
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 27
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 28
    iget-object p3, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 25
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 16
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 18
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 19
    iget-object p3, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Lcom/tencent/bugly/proguard/j;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 1

    const/16 v0, 0x7b

    .line 187
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    if-nez p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 189
    :cond_0
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/StringBuilder;I)V

    :goto_0
    const/16 p1, 0x7d

    const/4 p2, 0x0

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/z;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 148
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 149
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 150
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 151
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 152
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 153
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 154
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 155
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 156
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 157
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/proguard/z;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 158
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 159
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 160
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 161
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/proguard/z;->a(DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 162
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 163
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 164
    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 165
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_0

    .line 166
    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 167
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 168
    :cond_a
    instance-of v0, p1, Lcom/tencent/bugly/proguard/j;

    if-eqz v0, :cond_b

    .line 169
    check-cast p1, Lcom/tencent/bugly/proguard/j;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Lcom/tencent/bugly/proguard/j;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 170
    :cond_b
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 171
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 172
    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    .line 173
    check-cast p1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 174
    :cond_d
    instance-of v0, p1, [S

    if-eqz v0, :cond_e

    .line 175
    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 176
    :cond_e
    instance-of v0, p1, [I

    if-eqz v0, :cond_f

    .line 177
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 178
    :cond_f
    instance-of v0, p1, [J

    if-eqz v0, :cond_10

    .line 179
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 180
    :cond_10
    instance-of v0, p1, [F

    if-eqz v0, :cond_11

    .line 181
    check-cast p1, [F

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 182
    :cond_11
    instance-of v0, p1, [D

    if-eqz v0, :cond_12

    .line 183
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    .line 184
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 185
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    :goto_0
    return-object p0

    .line 186
    :cond_13
    new-instance p1, Lcom/tencent/bugly/proguard/b;

    const-string p2, "write object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/z;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 144
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 146
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/z;"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 125
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", {}\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 126
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", {\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 128
    new-instance v0, Lcom/tencent/bugly/proguard/z;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/16 v3, 0x28

    .line 130
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    const/16 v1, 0x29

    .line 133
    invoke-virtual {p2, v1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_0

    :cond_2
    const/16 p1, 0x7d

    .line 134
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 14
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 0

    .line 8
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p1, 0x54

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 4

    .line 38
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 40
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 41
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 42
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-byte v3, p1, v1

    .line 45
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 46
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 5

    .line 103
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 105
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 106
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 107
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 109
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-wide v3, p1, v1

    .line 110
    invoke-virtual {p2, v3, v4, v2}, Lcom/tencent/bugly/proguard/z;->a(DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 111
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 4

    .line 88
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 90
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 91
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 92
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 94
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget v3, p1, v1

    .line 95
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 96
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 4

    .line 65
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 67
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 68
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 69
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget v3, p1, v1

    .line 72
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 73
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 5

    .line 74
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 76
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-wide v3, p1, v1

    .line 81
    invoke-virtual {p2, v3, v4, v2}, Lcom/tencent/bugly/proguard/z;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 82
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/z;"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 137
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 138
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 141
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 142
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 143
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .locals 4

    .line 56
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 58
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 59
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 60
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-short v3, p1, v1

    .line 63
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 64
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method
