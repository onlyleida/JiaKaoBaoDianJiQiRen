.class public Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 5

    .line 1
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/framework/log/i;->h:Z

    const-string v1, " ,info="

    const-string v2, "LogTag"

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4f20\u5931\u8d25 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65e5\u5fd7\u4e0a\u4f20\u5931\u8d25:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/log/f;->x()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5168\u90e8\u65e5\u5fd7\u4e0a\u4f20\u5931\u8d25 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u4f20\u5168\u90e8\u65e5\u5fd7\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    :goto_1
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/g;->a(Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    return-void
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stop error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LogTag"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/k/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic d(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;->c(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    return-void
.end method
