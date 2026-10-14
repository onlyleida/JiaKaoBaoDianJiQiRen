.class public Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->b:Ljava/io/File;

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->b:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".zip"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".zip"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 26

    move-object/from16 v1, p0

    const-string v2, ","

    .line 1
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/trace/w;->s:Landroidx/lifecycle/z;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/trace/w;->s:Landroidx/lifecycle/z;

    invoke-virtual {v3, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 3
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, ""

    const-string v5, "deleteSuccess "

    const-string v6, "UploadTrace"

    const-string v7, "  ; "

    const/4 v8, 0x1

    if-eqz v0, :cond_7

    .line 4
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->b:Ljava/io/File;

    sget-object v10, Lcn/mucang/android/jiakaoyi/engine/trace/upload/b;->a:Lcn/mucang/android/jiakaoyi/engine/trace/upload/b;

    invoke-virtual {v0, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5
    array-length v10, v0

    if-lez v10, :cond_7

    .line 6
    array-length v10, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_7

    aget-object v12, v0, v11

    .line 7
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 9
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "trace-temp-"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 10
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 11
    array-length v14, v12

    if-lez v14, :cond_2

    .line 12
    array-length v14, v12

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v14, :cond_2

    aget-object v9, v12, v3

    .line 13
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v21, v17, v19

    if-gtz v21, :cond_1

    move/from16 v17, v10

    goto :goto_4

    :cond_1
    move/from16 v17, v10

    .line 14
    :try_start_0
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v9, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v9, "]"

    .line 15
    invoke-virtual {v10, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v10

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    .line 16
    :goto_2
    invoke-static {v3}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_0
    const/4 v10, 0x0

    :catch_1
    :goto_3
    invoke-static {v10}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v17

    goto :goto_1

    :cond_2
    move/from16 v17, v10

    .line 17
    invoke-virtual {v13, v15, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v13, v3}, Lcn/mucang/android/core/utils/m;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v13, v3

    goto :goto_5

    :cond_3
    move/from16 v17, v10

    .line 19
    :cond_4
    :goto_5
    invoke-static {v13}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 20
    invoke-static {v13}, Lcn/mucang/android/core/utils/m;->g(Ljava/lang/String;)Z

    move-result v3

    .line 21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    move/from16 v17, v10

    :cond_6
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v17

    goto/16 :goto_0

    .line 22
    :cond_7
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 23
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".zip"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/m;->g(Ljava/lang/String;)Z

    move-result v0

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_8
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->b:Ljava/io/File;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/trace/upload/a;->a:Lcn/mucang/android/jiakaoyi/engine/trace/upload/a;

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 29
    array-length v0, v3

    if-lez v0, :cond_d

    .line 30
    array-length v9, v3

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_d

    aget-object v0, v3, v10

    .line 31
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    .line 32
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "_"

    .line 33
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 34
    array-length v12, v11

    const/4 v14, 0x5

    if-lt v12, v14, :cond_b

    .line 35
    aget-object v12, v11, v13

    .line 36
    aget-object v15, v11, v8

    const/16 v16, 0x2

    .line 37
    aget-object v21, v11, v16

    const/16 v16, 0x3

    .line 38
    aget-object v8, v11, v16

    const/16 v16, 0x4

    .line 39
    aget-object v13, v11, v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v16, v3

    .line 40
    :try_start_3
    array-length v3, v11

    if-le v3, v14, :cond_9

    .line 41
    aget-object v3, v11, v14

    move-object/from16 v24, v3

    goto :goto_8

    :cond_9
    move-object/from16 v24, v4

    .line 42
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x1

    cmp-long v11, v17, v19

    if-gez v11, :cond_a

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcn/mucang/android/core/utils/m;->g(Ljava/lang/String;)Z

    .line 46
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->h(Ljava/lang/String;)Z

    const-string v0, "\u4e0a\u4f20\u8f68\u8ff9\u672c\u5730\u6587\u4ef6\u5185\u5bb9\u4e3a\u7a7a\uff0c\u76f4\u63a5\u5220\u9664"

    .line 47
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 48
    :cond_a
    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 49
    :try_start_4
    const-class v14, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-static {v11, v14}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v25, v11

    goto :goto_9

    :catch_2
    const/16 v25, 0x0

    .line 50
    :goto_9
    :try_start_5
    new-instance v17, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi;

    invoke-direct/range {v17 .. v17}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi;-><init>()V

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    move-object/from16 v20, v15

    move-object/from16 v22, v8

    move-object/from16 v23, v13

    invoke-virtual/range {v17 .. v25}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;)Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;

    move-result-object v8

    .line 51
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u8f68\u8ff9\u4e0a\u4f20:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 52
    iget-object v11, v8, Lcn/mucang/android/core/api/upload/UploadResult;->url:Ljava/lang/String;

    invoke-static {v11}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 54
    invoke-static {v11}, Lcn/mucang/android/core/utils/m;->g(Ljava/lang/String;)Z

    move-result v12

    .line 55
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcn/mucang/android/core/api/upload/UploadResult;->url:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->h(Ljava/lang/String;)Z

    .line 57
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 58
    const-class v3, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v3

    new-instance v11, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v8, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;->id:Ljava/lang/String;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;->clientContext:Ljava/lang/String;

    invoke-direct {v11, v0, v12, v8}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_a

    :cond_b
    move-object/from16 v16, v3

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    .line 59
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0a\u4f20\u8f68\u8ff9\u62a5\u9519\uff1a"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_c
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    const/4 v8, 0x1

    goto/16 :goto_7

    .line 60
    :cond_d
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->s:Landroidx/lifecycle/z;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_e
    :goto_c
    return-void
.end method
