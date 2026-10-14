.class public final Lcom/blankj/utilcode/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/h$a;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1
    invoke-static {v1, p1, v0}, Lcom/blankj/utilcode/util/h;->b([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/h$a;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/h$a;
    .locals 10

    const-string v0, "UTF-8"

    const-string v1, ""

    const/4 v2, -0x1

    if-eqz p0, :cond_14

    .line 1
    array-length v3, p0

    if-nez v3, :cond_0

    goto/16 :goto_18

    :cond_0
    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4
    :try_start_2
    array-length v5, p0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, p0, v6

    if-nez v7, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 6
    sget-object v7, Lcom/blankj/utilcode/util/h;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exit"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/blankj/utilcode/util/h;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-eqz p2, :cond_6

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13
    :try_start_4
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15
    :try_start_5
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 17
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    sget-object v3, Lcom/blankj/utilcode/util/h;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 21
    :cond_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :goto_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 24
    sget-object v3, Lcom/blankj/utilcode/util/h;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_5
    move-object v3, v5

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v6, v3

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v6, v3

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v5, v3

    move-object v6, v5

    :goto_5
    move-object v3, v4

    move-object v9, p2

    move-object p2, p0

    move-object p0, v0

    move-object v0, v9

    goto/16 :goto_d

    :catch_3
    move-exception p2

    move-object v0, v3

    move-object v5, v0

    move-object v6, v5

    move-object v3, v4

    move-object v9, p2

    move-object p2, p0

    move-object p0, v9

    goto/16 :goto_d

    :cond_6
    move-object p0, v3

    move-object p2, p0

    move-object v6, p2

    .line 25
    :goto_6
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    if-eqz v3, :cond_7

    .line 27
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    if-eqz v6, :cond_8

    .line 29
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_9
    if-eqz p1, :cond_d

    .line 31
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_11

    :catchall_2
    move-exception p0

    move-object v5, v3

    move-object v6, v5

    :goto_a
    move-object v3, v4

    goto/16 :goto_14

    :catch_7
    move-exception p0

    move-object p2, v3

    move-object v0, p2

    move-object v5, v0

    move-object v6, v5

    move-object v3, v4

    goto :goto_d

    :catchall_3
    move-exception p0

    move-object v5, v3

    goto :goto_b

    :catch_8
    move-exception p0

    move-object p2, v3

    goto :goto_c

    :catchall_4
    move-exception p0

    move-object p1, v3

    move-object v5, p1

    :goto_b
    move-object v6, v5

    goto :goto_14

    :catch_9
    move-exception p0

    move-object p1, v3

    move-object p2, p1

    :goto_c
    move-object v0, p2

    move-object v5, v0

    move-object v6, v5

    .line 32
    :goto_d
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v3, :cond_9

    .line 33
    :try_start_b
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_e
    if-eqz v5, :cond_a

    .line 35
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_f

    :catch_b
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_f
    if-eqz v6, :cond_b

    .line 37
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_10
    if-eqz p1, :cond_c

    .line 39
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_c
    move-object p0, p2

    move-object p2, v0

    .line 40
    :cond_d
    :goto_11
    new-instance p1, Lcom/blankj/utilcode/util/h$a;

    if-nez p0, :cond_e

    move-object p0, v1

    goto :goto_12

    .line 41
    :cond_e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_12
    if-nez p2, :cond_f

    goto :goto_13

    .line 42
    :cond_f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-direct {p1, v2, p0, v1}, Lcom/blankj/utilcode/util/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_5
    move-exception p0

    :goto_14
    if-eqz v3, :cond_10

    .line 43
    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_15

    :catch_d
    move-exception p2

    .line 44
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_15
    if-eqz v5, :cond_11

    .line 45
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_16

    :catch_e
    move-exception p2

    .line 46
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_16
    if-eqz v6, :cond_12

    .line 47
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_17

    :catch_f
    move-exception p2

    .line 48
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_17
    if-eqz p1, :cond_13

    .line 49
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_13
    throw p0

    .line 50
    :cond_14
    :goto_18
    new-instance p0, Lcom/blankj/utilcode/util/h$a;

    invoke-direct {p0, v2, v1, v1}, Lcom/blankj/utilcode/util/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
