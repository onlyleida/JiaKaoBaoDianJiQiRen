.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/o/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 9

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->k(Z)V

    .line 6
    :cond_3
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 7
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9
    instance-of v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    if-eqz v7, :cond_6

    .line 10
    move-object v5, v3

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;->imageUrl:Ljava/lang/String;

    goto :goto_3

    .line 11
    :cond_6
    instance-of v7, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    if-eqz v7, :cond_7

    .line 12
    move-object v5, v3

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;->videoUrl:Ljava/lang/String;

    const/4 v6, 0x1

    .line 13
    :cond_7
    :goto_3
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 14
    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->g(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 15
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 17
    :cond_8
    :try_start_0
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v6, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6559\u5b66\u56fe\u7247\u4e0b\u8f7d\u5931\u8d25,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msg:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;J)V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->k(Z)V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "_"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/c;->b(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/d;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/d;-><init>(ZZ)V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/d;->b(Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/k;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 15
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Teaching:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    invoke-static {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    move-result-object p2

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TeachingProcessor \u89e3\u6790\u9519\u8bef: \u6559\u5b66\u7248\u672c\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", error :"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    .line 20
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p1
.end method
