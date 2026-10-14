.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J,\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0006\u0010\u0007\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;",
        "",
        "()V",
        "cache",
        "Ljava/util/LinkedHashMap;",
        "",
        "",
        "init",
        "",
        "maxSpace",
        "checkLocalDb",
        "",
        "doCheck",
        "getFileSize",
        "file",
        "Ljava/io/File;",
        "map",
        "dayTime",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;

.field private static final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->b()V

    return-void
.end method

.method private final b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/o;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final c()V
    .locals 12

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    .line 4
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5220\u9664\u5df2\u4e0a\u4f20\u7684\u8bb0\u5f55\uff0c"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    const-wide/16 v3, 0x3e8

    .line 7
    :try_start_0
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "\u7cbe\u5f69\u65f6\u523b\uff1a\u521d\u59cb\u5316 trackId \u4e3a\u7a7a\uff0c\u5220\u9664\uff0c"

    .line 8
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 12
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 13
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    if-lt v1, v5, :cond_2

    :try_start_2
    const-string v5, "\u7cbe\u5f69\u65f6\u523b\uff1a\u521d\u59cb\u5316\u5df2\u4e0a\u4f205\u6761\u6570\u636e\uff0c\u5269\u4f59\u6570\u636e\u5220\u9664,"

    .line 14
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 18
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 19
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 20
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getOriginPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 21
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "\u7cbe\u5f69\u65f6\u523b\uff1a\u521d\u59cb\u5316\u538b\u7f29\u89c6\u9891,"

    .line 22
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 23
    :try_start_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getOriginPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->o(Ljava/lang/String;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v5

    .line 24
    :try_start_6
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v6, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    const-string v6, "\u7cbe\u5f69\u65f6\u523b\uff1a\u521d\u59cb\u5316\u538b\u7f29\u89c6\u9891\u5931\u8d25\uff0c\u76f4\u63a5\u5220\u9664\uff0c"

    .line 25
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 26
    throw v5

    .line 27
    :cond_3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getCompressPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "\u7cbe\u5f69\u65f6\u523b\uff1a\u521d\u59cb\u5316\u65e0\u6548\u6570\u636e\uff0c\u5220\u9664,"

    .line 28
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 29
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 30
    :try_start_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 32
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 33
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :cond_4
    :goto_2
    :try_start_8
    const-string v5, "\u7cbe\u5f69\u65f6\u523b\uff1a\u521d\u59cb\u5316\u4e0a\u4f20\u89c6\u9891,"

    .line 34
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 35
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;->b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;->getShareUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, ""

    .line 36
    :cond_5
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getTrackId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 v1, v1, 0x1

    .line 37
    :try_start_9
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 39
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 40
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    :try_start_a
    const-string v6, "\u7cbe\u5f69\u65f6\u523b\uff1a\u521d\u59cb\u5316\u5904\u7406\u89c6\u9891\u5931\u8d25:"

    .line 41
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 42
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 43
    :try_start_b
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 45
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 46
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    :try_start_c
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 48
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 49
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    throw v0

    .line 50
    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->d()V

    return-void
.end method

.method private final d()V
    .locals 11

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    const-wide/32 v5, 0x5265c00

    rem-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-string v3, "video"

    .line 4
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->e(Ljava/io/File;Ljava/util/LinkedHashMap;J)J

    move-result-wide v3

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u521d\u59cb\u5316\u68c0\u6d4b\u672c\u5730\u78c1\u76d8\u7a7a\u95f4,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-wide v1, 0x80000000L

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const-string v0, "\u7cbe\u5f69\u65f6\u523b\uff1a\u7a7a\u95f4\u6b63\u5e381"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v5, "\u7cbe\u5f69\u65f6\u523b\uff1a\u7a7a\u95f4\u6ea2\u51fa1"

    .line 8
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->b()Ljava/util/List;

    move-result-object v5

    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v6, "cache.keys"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->K0(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 12
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getOriginPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 13
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getOriginPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getCompressPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getCompressPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getZipPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 17
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getZipPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_6

    const-string v6, "\u7cbe\u5f69\u65f6\u523b\uff1a\u672c\u5730\u6709\u4e0d\u8ba4\u8bc6\u7684\u6587\u4ef6"

    .line 19
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 21
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 22
    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-nez v9, :cond_5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    sub-long/2addr v3, v9

    const-string v9, "\u7cbe\u5f69\u65f6\u523b\uff1a\u5220\u6389\u4e0d\u8ba4\u8bc6\u7684\u6587\u4ef6,"

    .line 23
    invoke-static {v9, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    cmp-long v0, v3, v1

    if-gez v0, :cond_7

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u7a7a\u95f4\u6b63\u5e382:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v6, "\u7cbe\u5f69\u65f6\u523b\uff1a\u7a7a\u95f4\u6ea2\u51fa2:"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 26
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    .line 27
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;

    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V

    .line 28
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getOriginPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-nez v9, :cond_9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_9
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    sub-long/2addr v3, v9

    .line 29
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getCompressPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-nez v9, :cond_a

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    sub-long/2addr v3, v9

    .line 30
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_b

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_8

    .line 31
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "\u7cbe\u5f69\u65f6\u523b\uff1a\u6700\u7ec8\u7a7a\u95f4:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private final e(Ljava/io/File;Ljava/util/LinkedHashMap;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long p2, v3, p3

    if-gez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "file.absolutePath"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v1

    :cond_2
    const/4 v0, 0x0

    .line 6
    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    const-string v5, "fi"

    .line 7
    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->e(Ljava/io/File;Ljava/util/LinkedHashMap;J)J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->c()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 7

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager;->c:Z

    .line 3
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager$init$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/LocalVideoManager$init$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
